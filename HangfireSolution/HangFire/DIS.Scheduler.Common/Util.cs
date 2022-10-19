using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DIS.Scheduler.Common
{
    /// <summary>
    /// Utilities class
    /// </summary>
    public static class Util
    {

        /// <summary>
        /// Record new job
        /// </summary>
        /// <param name="jobstatus"></param>
        public static void InsertJobStatus(HangFire_Job_Status jobstatus)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                
                // Set Connection String property of Connection object..................
                con.ConnectionString = Configure.Project.DBConnectionString;

                // Open Connection..................
                con.Open();

                //Create object of Command Class................
                SqlCommand cmd = new SqlCommand();

                //set Connection Property  of  Command object.............
                cmd.Connection = con;


                cmd.CommandType = CommandType.StoredProcedure;

                //Set Command text Property of command object.........

                SqlParameter job_id = cmd.Parameters.Add  ("@job_id", SqlDbType.VarChar, 50);
                job_id.Direction = ParameterDirection.Input;
                job_id.Value = jobstatus.Job_ID;

                SqlParameter DateCreated = cmd.Parameters.Add("@DateCreated", SqlDbType.DateTime);
                DateCreated.Direction = ParameterDirection.Input;
                DateCreated.Value = jobstatus.DateCreated;

                SqlParameter Status = cmd.Parameters.Add("@Status", SqlDbType.VarChar, 20);
                Status.Direction = ParameterDirection.Input;
                Status.Value = jobstatus.Status;

                SqlParameter Jobname = cmd.Parameters.Add("@Jobname", SqlDbType.VarChar, 100);
                Jobname.Direction = ParameterDirection.Input;
                Jobname.Value = jobstatus.Jobname;

                cmd.CommandText = "usp_InsertJob_Status";


                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {

                throw;
            }

           
        }
    }
}
