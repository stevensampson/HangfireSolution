// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-12-2015
//
// Last Modified By : ssampson
// Last Modified On : 12-02-2015
// ***********************************************************************
// <copyright file="Configure.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts;
using DIS.Core.Entity.Contexts.Models;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Repositories;
using DIS.Scheduler.Common.Hangfire.Security;
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Scheduler.Common.HangFire.Jobs.Attributes;
using Hangfire;
using Hangfire.Dashboard;
using Hangfire.SqlServer;
using Owin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;



namespace DIS.Scheduler.Common.Hangfire
{
    /// <summary>
    /// Class Configure.
    /// </summary>
    public static class Configure
    {
        private static AppSettingsReader reader = new AppSettingsReader();


        /// <summary>
        /// The project
        /// </summary>
        private static Project project;

        /// <summary>
        /// Gets the name of the application attached to this instance of DIS.Scheduler.Hangfire.
        /// </summary>
        /// <value>The name of the application.  value is taken from web.config and must match an entry in the DIS5 database.</value>
        public static string ApplicationName
        {
            get
            {
                return (string)reader.GetValue("ApplicationName", typeof(string));
            }
        }

        /// <summary>
        /// Gets the number representing how many skips for a job with status "New" 
        /// before HangFire will set job to "Failed".
        /// </summary>
        /// <value>The skip job limit.</value>
        /// <remarks>Data integration System (DIS) </remarks>
        public static int SkipJobLimit
        {
            get
            {
                return (int)reader.GetValue("SkipJobLimit", typeof(int));
            }
        }

        /// <summary>
        /// Gets the type of the job.
        /// </summary>
        /// <value>The type of the job.</value>
        /// <remarks>Data integration System (DIS) </remarks>
        public static string JobType
        {
            get
            {
                return (string)reader.GetValue("JobTypes", typeof(string));
            }
        }

        private static ApplicationProfile _applicationProfile;
        /// <summary>
        /// Gets the application profile of the application attached to this instance of DIS.Scheduler.Hangfire.
        /// </summary>
        /// <value>The application profile.</value>
        /// <exception cref="System.Exception">Check that a proper Application Name is in the Hangfire application web.config.  This application name must also appear in the DIS database.  Error message from Exception object:  + ex.Message</exception>
        /// <remarks>Data integration System (DIS) </remarks>
        public static ApplicationProfile ApplicationProfile
        {
            get
            {
                if (_applicationProfile == null)
                {
                    try
                    {
                        _applicationProfile = new ApplicationProfile(ApplicationName, new DISContext());
                    }
                    catch (Exception ex)
                    {
                        throw (new Exception("Check that a proper Application Name is in the Hangfire application web.config.  This application name must also appear in the DIS database.  Error message from Exception object: " + ex.Message));
                    }
                }
                return _applicationProfile;
            }
        }
        /// <summary>
        /// Gets the project.
        /// </summary>
        /// <value>The project.</value>
        public static Project Project
        {
            get
            {
                if (project == null)
                {
                    ProjectRepository rep = new ProjectRepository(new DISContext());
                    project = rep.GetProjectById(ApplicationProfile.SiteProfile.ProjectId);
                }
                return project;

            }
        }

        private static IList<string> _jobTypes;
        /// <summary>
        /// Gets List of  job types for this HangFire instance.
        /// </summary>
        /// <value>The job types.</value>
        public static IList<string> JobTypes
        {
            get
            {
                if (_jobTypes == null)
                {
                    string jobtypesstring = (string)reader.GetValue("JobTypes", typeof(string));
                    jobtypesstring = jobtypesstring + ",Default";
                    _jobTypes = jobtypesstring.Split(',');
                    //_jobTypes.Add("Default");
                }
                return _jobTypes;
            }
        }


        /// <summary>
        /// Configures the hangfire.
        /// </summary>
        /// <param name="app">The application.</param>
        public static void ConfigureHangfire(IAppBuilder app)
        {
            string InstanceName = Environment.MachineName;
            string newQueue = JobTypes[0];
            var options = new BackgroundJobServerOptions
            {
                Queues = new[] { newQueue.ToLower(), "DEFAULT" },
                WorkerCount = 40

            };

            var DOptions = new DashboardOptions
            {
                AppPath = VirtualPathUtility.ToAbsolute("~"),
                AuthorizationFilters = new[] { new DISRestrictiveAuthorizationFilter() { Roles = "Admin" } }
            };
            app.UseHangfireServer(options);
            app.UseHangfireDashboard("/Dashboard", DOptions);
            //app.UseHangfireServer(options);

            //GlobalJobFilters.Filters.Add(new LogEverythingAttribute());
            GlobalJobFilters.Filters.Add(new AutomaticRetryAttribute { Attempts = 3 });

            //enable logging and skipping of jobs already running.
            GlobalJobFilters.Filters.Add(new SkipConcurrentExecutionAttribute(10) { ReentrancyAction = JobReentrancyActionEnum.MarkAsCompleted, SkipJobLimit = SkipJobLimit });


        }

        /// <summary>
        /// Initializes the jobs.
        /// </summary>
        public static void InitializeJobs()
        {
            API_JobDetailsRepository rep1 = new API_JobDetailsRepository(project);
            IEnumerable<DIS.Scheduler.Common.Models.API_Caller_JobDetails> JobDetails = rep1.GetJobDetails();


            foreach (DIS.Scheduler.Common.Models.API_Caller_JobDetails job in JobDetails)
            {
                if (JobTypes.Contains(job.JobType))
                {
                    Helper.AddUpdateJob(job);
                }
            }
        }

        /// <summary>
        /// Sets the database.
        /// </summary>
        public static void SetDB()
        {
            GlobalConfiguration.Configuration
                .UseSqlServerStorage(Project.DBConnectionString)
                .UseDashboardMetric(SqlServerStorage.ActiveConnections)
                .UseDashboardMetric(SqlServerStorage.TotalConnections)
                .UseDashboardMetric(DashboardMetrics.ProcessingCount)
                .UseDashboardMetric(DashboardMetrics.SucceededCount)
                .UseDashboardMetric(DashboardMetrics.ScheduledCount)
                .UseDashboardMetric(DashboardMetrics.FailedCount);
        }

    }
}
