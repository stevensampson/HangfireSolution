// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-12-2015
//
// Last Modified By : ssampson
// Last Modified On : 12-02-2015
// ***********************************************************************
// <copyright file="ASI_API_Caller.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************


namespace DIS.Scheduler.Common.HangFire.Jobs.Models
{
    /// <summary>
    /// Class ASI_API_Caller.
    /// </summary>
    public class API_Caller
    {
        /// <summary>
        /// Gets or sets the URL.
        /// </summary>
        /// <value>The URL.</value>
        public string url { get; set; } 

        /// <summary>
        /// Gets or sets the method.
        /// </summary>
        /// <value>The method.</value>
        public string Method { get; set; }

        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>The identifier.</value>
        public string id { get; set; }

        /// <summary>
        /// Gets or sets the shared key.
        /// </summary>
        /// <value>The shared key.</value>
        public string SharedKey { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="API_Caller"/> is monitored.
        /// </summary>
        /// <value><c>true</c> if monitored and fail if called API fails; otherwise, <c>false</c> and job only fails if call to API fails..</value>
        public bool Monitor { get; set; }

        /// <summary>
        /// Gets or sets the type of the job.
        /// </summary>
        /// <value>The type of the job.</value>
        public JobTypeEnum JobType { get; set; }

        /// <summary>
        /// Gets or sets the additional headers.
        /// </summary>
        /// <value>The additional headers.</value>
        public string AdditionalHeaders { get; set; }

    }

    /// <summary>
    /// JobType Enum
    /// </summary>
    public enum JobTypeEnum
    {
        /// <summary>
        ///  Finance Account Reconciliation jobs
        /// </summary>
        AR,
        /// <summary>
        /// Application Tracking System jobs
        /// </summary>
        ATS,
        /// <summary>
        ///  Finance EFT jobs
        /// </summary>
        EFT,
        /// <summary>
        ///  Finance Positive Pay jobs
        /// </summary>
        PositivePay,
        /// <summary>
        /// The Finance expense reports jobs
        /// </summary>
        ExpenseReports,
        /// <summary>
        /// The Corporate Communication jobs
        /// </summary>
        Communication,
        /// <summary>
        /// The ExtractTarget report job
        /// </summary>
        ExtractTarget,
        /// <summary>
        /// The default job type
        /// </summary>
        Default,
        /// <summary>
        /// The ServiceNow job type
        /// </summary>
        ServiceNow

    }
}
