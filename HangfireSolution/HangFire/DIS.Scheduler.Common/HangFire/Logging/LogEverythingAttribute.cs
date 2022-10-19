// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-17-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-17-2015
// ***********************************************************************
// <copyright file="LogEverythingAttribute.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.Logging;
using DIS.Core.Infrastructure.Notification;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Repositories.Interfaces;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using Hangfire.Client;
using Hangfire.Common;
using Hangfire.Server;
using Hangfire.States;
using Hangfire.Storage;
using Newtonsoft.Json.Linq;
using System;


namespace DIS.Scheduler.Common.Hangfire.Logging
{
    /// <summary>
    /// Class LogEverythingAttribute.
    /// </summary>
    public class LogEverythingAttribute : JobFilterAttribute,
        IClientFilter, IServerFilter, IElectStateFilter, IApplyStateFilter, IDisposable
    {

        private IDISContext context { get; set; }
           
        /// <summary>
        /// The application profile
        /// </summary>
        private ApplicationProfile appProfile { get; set; }

        /// <summary>
        /// The event manager
        /// </summary>
        IEventManager EventManager;

        /// <summary>
        /// Initializes a new instance of the <see cref="LogEverythingAttribute"/> class.
        /// </summary>
        public LogEverythingAttribute()
        {
            context = new DISContext();
            appProfile = Configure.ApplicationProfile;
            ILogRepository logrepository = appProfile.DYNAMIC_LogsRepository;

            ILogger logger = new EfLogger(appProfile, logrepository);
            IOuter outmsg = new ObjectLogger();

            string TextLogFileLocation = appProfile.TextLogLocation;

            logger.EventClass = "Scheduler.HangFire.LogEverything";
            logger.EventMethod = "N/A";
            logger.EventSource = appProfile.ApplicationName;
            ILogger AlternateLogger = new TextFileLogger(appProfile.ApplicationName, logger.EventSource, logger.EventMethod, logger.EventClass, TextLogFileLocation);


            EventManager = new DisEventManager(appProfile, logger, AlternateLogger, null, outmsg);
        }

        /// <summary>
        /// Called before the creation of the job.
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        public void OnCreating(CreatingContext filterContext)
        {
            //Logger.InfoFormat(
            //    "Creating a job based on method `{0}`...",
            //    filterContext.Job.MethodData.MethodInfo.Name);
            
            EventManager.Log(EnumEventType.SCHEDULER_JOB_CREATING, new EventArguments()
            {
                Method = filterContext.Job.Method.Module.ToString() + "/" + filterContext.Job.Method.Name
            });
        }

        /// <summary>
        /// Called after the creation of the job.
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        public void OnCreated(CreatedContext filterContext)
        {
            //Logger.InfoFormat(
            //    "Job that is based on method `{0}` has been created with id `{1}`",
            //    filterContext.Job.MethodData.MethodInfo.Name,
            //    filterContext.JobId);
            EventManager.Log(EnumEventType.SCHEDULER_JOB_CREATED, new EventArguments()
            {
                JobName = GetJobName(filterContext),
                Method = filterContext.Job.Method.Module.ToString() + "/" + filterContext.Job.Method.Name

            });
        }

        /// <summary>
        /// Called before the performance of the job.
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        public void OnPerforming(PerformingContext filterContext)
        {
            //Logger.InfoFormat(
            //    "Starting to perform job `{0}`",
            //    filterContext.JobId);
            EventManager.Log(EnumEventType.SCHEDULER_JOB_STARTING, new EventArguments()
            {
               JobName = GetJobName(filterContext)
            });
        }

        /// <summary>
        /// Called after the performance of the job.
        /// </summary>
        /// <param name="filterContext">The filter context.</param>
        public void OnPerformed(PerformedContext filterContext)
        
        {
            //Logger.InfoFormat(
            //    "Job `{0}` has been performed",
            //    filterContext.JobId);
            
            EventManager.Log(EnumEventType.SCHEDULER_JOB_FINISHED, new EventArguments()
            {

                JobName = GetJobName(filterContext),
                Status = "Performed"
            });
        }


        /// <summary>
        /// Called when the current state of the job is being changed to the
        /// specified candidate state.
        /// This state change could be intercepted and the final state could
        /// be changed through setting the different state in the context
        /// in an implementation of this method.
        /// </summary>
        /// <param name="context">The context.</param>
        public void OnStateElection(ElectStateContext context)
        {
            var failedState = context.CandidateState as FailedState;
            var SucceededState = context.CandidateState as SucceededState;
            var ScheduledState = context.CandidateState as ScheduledState;
            var EnQueuedState = context.CandidateState as EnqueuedState;
            var ProcessingState = context.CandidateState as ProcessingState;

            

            if (failedState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_FINISHED, new EventArguments()
                {
                    JobName = GetJobName(context),
                    Exception = failedState.Exception,
                    Status = "Failed"
                });

            }

            if (SucceededState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_FINISHED, new EventArguments()
                {
                    JobName = GetJobName(context),
                    Status = "Succeeded"
                });

            }

