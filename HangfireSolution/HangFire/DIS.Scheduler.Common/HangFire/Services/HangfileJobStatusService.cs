// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 11-06-2015
//
// Last Modified By : ssampson
// Last Modified On : 11-06-2015
// ***********************************************************************
// <copyright file="HangfileJobStatusService.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using DIS.Scheduler.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// The Services namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire.Services
{
    /// <summary>
    /// Class HangfileJobStatusService.
    /// </summary>
    public class HangfileJobStatusService:IDisposable
    {
        string ProjectName { get; set; }
        /// <summary>
        /// The rep
        /// </summary>
        HangFire_Job_StatusRepository rep;

        /// <summary>
        /// Initializes a new instance of the <see cref="HangfileJobStatusService"/> class.
        /// </summary>
        public HangfileJobStatusService()
        {
            rep = new HangFire_Job_StatusRepository();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HangfileJobStatusService"/> class by providing project name..
        /// </summary>
        /// <param name="projectName">Name of the project.</param>
        public HangfileJobStatusService(string projectName)
        {
            rep = new HangFire_Job_StatusRepository(projectName);
        }

        /// <summary>
        /// Updates the job status.
        /// </summary>
        /// <param name="jobid">The jobid.</param>
        /// <param name="status">The status.</param>
        public void UpdateJobStatus(string jobid, JobStatusEnum status)
        {
            if(rep.JobIDExist(jobid))
            {
                rep.UpdateJobStatus(jobid, status.ToString());
            }
        }

        /// <summary>
        /// Adds the job status with default status = "New".
        /// </summary>
        /// <param name="jobID">The job identifier.</param>
        public void AddJobStatus(string jobID)
        {
            rep.AddJobStatus(jobID);
        }

        /// <summary>
        /// Adds the job status.
        /// </summary>
        /// <param name="job">The job.</param>
        public void AddJobStatus(HangFire_Job_Status job)
        {
            rep.AddJobStatus(job);
        }

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
                    rep.Dispose();
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

/// <summary>
/// The HangFire namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire
{
    /// <summary>
    /// Enum JobStatusEnum
    /// </summary>
    public enum JobStatusEnum
    {
        /// <summary>
        /// The successful
        /// </summary>
        Successful,
        /// <summary>
        /// The failed
        /// </summary>
        Failed
    }
}