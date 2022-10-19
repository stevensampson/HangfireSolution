// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-17-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-17-2015
// ***********************************************************************
// <copyright file="LogStateAttribute.cs" company="CDI Corporation">
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
using Hangfire.Common;
using Hangfire.States;
using Hangfire.Storage;
using System;



namespace DIS.Scheduler.Common.Hangfire.Logging
{
    /// <summary>
    /// Logger class for HangFire job state changes
    /// </summary>
    public class LogStateAttribute : JobFilterAttribute, IApplyStateFilter, IDisposable
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
        /// Initializes a new instance of the <see cref="LogStateAttribute" /> class.
        /// </summary>
        public LogStateAttribute()
        {
            context = new DISContext();
            appProfile = Configure.ApplicationProfile;
            ILogRepository logrepository = appProfile.DYNAMIC_LogsRepository;

            ILogger logger = new EfLogger(appProfile, logrepository);
            IOuter outmsg = new ObjectLogger();

            string TextLogFileLocation = appProfile.TextLogLocation;

            logger.EventClass = "Scheduler.HangFire";
            logger.EventMethod = "N/A";
            logger.EventSource = "Scheduler.HangFire";
            ILogger AlternateLogger = new TextFileLogger("Scheduler.HangFire", logger.EventSource, logger.EventMethod, logger.EventClass, TextLogFileLocation);

            EventManager = new DisEventManager(appProfile, logger, AlternateLogger, null, outmsg);

        }

        /// <summary>
        /// Called after the specified state was applied
        /// to the job within the given transaction.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="transaction">The transaction.</param>
        public void OnStateApplied(ApplyStateContext context, IWriteOnlyTransaction transaction)
        {
            var failedState = context.NewState as FailedState;
            var SucceededState = context.NewState as SucceededState;
            var ScheduledState = context.NewState as ScheduledState;

            if (failedState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_STOPPED, new EventArguments()
                {
                    Message = String.Format("Background job #{0} was failed with an exception.", context.BackgroundJob.Id),
                    Exception = failedState.Exception
                   
                });
                
            }

            if (SucceededState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_FINISHED, new EventArguments()
                {
                    Message = String.Format("Background job #{0} was completed without an exception.", context.BackgroundJob.Id)

                });

            }

            if (ScheduledState != null)
            {
                EventManager.Log(EnumEventType.SCHEDULER_JOB_STARTED, new EventArguments()
                {
                    Message = String.Format("Background job #{0} was scheduled.", context.BackgroundJob.Id)

                });

            }

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
