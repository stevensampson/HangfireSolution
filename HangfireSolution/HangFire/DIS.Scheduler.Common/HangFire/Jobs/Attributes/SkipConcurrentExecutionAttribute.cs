// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 11-30-2015
//
// Last Modified By : ssampson
// Last Modified On : 11-30-2015
// ***********************************************************************
// <copyright file="SkipConcurrentExecutionAttribute.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary>This JobFilter Attribute class should be used in replace of ConcurrentExecutionAttribute.  The 
// original class throws an exception if job is running, we want to replace that action with the option to throw exception or
// just complete job without exception. </summary>
// ***********************************************************************
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using DIS.Scheduler.Common.HangFire.Services;
using DIS.Scheduler.Common.Models;
using Hangfire.Common;
using Hangfire.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// The Attributes namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire.Jobs.Attributes
{
    /// <summary>
    /// Attribute to skip a job execution if the same job is already running.
    /// Mostly taken from: http://discuss.hangfire.io/t/job-reentrancy-avoidance-proposal/607
    /// </summary>
    public class SkipConcurrentExecutionAttribute : JobFilterAttribute, IServerFilter
    {
        private const JobReentrancyActionEnum DefaultReentrancyAction = JobReentrancyActionEnum.ThrowException;

        /// <summary>
        /// The _timeout in seconds
        /// </summary>
        private readonly int _timeoutInSeconds;

        private JobReentrancyActionEnum _reentrancyAction;

        /// <summary>
        /// Gets or sets the reentrancy action, the action that should be taken when job is currently running.
        /// </summary>
        /// <value>The reentrancy action.<see cref="JobReentrancyActionEnum"/></value>
        public JobReentrancyActionEnum ReentrancyAction
        {
            get { return _reentrancyAction; }
            set
            {
                _reentrancyAction = value;
            }
        }

        private int _SkipJobLimit;

        /// <summary>
        /// Gets the number representing how many skips for a job with status "New" 
        /// before HangFire will set job to "Failed".
        /// </summary>
        /// <value>The skip job limit.</value>
        /// <remarks>Data integration System (DIS) </remarks>
        public int SkipJobLimit
        {
            get { return _SkipJobLimit; }
            set
            {
                _SkipJobLimit = value;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SkipConcurrentExecutionAttribute"/> class.
        /// </summary>
        /// <param name="timeoutInSeconds">The timeout in seconds.</param>
        /// <exception cref="System.ArgumentException">Timeout argument value should be greater that zero.</exception>
        public SkipConcurrentExecutionAttribute(int timeoutInSeconds)
        {
            if (timeoutInSeconds < 0) throw new ArgumentException("Timeout argument value should be greater that zero.");

            _timeoutInSeconds = timeoutInSeconds;

        }


        /// <summary>
        /// Called when [performing].
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        public void OnPerforming(PerformingContext filterContext)
        {
            API_Caller arg = filterContext.BackgroundJob.Job.Args[0] as API_Caller;
            HangFire_Job_StatusRepository rep = new HangFire_Job_StatusRepository();

            var resource = String.Format(
                                 "{0}.{1}.{2}",
                                filterContext.BackgroundJob.Job.Type.FullName,
                                filterContext.BackgroundJob.Job.Method.Name, arg.id);

            var timeout = TimeSpan.FromSeconds(_timeoutInSeconds);

            //try
            //{
            //    var distributedLock = filterContext.Connection.AcquireDistributedLock(resource, timeout);
            //    filterContext.Items["DistributedLock"] = distributedLock;
            //}
            //catch (Exception ex)
            //{
            bool JobCurrentlyInUse = rep.JobCurrentlyRunning(arg.id);

            if (JobCurrentlyInUse)
            {
                int skippedNumber = rep.NumberOfSkipsForCurrentJob(arg.id);
                if (skippedNumber > SkipJobLimit)
                {
                    HangFire_Job_Status Frozenjob = rep.GetJobWithNewStatus(arg.id); 
                    rep.UpdateJobStatus(Frozenjob.Job_ID, "Failed");
                    //close current run and continue running new job.
                }
                else
                {
                    if (ReentrancyAction==JobReentrancyActionEnum.DismissJob)
                    {
                        filterContext.Canceled = true;
                    }
                    else if (ReentrancyAction == JobReentrancyActionEnum.MarkAsCompleted)
                    {
                        Guid id = Guid.NewGuid();
                        HangFire_Job_Status jobstatus = new HangFire_Job_Status
                        {
                            Jobname = arg.id,
                            Job_ID = id.ToString(),
                            DateCreated = DateTime.Now,
                            Status = "Skipped"
                        };
                        HangfileJobStatusService StatusService = new HangfileJobStatusService();
                        StatusService.AddJobStatus(jobstatus);
                        filterContext.Canceled = true;
                    }
                    else if (ReentrancyAction == JobReentrancyActionEnum.ThrowException)
                    {
                        throw(new Exception("Instance of job already running"));
                    }
                    else
                    {
                        //do nothing and continue running job.
                    }
                }

            }



            //}
        }

        /// <summary>
        /// Called when [performed].
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        /// <exception cref="System.InvalidOperationException">Can not release a distributed lock: it was not acquired.</exception>
        public void OnPerformed(PerformedContext filterContext)
        {
            //if (!filterContext.Items.ContainsKey("DistributedLock"))
            //{
            //    throw new InvalidOperationException("Can not release a distributed lock: it was not acquired.");
            //}

            //var distributedLock = (IDisposable)filterContext.Items["DistributedLock"];
            //distributedLock.Dispose();
        }
    }

    /// <summary>
    /// Enum for job Reentrancy avoidance actions.
    /// </summary>
    public enum JobReentrancyActionEnum
    {
        /// <summary>
        /// The dismiss job
        /// </summary>
        DismissJob,
        /// <summary>
        /// (Default) The throw exception when job is already running and automatically reschedules job. 
        /// </summary>
        ThrowException,
        /// <summary>
        /// The mark as job completed if job is already running
        /// </summary>
        MarkAsCompleted,
        /// <summary>
        /// The run new instance of job.
        /// </summary>
        ContinueWithJob

    }
}
