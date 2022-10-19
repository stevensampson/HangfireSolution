// ***********************************************************************
// Assembly         : DIS.Scheduler.HangFire
// Author           : skumar2
// Created          : 06-11-2015
//
// Last Modified By : skumar2
// Last Modified On : 06-11-2015
// ***********************************************************************
// <copyright file="ManagerController.cs" company="CDI Corporation">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.CDI.Utils;
using DIS.Core.Entity.Contexts;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.Logging;
using DIS.Core.Infrastructure.Notification;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Repositories.Interfaces;
using DIS.Core.Infrastructure.Transactions;
using DIS.Core.Infrastructure.Web.RestApi;
using DIS.Core.Infrastructure.Web.RestApi.Services.Models;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.HangFire.Services;
using DIS.Scheduler.Common.Models;
using System.Configuration;
using System.Web.Http;


namespace DIS.Scheduler.HangFire.Controllers
{
    /// <summary>
    /// Class ManagerController.
    /// </summary>
    [AllowAnonymous]
    public class ManagerController : DISRestApiControllerBase
    {
        private DISContext context = new DISContext();
        //private ProjectContext projectontext;
        private ProjectProfile projectProfile;
        private string ProjectName
        {
            get
            {
               return Configure.Project.Project_Name;
            }
        }

        /// <summary>
        /// The application profile
        /// </summary>
        ApplicationProfile appProfile;
        /// <summary>
        /// Creates a "Once and Done" job on the HangFire scheduling system.
        /// </summary>
        /// <param name="API_Caller_JobDetails">The API_Caller_JobDetails</param>
        /// <returns>ServiceApiResponse.</returns>
        [ActionName("CreateOnceAndDoneJob")]
        [AllowAnonymous]
        [HttpPost]
        public ServiceApiResponse CreateOnceAndDoneJob(DIS.Scheduler.Common.Models.API_Caller_JobDetails API_Caller_JobDetails)
        {

            projectProfile = new ProjectProfile(this.ProjectName, context);

            appProfile = Configure.ApplicationProfile;
            IApiProfile _apiProfile = new ApiProfile(GetRequestUrl(), "Post", context);

            string ConfigSharedKey = appProfile.SharedKey;
            
            string NotificationHostAddress = Util.GetString(appProfile.AppSettings["NotificationHostAddress"]);
            string NotificationFromAddress = Util.GetString(appProfile.AppSettings["NotificationFromAddress"]);
            string NotificationDefaultAddress = Util.GetString(appProfile.AppSettings["NotificationDefaultAddress"]);

            ILogRepository logrepository = _apiProfile.DYNAMIC_LogsRepository;

            ILogger logger = new EfLogger(_apiProfile, logrepository);
            logger.EventClass = appProfile.ApplicationName + ".Manager.CreateOnceAndDoneJob";
            logger.EventMethod = "Post";
            logger.EventSource = appProfile.ApplicationName;

            string TextLogFileLocation = appProfile.TextLogLocation;

            ILogger AlternateLogger = new TextFileLogger(appProfile.ApplicationName,
                logger.EventSource, logger.EventMethod, logger.EventClass, TextLogFileLocation);

            EmailNotifier notifier = new EmailNotifier( _apiProfile);

            IOuter outmsg = new ObjectLogger();

            
            DisEventManager disEventManager = new DisEventManager(context, _apiProfile, logger, AlternateLogger, notifier, outmsg);
            ProcessProfile _process = _apiProfile.ProcessProfiles[0] as ProcessProfile;


            TransactionEntry te = new TransactionEntry(context, disEventManager, _apiProfile,
                    _process.DYNAMIC_TRANSACTIONRepository,
                    _process.DYNAMIC_TRANSACTIONACTIVITYRepository);

            HangFireScheduleOADService service = new HangFireScheduleOADService(API_Caller_JobDetails, disEventManager, te, ConfigSharedKey);
            ServiceApiResponse resp = service.ProcessRequest();
            return resp;

        }

        /// <summary>
        /// Creates the scheduled job.
        /// </summary>
        /// <param name="API_Caller_JobDetails">The ap i_ caller_ job details.</param>
        /// <returns>ServiceApiResponse.</returns>
        [ActionName("CreateScheduledJob")]
        [AllowAnonymous]
        [HttpPost]
        public ServiceApiResponse CreateScheduledJob(DIS.Scheduler.Common.Models.API_Caller_JobDetails API_Caller_JobDetails)
        {
            projectProfile = new ProjectProfile(this.ProjectName, context);

            appProfile = Configure.ApplicationProfile;
            IApiProfile _apiProfile = new ApiProfile(GetRequestUrl(), "Post", context);

            string ConfigSharedKey = appProfile.SharedKey;

            string NotificationHostAddress = Util.GetString(appProfile.AppSettings["NotificationHostAddress"]);
            string NotificationFromAddress = Util.GetString(appProfile.AppSettings["NotificationFromAddress"]);
            string NotificationDefaultAddress = Util.GetString(appProfile.AppSettings["NotificationDefaultAddress"]);

            ILogRepository logrepository = _apiProfile.DYNAMIC_LogsRepository;
            
            ILogger logger = new EfLogger(_apiProfile, logrepository);
            logger.EventClass = appProfile.ApplicationName + ".Manager.CreateScheduledJob";
            logger.EventMethod = "Post";
            logger.EventSource = appProfile.ApplicationName;

            string TextLogFileLocation = appProfile.TextLogLocation;

            ILogger AlternateLogger = new TextFileLogger(appProfile.ApplicationName,
                logger.EventSource, logger.EventMethod, logger.EventClass, TextLogFileLocation);

            EmailNotifier notifier = new EmailNotifier(_apiProfile);

            IOuter outmsg = new ObjectLogger();


            DisEventManager disEventManager = new DisEventManager(context, _apiProfile, logger, AlternateLogger, notifier, outmsg);
            ProcessProfile _process = _apiProfile.ProcessProfiles[0] as ProcessProfile;


            TransactionEntry te = new TransactionEntry(context, disEventManager, _apiProfile,
                    _process.DYNAMIC_TRANSACTIONRepository,
                    _process.DYNAMIC_TRANSACTIONACTIVITYRepository);

            HangFireScheduleJobService service = new HangFireScheduleJobService(API_Caller_JobDetails, disEventManager, te, ConfigSharedKey, this.projectProfile);

            ServiceApiResponse resp = service.ProcessRequest();
            return resp;

        }

        /// <summary>
        /// Gets the request URL.
        /// </summary>
        /// <returns>System.String.</returns>
        protected new string GetRequestUrl()
        {
            return Request.RequestUri.ToString();
        }
    }
}
