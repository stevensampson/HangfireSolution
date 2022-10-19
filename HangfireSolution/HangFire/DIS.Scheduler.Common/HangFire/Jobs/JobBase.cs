// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : Steve Sampson
// Created          : 03-12-2015
//
// Last Modified By : Steve Sampson
// Last Modified On : 03-04-2016
// ***********************************************************************
// <copyright file="AST.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.Logging;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Repositories.Interfaces;
using DIS.Scheduler.Common.Hangfire.Jobs.Interfaces;
using DIS.Scheduler.Common.HangFire.Database;
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using DIS.Scheduler.Common.HangFire.Services;
using DIS.Scheduler.Common.Models;
using Hangfire;
using Microsoft.AspNet.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Text;

/// <summary>
/// The Jobs namespace.
/// </summary>
namespace DIS.Scheduler.Common.Hangfire.Jobs
{
    /// <summary>
    /// Base class for job generation Job class.
    /// </summary>
    public class JobBase : IHangfire_Job
    {
        private HangfileJobStatusService hfservice;
        /// <summary>
        /// Gets or sets the name of the queue.
        /// </summary>
        /// <value>The name of the queue.</value>
        protected string QueueName { get; set; }

        private HttpWebRequest req;
        protected API_Caller JobDetails { get; set; }
        private string ProjectName
        {
            get
            {
                return Configure.Project.Project_Name;
            }
        }
        /// <summary>
        /// The jobstatus
        /// </summary>
        HangFire_Job_Status jobstatus;
        /// <summary>
        /// The application profile
        /// </summary>
        ApplicationProfile appProfile; 

        DISContext context = new DISContext();
        /// <summary>
        /// The event manager
        /// </summary>
        private IEventManager EventManager;

        private ProjectProfile ProjectProfile;

        /// <summary>
        /// Initializes a new instance of the <see cref="JobBase" /> class.
        /// </summary>
        /// <param name="Jobtype">The jobtype.</param>
        public JobBase(JobTypeEnum Jobtype) 
        {
            appProfile = Configure.ApplicationProfile;
            ProjectProfile = new ProjectProfile(ProjectName, context);
            Guid id = Guid.NewGuid();
            jobstatus = new HangFire_Job_Status
            {
                Job_ID = id.ToString(),
                DateCreated = DateTime.Now,
                Status = "New"
            };
            ILogRepository logrepository = appProfile.DYNAMIC_LogsRepository;

            ILogger logger = new EfLogger(appProfile, logrepository);
            IOuter outmsg = new ObjectLogger();

            string TextLogFileLocation = appProfile.TextLogLocation;

            logger.EventClass = "Scheduler.HangFire.JobBase";

            logger.EventMethod = "Job Processing";
            logger.EventSource = String.Format("{0}.{1}", appProfile.ApplicationName, Jobtype);
            ILogger AlternateLogger = new TextFileLogger("Scheduler.HangFire", logger.EventSource, logger.EventMethod, logger.EventClass, TextLogFileLocation);
            this.hfservice = new HangfileJobStatusService();

            EventManager = new DisEventManager(appProfile, logger, AlternateLogger, null, outmsg);
        }

        /// <summary>
        /// Processes the job.
        /// </summary>
        /// <param name="jobname">The job name.</param>
        /// <param name="url">The URL of processing API.</param>
        /// <param name="method">The http method to be used when calling the API.</param>
        /// <exception cref="System.InvalidOperationException">
        /// Job failed
        /// or
        /// Job failed
        /// or
        /// </exception>
        private void ProcessJob(string jobname, string url, string method)
        {
            try

            {

                string jobstring = "{ dateStamp: " + DateTime.Now.ToString("MMddyyyy") + "}";
                ASCIIEncoding encoder = new ASCIIEncoding();
                byte[] data = encoder.GetBytes(jobstring);


                EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING, new EventArguments()
                {
                    JobName = jobname,
                    Message = "has started processing within job code."
                });


                string Method = method;

                EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING, new EventArguments()
                {
                    JobName = jobname,
                    Message = String.Format("calling API at {0} using HTTP Method, {1}.", url, method)
                });
                jobstatus.Jobname = jobname;
                Util.InsertJobStatus(jobstatus);

                req = WebRequest.Create(url) as HttpWebRequest;
                req.Headers.Add("SharedKey", appProfile.SharedKey);
                req.Headers.Add("SchedulerJobID", jobstatus.Job_ID);
                if (!String.IsNullOrEmpty(JobDetails.AdditionalHeaders)) 
                {
                    AddAdditionalHeaders();
                }
                req.Method = Method;
                req.ContentType = "application/json";
                req.ContentLength = 0;
                req.Expect = "application/json";
                req.KeepAlive = false;

