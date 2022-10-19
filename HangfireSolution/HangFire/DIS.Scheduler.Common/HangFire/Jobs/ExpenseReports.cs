// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-12-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-12-2015
// ***********************************************************************
// <copyright file="AST.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Scheduler.Common.Hangfire.Jobs.Interfaces;
using DIS.Scheduler.Common.Hangfire.Logging;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using Hangfire;

namespace DIS.Scheduler.Common.Hangfire.Jobs
{
    /// <summary>
    /// Application Tracking System (ATS) Job class.
    /// </summary>
    public class ExpenseReports : JobBase, IHangfire_Job
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ATS"/> class.
        /// </summary>
        public ExpenseReports() : base(JobTypeEnum.ExpenseReports) { }

        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        [AutomaticRetry(Attempts = 3)]
        [LogEverything]
        [Queue("expensereports")]
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
            return "Expense Reports";
        }
    }
}
