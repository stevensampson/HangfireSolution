// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-24-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-25-2015
// ***********************************************************************
// <copyright file="IHangfire_Job.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using DIS.Scheduler.Common.HangFire.Jobs.Models;

namespace DIS.Scheduler.Common.Hangfire.Jobs.Interfaces
{
    /// <summary>
    /// Interface IHangfire_Job
    /// </summary>
    interface IHangfire_Job
    {
        /// <summary>
        /// Executes the specified jobdetails.
        /// </summary>
        /// <param name="jobdetails">The jobdetails.</param>
        void Execute();
        /// <summary>
        /// Executes the specified job_ identifier.
        /// </summary>
        /// <param name="job_ID">The job_ identifier.</param>
        void Execute(int job_ID);
    }
}
