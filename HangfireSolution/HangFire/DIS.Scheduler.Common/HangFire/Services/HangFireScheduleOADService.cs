// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : skumar2
// Created          : 06-11-2015
//
// Last Modified By : skumar2
// Last Modified On : 06-11-2015
// ***********************************************************************
// <copyright file="HangFireScheduleOADService.cs" company="Microsoft">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Infrastructure.AutoRetry;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.IO;
using DIS.Core.Infrastructure.Transactions;
using DIS.Core.Infrastructure.Web.RestApi.Services;
using DIS.Core.Infrastructure.Web.RestApi.Services.Models;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.Models;
using System;
using System.Net;


namespace DIS.Scheduler.Common.HangFire.Services
{
    /// <summary>
    /// Class HangFireScheduleOADService.
    /// </summary>
    public class HangFireScheduleOADService : DISInternalApiRequestProccessingBase
    {
        /// <summary>
        /// The ap i_ caller_ job details
        /// </summary>
        private API_Caller_JobDetails API_Caller_JobDetails;

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
        /// Initializes a new instance of the <see cref="HangFireScheduleOADService"/> class.
        /// </summary>
        /// <param name="API_Caller_JobDetails">The ap i_ caller_ job details.</param>
        /// <param name="EventManager">The event manager.</param>
        /// <param name="_t">The _t.</param>
        /// <param name="ConfigSharedKey">The configuration shared key.</param>
        public HangFireScheduleOADService(API_Caller_JobDetails API_Caller_JobDetails, DisEventManager EventManager, 
            TransactionEntry _t, string ConfigSharedKey)
            : base(EventManager, new FileIO())
        {

            // TODO: Complete member initialization
            this.API_Caller_JobDetails = API_Caller_JobDetails;
            this.tEventManager = _t;
            this.ConfigSharedKey = ConfigSharedKey;
            base.AllowedSharedKey = ConfigSharedKey;

            InitService();
        }


        /// <summary>
        /// Initializes the service.
        /// </summary>
        public void InitService()
        {
            config = new DISRetryConfigurator(3, 10, EventManager, Configure.ApplicationName);
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
            CurrentDISTransactionID = GetHttpHeader("TransactionID");

            try
            {
                ScheduleJob();
                IsSuccessful = true;
                Message = "Job Created";

                Response = CreateResponse(Message);
            }
            catch (Exception ex)
            {
                IsSuccessful = false;
                Message = ex.Message;
                Response = CreateResponse(Message,HttpStatusCode.BadRequest);

            }
            finally
            {
                LogTransaction_insertactivity();


                base.LogHttpRequestAccepted();
            }
            return Response;

        }



        /// <summary>
        /// Schedules the job.
        /// </summary>
        void ScheduleJob()
        {
            int wait = 0;
            try
            {
                wait = Convert.ToInt32(API_Caller_JobDetails.CronExpression);

            }
            catch (Exception ex)
            {
                EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_ERROR, new EventArguments() // need review
                {
                    Message = "Hangfire failed to scheduler job for DIS Transaction: " + CurrentDISTransactionID,
                    DISTransactionID = CurrentDISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                    Exception = ex
                });
            }
            EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_START, new EventArguments() // need review
            {
                Message = "Creating and Scheduling Job for the following DIS Transaction " + CurrentDISTransactionID,
                DISTransactionID = CurrentDISTransactionID,
                ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
            });
            try
            {
                TimeSpan Delay = TimeSpan.FromMinutes(wait);
                Helper.CreateOnceAndDoneJob(API_Caller_JobDetails, Delay);
                EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_SCHEDULED, new EventArguments() // need review
                {
                    Message = "Job successfully scheduled for the following DIS Transaction " + CurrentDISTransactionID,
                    DISTransactionID = CurrentDISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                });
            }
            catch (Exception ex)
            {
                EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_ERROR, new EventArguments() // need review
                {
                    Message = "Hangfire failed to scheduler job for DIS Transaction: " + CurrentDISTransactionID,
                    DISTransactionID = CurrentDISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                    Exception = ex
                });
            }
        }


        /// <summary>
        /// Insert the transaction activity status based on Action Type.
        /// </summary>
        void LogTransaction_insertactivity()
        {
            int activityID = 0;
            if(IsSuccessful)
            {
                //activityID = tEventManager.InsertTransactionActivity(CurrentDISTransactionID, DateTime.Now,
                //                                       BHDashBoardStatus.Success, DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                //                                       "Scheduling next job", "");

            }
            else
            {
                //activityID = tEventManager.InsertTransactionActivity(CurrentDISTransactionID, DateTime.Now,
                //                                       BHDashBoardStatus.Failed, DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                //                                       Message, "");
            }

            if (activityID <= 0)
            {

                EventManager.Log(EnumEventType.ACTIVITY_PROCESSING_FAILED, new EventArguments()
                {
                    Message = "Failed to create activity.",
                    DISTransactionID = CurrentDISTransactionID,
                    ActivityID = activityID.ToString(),
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                    ObjectProcessingModuleName = "SaveFileFromDataBase",


                });

            }
        }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is successful.
        /// </summary>
        /// <value><c>true</c> if this instance is successful; otherwise, <c>false</c>.</value>
        public bool IsSuccessful { get; set; }

        /// <summary>
        /// Gets or sets the message.
        /// </summary>
        /// <value>The message.</value>
        public string Message { get; set; }
    }


}
