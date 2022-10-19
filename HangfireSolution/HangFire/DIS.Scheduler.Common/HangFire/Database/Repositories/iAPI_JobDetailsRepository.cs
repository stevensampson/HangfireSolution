// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 10-20-2015
//
// Last Modified By : ssampson
// Last Modified On : 10-20-2015
// ***********************************************************************
// <copyright file="iAPI_JobDetailsRepository.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Scheduler.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// The Repositories namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire.Database.Repositories
{
    /// <summary>
    /// Interface iAPI_JobDetailsRepository
    /// </summary>
    public interface iAPI_JobDetailsRepository
    {
        /// <summary>
        /// Gets the job details.
        /// </summary>
        /// <returns>IEnumerable API_Caller_JobDetails.</returns>
        IEnumerable<API_Caller_JobDetails> GetJobDetails();
        /// <summary>
        /// Gets an instance of the job details by identifier.
        /// </summary>
        /// <param name="ID">The identifier.</param>
        /// <returns>API_Caller_JobDetails.</returns>
        API_Caller_JobDetails GetJobDetails_ByID(int ID);

        /// <summary>
        /// Gets an instance of the job details by job name.
        /// </summary>
        /// <param name="job_name">The job_name.</param>
        /// <returns>API_Caller_JobDetails.</returns>
        API_Caller_JobDetails GetJobDetails_ByJobName(string job_name);

        /// <summary>
        /// Get the job details.
        /// </summary>
        /// <param name="jobdetail">The jobdetail.</param>
        void InsertJobDetails(API_Caller_JobDetails jobdetail);
        /// <summary>
        /// Deletes the job details.
        /// </summary>
        /// <param name="ID">The identifier.</param>
        void DeleteJobDetails(int ID);

        /// <summary>
        /// Deletes the job details by jobname
        /// </summary>
        /// <param name="jobname">The job name.</param>
        void DeleteJobDetails(string jobname);

        /// <summary>
        /// Updates the job details.
        /// </summary>
        /// <param name="API_Caller_JobDetail">The ap i_ caller_ job detail.</param>
        void UpdateJobDetails(API_Caller_JobDetails API_Caller_JobDetail);

        /// <summary>
        /// Gets the jobs by job types.
        /// </summary>
        /// <param name="jobtypes">The jobtypes.</param>
        /// <returns>List&lt;API_Caller_JobDetails&gt;.</returns>
        /// <remarks>Data integration System (DIS) </remarks>
        IEnumerable<API_Caller_JobDetails> GetJobsByJobTypes(string jobtypes);

        /// <summary>
        /// Count of Rows in table
        /// </summary>
        /// <returns>System.Int32.</returns>
        int RowCount();
        /// <summary>
        /// Saves this instance.
        /// </summary>
        void Save();
    }
}
