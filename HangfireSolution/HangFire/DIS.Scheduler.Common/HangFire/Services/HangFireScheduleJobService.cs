// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : skumar2
// Created          : 06-11-2015
//
// Last Modified By : skumar2
// Last Modified On : 06-11-2015
// ***********************************************************************
// <copyright file="HangFireScheduleJobService.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Infrastructure.AutoRetry;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.IO;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Repositories;
using DIS.Core.Infrastructure.Transactions;
using DIS.Core.Infrastructure.Web.RestApi.Services;
using DIS.Core.Infrastructure.Web.RestApi.Services.Models;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using System;
using System.Net;


namespace DIS.Scheduler.Common.HangFire.Services
{
    /// <summary>
    /// Class HangFireScheduleJobService.
    /// </summary>
    public class HangFireScheduleJobService : DISInternalApiRequestProccessingBase
    {
        /// <summary>
        /// The ap i_ caller_ job details
        /// </summary>
        private API_Caller_JobDetails API_Caller_JobDetails;

        private ProjectProfile projectProfile;
        /// <summary>
        /// The t event manager
        /// </summary>
        private TransactionEntry tEventManager;
        /// <summary>
        /// The configuration shared key
        /// </summary>
        private string ConfigSharedKey;
        /// <summary>
        /// The response
        /// </summary>
        ServiceApiResponse Response = null;
        /// <summary>
        /// The t service
        /// </summary>
        RetryService TService = new RetryService();
        /// <summary>
        /// The configuration
        /// </summary>
        DISRetryConfigurator config;

        /// <summary>
        /// Initializes a new instance of the <see cref="HangFireScheduleJobService"/> class.
        /// </summary>
        /// <param name="API_Caller_JobDetails">The ap i_ caller_ job details.</param>
        /// <param name="EventManager">The event manager.</param>
        /// <param name="_t">The _t.</param>
        /// <param name="ConfigSharedKey">The configuration shared key.</param>
        /// <param name="projectProfile">The project profile.</param>
        public HangFireScheduleJobService(API_Caller_JobDetails API_Caller_JobDetails, DisEventManager EventManager,
            TransactionEntry _t, string ConfigSharedKey, ProjectProfile projectProfile)
            : base(EventManager, new FileIO())
        {
            TService.OnRetryException += TService_OnRetryException;

            // TODO: Complete member initialization
            this.API_Caller_JobDetails = API_Caller_JobDetails;

            this.tEventManager = _t;
            this.ConfigSharedKey = ConfigSharedKey;
            base.AllowedSharedKey = ConfigSharedKey;
            this.projectProfile = projectProfile;
            InitService();
        }


        /// <summary>
        /// Initializes the service.
        /// </summary>
        public void InitService()
        {
            config = new DISRetryConfigurator(3, 10, EventManager, "Scheduler.HangFire");

        }

        /// <summary>
        /// Processes the request.
        /// </summary>
        /// <returns>ServiceApiResponse.</returns>
        public ServiceApiResponse ProcessRequest()
        {

            base.CaptureRequestContext();

            Response = base.ValidateSharedKey(base.AllowedSharedKey);

            if (Response.Flag != (int)HttpStatusCode.OK)
            {
                base.LogHttpRequestRejected(Response);
                return Response;
            }
            using(API_JobDetailsRepository rep = new API_JobDetailsRepository(this.projectProfile))
            {
                API_Caller_JobDetails jobdetails = this.API_Caller_JobDetails;
                rep.InsertJobDetails(jobdetails);
                Helper.AddUpdateJob(jobdetails);
            }

            Response = CreateResponse("Success");
            base.LogHttpRequestAccepted();
            return Response;
        }


        /// <summary>
        /// ts the service_ on retry exception.
        /// </summary>
        /// <param name="ex">The ex.</param>
        /// <param name="Worker">The worker.</param>
        void TService_OnRetryException(Exception ex, IRetry Worker)
        {


            EventManager.Log(EnumEventType.TASK_EXCEPTION, new EventArguments()
            {
                Exception = ex,
                // Send notification from this enum               

                ApplicationName = Configure.ApplicationName,
                OriginTransactionID = Convert.ToString(OriginTransactionID),
                DISTransactionID = CurrentDISTransactionID,

            });
        }




    }


}
