using DIS.Scheduler.Common.Hangfire.Jobs;
using DIS.Scheduler.Common.Hangfire.Jobs.Interfaces;
using DIS.Scheduler.Common.Hangfire.Logging;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using Hangfire;

namespace DIS.Scheduler.Common.HangFire.Jobs
{
    /// <summary>
    /// Service Now Incident create job
    /// </summary>
    public class ServiceNow : JobBase, IHangfire_Job
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceNow"/> class.
        /// </summary>
        public ServiceNow() : base(JobTypeEnum.ServiceNow) { }

        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        [AutomaticRetry(Attempts = 3)]
        [LogEverything]
        [Queue("servicenow")]
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
            return "ServiceNow";
        }
    }
}
