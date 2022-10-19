using DIS.Core.Entity.Contexts;
using DIS.Core.Entity.Contexts.Models;
using DIS.Core.Infrastructure.Repositories;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace DIS.Scheduler.Common.HangFire.Database
{
    public class SetupDB
    {
        private Project Project { get; set; }
        
        public SetupDB()
        {
            var reader = new AppSettingsReader();
            DISContext context = new DISContext();
            ProjectRepository rep = new ProjectRepository(context);

            string ProjectName = (string)reader.GetValue("ProjectName",typeof(string));
            this.Project = rep.GetProjectByName(ProjectName);

            Create_HangfireJobTable();
            Create_HangFireStatusTable();
            Create_HangFire_Logs();
            Create_InsertStoreProcedure();
            context.Dispose();
            
        }

        private void Create_HangFireStatusTable()
        {
            StringBuilder sqlstatement = new StringBuilder();

            sqlstatement.Append("If Object_ID('dbo.HangFireJobStatus','U') Is Null ");
            sqlstatement.Append("Begin");
            sqlstatement.Append("CREATE TABLE [dbo].[HangFire_Job_Status](");
            sqlstatement.Append("[Job_ID] [varchar](50) NOT NULL,");
            sqlstatement.Append("[DateCreated] [datetime] NOT NULL,");
            sqlstatement.Append("[DateCompleted] [datetime] NULL,");
            sqlstatement.Append("[Status] [varchar](20) NOT NULL");
            sqlstatement.Append("CONSTRAINT [PK_HangFire_Job_Status] PRIMARY KEY CLUSTERED ");
            sqlstatement.Append("(");
            sqlstatement.Append("	[Job_ID] ASC");
            sqlstatement.Append(")WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]");
            sqlstatement.Append(") ON [PRIMARY]");
            sqlstatement.Append("End");

            string constr = this.Project.DBConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlstatement.ToString()))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        private void Create_HangFire_Logs()
        {
            StringBuilder sqlstatement = new StringBuilder();

            sqlstatement.Append("If Object_ID('dbo.SchedulerHangFire_Logs','U') Is Null ");
            sqlstatement.Append("Begin");
            sqlstatement.Append("CREATE TABLE [dbo].[SchedulerHangFire_Logs](");
            sqlstatement.Append("[Log_Id] [int] IDENTITY(1,1) NOT NULL,");
            sqlstatement.Append("[ApplicationID] [int] NOT NULL,");
            sqlstatement.Append("[EventDate] [datetime] NOT NULL,");
            sqlstatement.Append("[EventCode] [int] NULL,");
            sqlstatement.Append("[EventLevel] [nvarchar](100) NOT NULL,");
            sqlstatement.Append("[UserName] [nvarchar](100) NOT NULL,");
            sqlstatement.Append("[MachineName] [nvarchar](100) NOT NULL,");
            sqlstatement.Append("[EventMessage] [nvarchar](max) NULL,");
            sqlstatement.Append("[EventSource] [nvarchar](100) NULL,");
            sqlstatement.Append("[EventClass] [nvarchar](100) NULL,");
            sqlstatement.Append("[ErrorMethod] [nvarchar](max) NULL,");
            sqlstatement.Append("[InsertErrorMessage] [nvarchar](max) NULL,");
            sqlstatement.Append("[TransactionID] [varchar](50) NULL,");
            sqlstatement.Append("CONSTRAINT [PK_Scheduler_HangFire_Logs] PRIMARY KEY CLUSTERED ");
            sqlstatement.Append("(");
            sqlstatement.Append("	[Log_Id] ASC");
            sqlstatement.Append(")WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]");
            sqlstatement.Append(") ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]");
            sqlstatement.Append("End");

            string constr = this.Project.DBConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlstatement.ToString()))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        private void Create_HangfireJobTable()
        {
            StringBuilder sqlstatement = new StringBuilder();

            sqlstatement.Append("If Object_ID('dbo.APICallerJobDetail','U') Is Null ");
            sqlstatement.Append("Begin");
            sqlstatement.Append("CREATE TABLE [dbo].[APICallerJobDetail](");
            sqlstatement.Append(" [id] [int] IDENTITY(1,1) NOT NULL,");
            sqlstatement.Append(" [url] [varchar](200) NOT NULL,");
            sqlstatement.Append(" [Method] [varchar](20) NOT NULL,");
            sqlstatement.Append(" [Job_Name] [varchar](200) NOT NULL,");
            sqlstatement.Append(" [IsActive] [bit] NOT NULL CONSTRAINT [DF_API_Caller_JobDetails_IsActive]  DEFAULT ((1)),");
            sqlstatement.Append(" [CronExpression] [varchar](100) NULL,");
            sqlstatement.Append(" [JobType] [varchar](50) NULL,");
            sqlstatement.Append(" [Monitor] [bit] NOT NULL,");
            sqlstatement.Append(" [AdditionalHeaders] [varchar](500) NULL,");

            sqlstatement.Append("CONSTRAINT [PK_API_Caller_JobDetails] PRIMARY KEY CLUSTERED ");
            sqlstatement.Append("(");
            sqlstatement.Append("	[id] ASC");
            sqlstatement.Append(")WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]");
            sqlstatement.Append(") ON [PRIMARY]");
            sqlstatement.Append("End");

            string constr = this.Project.DBConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlstatement.ToString()))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

        }

        private void Create_InsertStoreProcedure()
        {
            StringBuilder sqlstatement = new StringBuilder();

            sqlstatement.Append("If Object_ID('dbo.usp_InsertJob_Status') Is Null ");
            sqlstatement.Append("Begin");
            sqlstatement.Append("Exec('Create Procedure [dbo].[usp_InsertJob_Status] ");
            sqlstatement.Append("@job_id varchar(50), ");
            sqlstatement.Append("@DateCreated datetime, ");
            sqlstatement.Append("@Status varchar(20)");
            sqlstatement.Append(" as ");
            sqlstatement.Append("Insert into [dbo].[HangFire_Job_Status] ");
            sqlstatement.Append(" ([Job_ID],[DateCreated],[Status]) ");
            sqlstatement.Append("values ");
            sqlstatement.Append(" (@job_id,@DateCreated,@Status)') ");
            sqlstatement.Append(" End ");

            string constr = this.Project.DBConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlstatement.ToString()))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

        }

    }
}