                string status = "";
                try
                {
                    using (var resp = (HttpWebResponse)req.GetResponse())
                    {
                        status = resp.StatusCode.ToString();
                        EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING, new EventArguments()
                        {
                            JobName = jobname,
                            Message = String.Format("completed processing with status code, {0}.", status)
                        });
                    }
                }
                catch (Exception ex)
                {
                    hfservice.UpdateJobStatus(jobstatus.Job_ID, Scheduler.Common.HangFire.JobStatusEnum.Failed);

                    EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING_EXCEPTION, new EventArguments()
                    {
                        JobName = jobname,
                        Message = ex.Message,
                        Exception = ex
                    });
                    throw new InvalidOperationException(ex.Message);
                }

                if (String.IsNullOrEmpty(status))
                {
                    hfservice.UpdateJobStatus(jobstatus.Job_ID, Scheduler.Common.HangFire.JobStatusEnum.Failed);

                    EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING_WARNING, new EventArguments()
                    {
                        JobName = jobname,
                        Message = String.Format(" unfinished with no status for url: {0}", url)
                    });
                    throw new InvalidOperationException("Job failed");
                }
                else
                {
                    //Log#   NEventManager.Info(String.Format("{0}: finished with status: {1}", jobKey, status));
                    EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING, new EventArguments()
                    {
                        JobName = jobname,
                        Message = String.Format(": finished with status: {0}", status)
                    });

                    if (JobDetails.Monitor)
                    {
                        string serverName = Environment.MachineName;

                        
                        IEnumerable<string> IPAddress = from ServerSite in appProfile.SiteProfile.ServerSites
                                        where ServerSite.Server.Server_Name == serverName
                                        select ServerSite.IP_Address;

                        //build SignalR URL for specific server/site 
                        UriBuilder uri = new UriBuilder();
                        uri.Scheme = "http";
                        try
                        {
                            //uri.Host = IPAddress.Single();
                            uri.Host = "localhost:20035";
                        }
                        catch (Exception ex)
                        {
                            hfservice.UpdateJobStatus(jobstatus.Job_ID, Scheduler.Common.HangFire.JobStatusEnum.Failed);
                            EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING_WARNING, new EventArguments()
                            {
                                JobName = jobname,
                                Message = String.Format(": could not confirm server configuration for this site. SiteName: {0} ServerName: {1}.  {2}", appProfile.SiteProfile.Site_Name, serverName, ex.Message)
                            });
                            return;
                        }

                        uri.Path = appProfile.RelativePhysicalPath;

                        string siteUrl = uri.ToString().Replace("[","").Replace("]","");

                        EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING, new EventArguments()
                        {
                            JobName = jobname,
                            Message = String.Format(": attempting to contact SignalR server at {0}", siteUrl)
                        });
                        hub = new HubConnection(siteUrl);
                        hub.Credentials = CredentialCache.DefaultCredentials;
                        NotificationHub = hub.CreateHubProxy("NotificationHub");
                        HangFire_Job_Status jStatus = null;

                        try
                        {
                           hub.Start().Wait();
                            NotificationHub.Invoke<Models.HangFire_Job_Status>("SendNotifications", jobstatus.Job_ID).ContinueWith(x =>
                            {
                                jStatus = x.Result;
                            }).Wait();


                        }
                        catch (Exception ex)
                        {
                            hfservice.UpdateJobStatus(jobstatus.Job_ID, Scheduler.Common.HangFire.JobStatusEnum.Failed);
                            EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING_WARNING, new EventArguments()
                            {
                                JobName = jobname,
                                Message = String.Format(": could not confirm completion of job. Error contacting SignalR at {0}. {1}", siteUrl, ex.Message)
                            });
                            //throw new Exception(String.Format("HangFire cannot confirm completion.  Error contacting Signal R a {0} .  Process may have completed. {1}",siteUrl, ex.Message));
                        }
                        if (jStatus != null && jStatus.Status == "Failed")
                        {
                            throw new InvalidOperationException("Job failed");
                        }
                    }
                }
            }
            catch (Exception e)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_PROCESSING_EXCEPTION, new EventArguments()
                {
                    JobName = jobname,
                    Message = e.Message,
                    Exception = e
                });
                throw new InvalidOperationException(e.Message);

            }

        }

        private void AddAdditionalHeaders()
        {
            string[] headers = JobDetails.AdditionalHeaders.Split(new[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            foreach (string item in headers)
            {
                var parts = item.Split('=');
                req.Headers.Add(parts[0], parts[1]);

            }

        }
        /// <summary>
        /// The hub
        /// </summary>
        HubConnection hub;
        /// <summary>
        /// The notification hub
        /// </summary>
        IHubProxy NotificationHub;

        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        [AutomaticRetry(Attempts = 3)]
        public void Execute()
        {
            ProcessJob(this.JobDetails.id, this.JobDetails.url, this.JobDetails.Method);
        }

        /// <summary>
        /// Executes the specified job_details given an appropriate job ID.
        /// </summary>
        /// <param name="job_ID">The job identifier.</param>
        public void Execute(int job_ID)
        {
            API_JobDetailsRepository rep = new API_JobDetailsRepository(new ProjectContext(ProjectProfile.DBConnectionString));
            API_Caller_JobDetails jobdetails = rep.GetJobDetails_ByID(job_ID);

            ProcessJob(jobdetails.Job_Name, jobdetails.url, jobdetails.Method);

        }

        /// <summary>
        /// Names this instance.
        /// </summary>
        /// <returns>System.String.</returns>
        public virtual string Name()
        {
            return "Base";
        }

        /// <summary>
        /// The disposed
        /// </summary>
        //private bool disposed = false;
        private API_Caller job;

        /// <summary>
        /// Sets the job status.
        /// </summary>
        /// <param name="jobstatus">The jobstatus.</param>
        /// <exception cref="System.InvalidOperationException">Job failed</exception>
        private void SetJobStatus(HangFire_Job_Status jobstatus)
        {
            if (jobstatus.Status=="New")
            {
                //do nothing.  continue to listen
            }
            else if (jobstatus.Status=="Failed")
            {
                hub.Stop();
                throw new InvalidOperationException("Job failed");
            }else
            { 
                hub.Stop();
            }
        }



    }
}
