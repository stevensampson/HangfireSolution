// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 05-02-2016
//
// Last Modified By : ssampson
// Last Modified On : 05-03-2016
// ***********************************************************************
// <copyright file="Communication.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Hangfire;
using DIS.Scheduler.Common.Hangfire.Jobs.Interfaces;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using DIS.Scheduler.Common.Hangfire.Jobs;
using DIS.Scheduler.Common.Hangfire.Logging;

namespace DIS.Scheduler.Common.HangFire.Jobs
{
    /// <summary>
    /// Class Communication.
    /// </summary>
    /// <remarks>Data integration System (DIS) </remarks>
    public class Communication : JobBase, IHangfire_Job
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Communication" /> class.
        /// </summary>
        /// <remarks>Data integration System (DIS) </remarks>
        public Communication():base(JobTypeEnum.Communication) { }

        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        /// <remarks>Data integration System (DIS) </remarks>
        [AutomaticRetry(Attempts = 3)]
        [LogEverything]
        [Queue("communication")]
        public void Execute(API_Caller jobdetails)
        {
            base.JobDetails = jobdetails;
            base.Execute();
        }

        /// <summary>
        /// Names this instance.
        /// </summary>
        /// <returns>System.String.</returns>
        /// <remarks>Data integration System (DIS) </remarks>
        public override string Name()
        {
            return "Communication";
        }

    }
}
