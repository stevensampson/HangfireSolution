// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 09-24-2015
//
// Last Modified By : ssampson
// Last Modified On : 09-24-2015
// ***********************************************************************
// <copyright file="HangFireSignalTask.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Infrastructure.AutoRetry;
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using System;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// The Task namespace.
/// </summary>
namespace DIS.Scheduler.Common.HangFire.Task
{
    /// <summary>
    /// Class HangFireSignalTask.
    /// </summary>
    public class HangFireSignalTask : RetryBase
    {
        /// <summary>
        /// The connection
        /// </summary>
        private object connection;

        /// <summary>
        /// Gets or sets the job_status.
        /// </summary>
        /// <value>The job_status.</value>
        public HangFire_Job_Status job_status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="HangFireSignalTask"/> class.
        /// </summary>
        /// <param name="job_id">The job_id.</param>
        /// <param name="connectionString">The connection string.</param>
        public HangFireSignalTask(string job_id, string connectionString)
        {
            this.ConnectionStrings = connectionString;
            this.Job_ID = job_id;
        }
        /// <summary>
        /// Gets or sets the connection strings.
        /// </summary>
        /// <value>The connection strings.</value>
        public string ConnectionStrings { get; set; }
        /// <summary>
        /// Gets or sets the job_ identifier.
        /// </summary>
        /// <value>The job_ identifier.</value>
        public string Job_ID { get; set; }

        /// <summary>
        /// Tryings the specified retry count.
        /// </summary>
        /// <param name="RetryCount">The retry count.</param>
        public override void Trying(int RetryCount)
        {
            CheckStatus();
            if (job_status.Status=="New")
            {
                IfSuccess = false;
            }else
            { IfSuccess = true; }
        }


        /// <summary>
        /// Validates the required properties.
        /// </summary>
        /// <returns><c>true</c> if XXXX, <c>false</c> otherwise.</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public override bool ValidateRequiredProperties()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Checks the status.
        /// </summary>
        private async void CheckStatus()
        {
            using (var connection = new SqlConnection(ConnectionStrings))
            {
                string query = "SELECT Job_ID, DateCreated, DateCompleted, Status FROM HangFire_Job_Status Where Job_ID ='" + Job_ID + "'";
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        command.Notification = null;
                        DataTable dt = new DataTable();
                        //SqlDependency dependency = new SqlDependency(command);
                        //dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);
                        if (connection.State == ConnectionState.Closed)
                            connection.Open();
                        var reader = command.ExecuteReader();
                        dt.Load(reader);
                        if (dt.Rows.Count > 0)
                        {
                            job_status = new HangFire_Job_Status();
                            job_status.Job_ID = dt.Rows[0]["Job_ID"].ToString();
                            job_status.DateCreated = DateTime.Parse(dt.Rows[0]["DateCreated"].ToString());
                            job_status.Status = dt.Rows[0]["Status"].ToString();
                            //job_status.Datedcompleted = DateTime.Parse(dt.Rows[0]["DateCompleted"].ToString());
                        }
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }
        }

    }
}
