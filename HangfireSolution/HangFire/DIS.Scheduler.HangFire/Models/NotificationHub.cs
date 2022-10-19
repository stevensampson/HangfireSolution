// ***********************************************************************
// Assembly         : DIS.Scheduler.HangFire
// Author           : ssampson
// Created          : 09-09-2015
//
// Last Modified By : ssampson
// Last Modified On : 09-22-2015
// ***********************************************************************
// <copyright file="NotificationHub.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using Microsoft.AspNet.SignalR;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Common.Hangfire;

/// <summary>
/// The Models namespace.
/// </summary>
namespace DIS.Scheduler.HangFire.Models
{

    /// <summary>
    /// Class NotificationHub.
    /// </summary>
    public class NotificationHub : Hub
    {

        /// <summary>
        /// The job_status
        /// </summary>
        HangFire_Job_Status job_status;
        /// <summary>
        /// Gets or sets the job_ identifier.
        /// </summary>
        /// <value>The job_ identifier.</value>
        public string Job_ID { get; set; }

        /// <summary>
        /// Called when [connected].
        /// </summary>
        /// <returns>Task.</returns>
        public override Task OnConnected()
        {
            string Job_ID = Context.ConnectionId;
            return base.OnConnected();
        }
        /// <summary>
        /// Sends the notifications.
        /// </summary>
        /// <param name="job_id">The job_id.</param>
        [System.Web.Http.Authorize]
        public HangFire_Job_Status SendNotifications(string job_id)
        {
            string jstatus = "New";
            this.Job_ID = job_id;
            do
            {
                jstatus = CheckStatus();
            } while (jstatus == "New");


            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<NotificationHub>();
            return job_status;
        }




        /// <summary>
        /// Checks the status.
        /// </summary>
        private string CheckStatus()
        {
            using (var connection = new SqlConnection(Configure.Project.DBConnectionString))
            {
                string query = "SELECT Job_ID, DateCreated, Status FROM HangFire_Job_Status Where Job_ID ='" + Job_ID + "'";
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        command.Notification = null;
                        DataTable dt = new DataTable();
                        SqlDependency dependency = new SqlDependency(command);
                        dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);
                        if (connection.State == ConnectionState.Closed)
                            connection.Open();
                        var reader = command.ExecuteReader();
                        dt.Load(reader);
                        if (dt.Rows.Count > 0)
                        {
                            job_status = new HangFire_Job_Status();
                            job_status.Job_ID = dt.Rows[0]["Job_ID"].ToString();
                            job_status.DateCreated = DateTime.Parse(dt.Rows[0]["Datecreated"].ToString());
                            job_status.Status = dt.Rows[0]["Status"].ToString();
                            //job_status.Datedcompleted = DateTime.Parse(dt.Rows[0]["DateCompleted"].ToString());
                        }
                        connection.Close();
                        return job_status.Status;
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }
        }

        /// <summary>
        /// Handles the OnChange event of the dependency control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="SqlNotificationEventArgs"/> instance containing the event data.</param>
        private void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (e.Type == SqlNotificationType.Change)
            {
                NotificationHub nHub = new NotificationHub();
                nHub.SendNotifications(this.Job_ID);
            }
        }

    }
}