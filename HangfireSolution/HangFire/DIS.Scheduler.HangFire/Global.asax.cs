using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using DIS.Core.Entity.Contexts.Models;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Scheduler.Common.Models;

namespace DIS.Scheduler.HangFire
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            HangfireBootstrapper.Instance.Start();
            Project project = Configure.Project;
            System.Data.SqlClient.SqlDependency.Start(project.DBConnectionString);
        }

        /// <summary>
        /// Handles the End event of the Application control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void Application_End(object sender, EventArgs e)
        {
            API_JobDetailsRepository rep = new API_JobDetailsRepository(Configure.Project);
            HangFire_Job_StatusRepository rep2 = new HangFire_Job_StatusRepository(Configure.Project);
            IEnumerable<API_Caller_JobDetails> jobs = rep.GetJobsByJobTypes(Configure.JobType);

            if (jobs != null)
            {
                foreach (API_Caller_JobDetails job in jobs)
                {
                    if (rep2.JobCurrentlyRunning(job.Job_Name))
                    {
                        HangFire_Job_Status Frozenjob = rep2.GetJobWithNewStatus(job.Job_Name);
                        rep2.UpdateJobStatus(Frozenjob.Job_ID, "Failed");
                        //close current run and continue running new job.
                    }
                }
            }
            rep.Dispose();
            rep2.Dispose();

            HangfireBootstrapper.Instance.Stop();

        }
    }
}
