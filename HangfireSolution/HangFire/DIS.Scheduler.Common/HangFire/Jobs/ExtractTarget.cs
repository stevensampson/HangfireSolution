using DIS.Scheduler.Common.Hangfire.Jobs;
using DIS.Scheduler.Common.Hangfire.Jobs.Interfaces;
using DIS.Scheduler.Common.Hangfire.Logging;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using Hangfire;

namespace DIS.Scheduler.Common.HangFire.Jobs
{
    /// <summary>
    /// ExtractTarget job class
    /// </summary>
    public class ExtractTarget : JobBase, IHangfire_Job
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtractTarget"/> class.
        /// </summary>
        public ExtractTarget():base(JobTypeEnum.ExtractTarget) { }

        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        [AutomaticRetry(Attempts = 3)]
        [LogEverything]
        [Queue("extracttarget")]
        public void Execute(API_Caller jobdetails)
        {
            base.JobDetails = jobdetails;
            base.Execute();
        }

        /// <summary>
        /// Names this instance.
        /// </summary>
        /// <returns>System.String.</returns>
        public override string Name()
        {
            return "ExtractTarget";
        }
    }
}