            if (ScheduledState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_STARTED, new EventArguments()
                {
                    JobName = GetJobName(context),
                    Status = "Scheduled"
                });

            }

            if (EnQueuedState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_STARTING, new EventArguments()
                {
                    JobName = GetJobName(context),
                    Status = "Starting"
                });

            }

            if (ProcessingState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_STARTED, new EventArguments()
                {
                    JobName = GetJobName(context),
                    Status = "Processing"
                });

            }
        }

        private static string GetJobName(ElectStateContext context)
        {
            API_Caller arg = context.BackgroundJob.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(context.BackgroundJob.Job.Arguments[0]);
            //string jobName = (string)obj["id"];
            return jobName;
        }

        private static string GetJobName(CreatedContext context)
        {
            API_Caller arg = context.BackgroundJob.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(context.Job.Arguments[0]);
            //string jobName = (string)obj["id"];
            return jobName;
        }

        private static string GetJobName(CreatingContext context)
        {
            API_Caller arg = context.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(context.Job.Arguments[0]);
            //string jobName = (string)obj["id"];
            return jobName;
        }
        private static string GetJobName(PerformingContext context)
        {
            API_Caller arg = context.BackgroundJob.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(context.BackgroundJob.Job.Arguments[0]);
            //string jobName = (string)obj["id"];
            return jobName;
        }

        private static string GetJobName(PerformedContext filterContext)
        {
            API_Caller arg = filterContext.BackgroundJob.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(filterContext.BackgroundJob.Job.Arguments[0]);
            //string jobName = (string)obj["id"];
            return jobName;
        }

        private static string GetJobName(ApplyStateContext context)
        {
            API_Caller arg = context.BackgroundJob.Job.Args[0] as API_Caller;
            string jobName = arg.id;
            //JObject obj = JObject.Parse(context.BackgroundJob.Job.Arguments[0]);
            //string jobName = (string)obj["id"];

            return jobName;
        }
        /// <summary>
        /// Called after the specified state was applied
        /// to the job within the given transaction.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="transaction">The transaction.</param>
        public void OnStateApplied(ApplyStateContext context, IWriteOnlyTransaction transaction)
        {
            //Logger.InfoFormat(
            //    "Job `{0}` state was changed from `{1}` to `{2}`",
            //    context.JobId,
            //    context.OldStateName,
            //    context.NewState.Name);
            EventManager.Log(EnumEventType.SCHEDULER_JOB_STATE_APPLIED, new EventArguments()
            {
                JobName = GetJobName(context),
                Message = String.Format("{0} to {1}", context.OldStateName,
                 context.NewState.Name)

            });
        }

        /// <summary>
        /// Called when the state with specified state was
        /// unapplied from the job within the given transaction.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="transaction">The transaction.</param>
        public void OnStateUnapplied(ApplyStateContext context, IWriteOnlyTransaction transaction)
        {
        }

        /// <summary>
        /// The disposed
        /// </summary>
        private bool disposed = false;

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources.
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    //appProfile.Dispose();
                }
            }
            this.disposed = true;
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }


    }
}
