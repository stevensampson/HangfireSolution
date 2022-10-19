// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 11-02-2015
//
// Last Modified By : ssampson
// Last Modified On : 11-30-2015
// ***********************************************************************
// <copyright file="HangFire_Job_StatusRepository.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts;
using DIS.Core.Entity.Contexts.Models;
using DIS.Core.Infrastructure.Repositories;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;

/// <summary>
/// The Repositories namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire.Database.Repositories
{
    /// <summary>
    /// Class HangFire_Job_StatusRepository.
    /// </summary>
    public class HangFire_Job_StatusRepository:IDisposable
    {
        private Project project;
        /// <summary>
        /// The project
        /// </summary>
        private Project Project
        {
            get
            {
                if (project == null)
                {
                    project  = Configure.Project;
                }
                return project;
            }
            set
            {
                project = value;
            }
        }
        /// <summary>
        /// The context
        /// </summary>
        private ProjectContext context;

        /// <summary>
        /// Initializes a new instance of the <see cref="HangFire_Job_StatusRepository"/> class.
        /// </summary>
        public HangFire_Job_StatusRepository()
        {
            context = new ProjectContext(Project.DBConnectionString);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HangFire_Job_StatusRepository"/> class by Project name.
        /// </summary>
        /// <param name="ProjectName">Name of the project.</param>
        public HangFire_Job_StatusRepository(string ProjectName)
        {
            DISContext configcontext = new DISContext();
            ProjectRepository rep = new ProjectRepository(configcontext);
            project = rep.GetProjectByName(ProjectName);
            context = new ProjectContext(Project.DBConnectionString);
            configcontext.Dispose();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HangFire_Job_StatusRepository"/> class by <see cref="Project" /> object..
        /// </summary>
        /// <param name="project">The project.</param>
        public HangFire_Job_StatusRepository(Project project)
        {

            this.project = project;
            context = new ProjectContext(Project.DBConnectionString);
        }

        public List<HangFire_Job_Status> GetHangFireJobStatus()
        {
            return context.HangFire_Job_Status.ToList();
        }
        /// <summary>
        /// Gets the job statusby identifier.
        /// </summary>
        /// <param name="jobid">The jobid.</param>
        /// <returns><see cref="HangFire_Job_Status"/></returns>
        public HangFire_Job_Status GetJobStatusbyID(string jobid)
        {
            return context.HangFire_Job_Status.Find(jobid);
        }

        /// <summary>
        /// Adds the job status.
        /// </summary>
        /// <param name="jobID">The job identifier.</param>
        public void AddJobStatus(string jobID)
        {
            HangFire_Job_Status job = new HangFire_Job_Status
            {
                Job_ID = jobID,
                DateCreated = DateTime.Now,
                Status = "New"
            };
            context.HangFire_Job_Status.Add(job);
            Save();
        }

        /// <summary>
        /// Adds the job status.
        /// </summary>
        /// <param name="job">The job.</param>
        public void AddJobStatus(HangFire_Job_Status job)
        {
            context.HangFire_Job_Status.Add(job);
            Save();
        }

        /// <summary>
        /// Updates the job status.
        /// </summary>
        /// <param name="jobid">The jobid.</param>
        /// <param name="status">The status.</param>
        public void UpdateJobStatus(string jobid, string status)
        {
            HangFire_Job_Status job = GetJobStatusbyID(jobid);
            job.Status = status;
            job.Datedcompleted = DateTime.Now;

            context.Entry(job).State = System.Data.Entity.EntityState.Modified;
            Save();
        }

        /// <summary>
        /// Instance of Job is currently running.
        /// </summary>
        /// <param name="jobname">The jobname.</param>
        /// <returns><c>true</c> if XXXX, <c>false</c> otherwise.</returns>
        public bool JobCurrentlyRunning(string jobname)
        {
            HangFire_Job_Status job_status = GetJobWithNewStatus(jobname);
            if (job_status != null)
                return true;
            else
                return false;

        }

        /// <summary>
        /// Numbers the of current skipped jobs for current job.
        /// </summary>
        /// <param name="jobname">The jobname.</param>
        /// <returns>System.Int32.</returns>
        /// <remarks>Data integration System (DIS) </remarks>
        public int NumberOfSkipsForCurrentJob(string jobname)
        {
            int skipStatuses;
            var lastNewStatus = (from d in context.HangFire_Job_Status
                                     where d.Jobname == jobname && d.Status == "New"
                                     select d.Datedcompleted).Max();
            if (lastNewStatus != null)
            {
                DateTime lastNewStatusDate = Convert.ToDateTime(lastNewStatus);
                skipStatuses = (from d in context.HangFire_Job_Status
                                where d.Jobname == jobname && d.DateCreated > lastNewStatusDate
                                select d).Count();
            }
            else
            {
                skipStatuses = 0;
            }

            return skipStatuses;
        }

        /// <summary>
        /// Gets the job with new status based on specified job name.
        /// </summary>
        /// <param name="jobname">The jobname.</param>
        /// <returns>HangFire_Job_Status.</returns>
        /// <remarks>Data integration System (DIS) </remarks>
        public HangFire_Job_Status GetJobWithNewStatus (string jobname)
        {
            HangFire_Job_Status job_status;
            job_status = context.HangFire_Job_Status
                .Where(l => l.Jobname == jobname && l.Status == "New")
                .FirstOrDefault();

            return job_status;
        }

        /// <summary>
        /// Count of Rows in table
        /// </summary>
        /// <returns>System.Int32.</returns>
        public int RowCount()
        {
            return context.HangFire_Job_Status.Count();
        }

        /// <summary>
        /// check if JobID exist in database.
        /// </summary>
        /// <param name="jobID">The job identifier.</param>
        /// <returns><c>true</c> if jobID is recorded in datbase, <c>false</c> otherwise.</returns>
        public bool JobIDExist(string jobID)
        {
            HangFire_Job_Status job = GetJobStatusbyID(jobID);
            if (job != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// Saves this instance.
        /// </summary>
        public void Save()
        {
            context.SaveChanges();
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
                    context.Dispose();
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
