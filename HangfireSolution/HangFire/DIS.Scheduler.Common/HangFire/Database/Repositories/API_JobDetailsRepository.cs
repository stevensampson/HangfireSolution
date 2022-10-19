using DIS.Core.Infrastructure.Profiles;
using DIS.Scheduler.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIS.Scheduler.Common.HangFire.Database.Repositories
{
    public class API_JobDetailsRepository : iAPI_JobDetailsRepository, IDisposable
    {
        /// <summary>
        /// The context
        /// </summary>
        private ProjectContext context;

        /// <summary>
        /// Initializes a new instance of the <see cref="API_JobDetailsRepository"/> class.
        /// </summary>
        /// <param name="Project">The project.</param>
        public API_JobDetailsRepository(Core.Entity.Contexts.Models.Project Project)
        {
            this.context = new ProjectContext(Project.DBConnectionString);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="API_JobDetailsRepository"/> class.
        /// </summary>
        public API_JobDetailsRepository(ProjectProfile ProjectProfile)
        {
            this.context = new ProjectContext(ProjectProfile.DBConnectionString);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="API_JobDetailsRepository"/> class.
        /// </summary>
        /// <param name="context">The context.</param>
        public API_JobDetailsRepository(ProjectContext context)
        {
            this.context = context;
        }

        /// <summary>
        /// Gets the job details.
        /// </summary>
        /// <returns>IEnumerable API_Caller_JobDetails.</returns>
        public IEnumerable<API_Caller_JobDetails> GetJobDetails()
        {
            return context.API_Caller_JobDetails.ToList();
        }

        /// <summary>
        /// Gets an instance of the job details by identifier.
        /// </summary>
        /// <param name="ID">The identifier.</param>
        /// <returns>API_Caller_JobDetails.</returns>
        public API_Caller_JobDetails GetJobDetails_ByID(int ID)
        {
            return context.API_Caller_JobDetails.Find(ID);

        }

        /// <summary>
        /// Gets an instance of the job details by job name.
        /// </summary>
        /// <param name="job_name">The job_name.</param>
        /// <returns>API_Caller_JobDetails.</returns>
        public API_Caller_JobDetails GetJobDetails_ByJobName(string job_name)
        {
            IEnumerable<API_Caller_JobDetails> jobdetails;
            try
            {
                jobdetails = context.API_Caller_JobDetails
                    .Where(t => t.Job_Name == job_name)
                    .Take(200);
                return jobdetails.First();
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// Get the job details.
        /// </summary>
        /// <param name="jobdetail">The jobdetail.</param>
        public void InsertJobDetails(API_Caller_JobDetails jobdetail)
        {
            context.API_Caller_JobDetails.Add(jobdetail);
            Save();
        }

        /// <summary>
        /// Deletes the job details.
        /// </summary>
        /// <param name="ID">The identifier.</param>
        public void DeleteJobDetails(int ID)
        {
            API_Caller_JobDetails jobdetail = GetJobDetails_ByID(ID);
            context.API_Caller_JobDetails.Remove(jobdetail);
            Save();
        }

        /// <summary>
        /// Deletes the job details by jobname
        /// </summary>
        /// <param name="jobname">The job name.</param>
        public void DeleteJobDetails(string jobname)
        {
            API_Caller_JobDetails jobdetail = GetJobDetails_ByJobName(jobname);
            context.API_Caller_JobDetails.Remove(jobdetail);
            Save();
        }

        /// <summary>
        /// Updates the job details.
        /// </summary>
        /// <param name="API_Caller_JobDetail">The ap i_ caller_ job detail.</param>
        public void UpdateJobDetails(API_Caller_JobDetails API_Caller_JobDetail)
        {
            context.Entry(API_Caller_JobDetail).State = System.Data.Entity.EntityState.Modified;
            Save();
        }

        public IEnumerable<API_Caller_JobDetails> GetJobsByJobTypes(string jobtypes)
        {
            IEnumerable<API_Caller_JobDetails> jobdetails;
            try
            {
                jobdetails = context.API_Caller_JobDetails
                    .Where(t => t.JobType == jobtypes);
                return jobdetails;
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// Count of Rows in table
        /// </summary>
        /// <returns>System.Int32.</returns>
        public int RowCount()
        {
            return context.API_Caller_JobDetails.Count();
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
