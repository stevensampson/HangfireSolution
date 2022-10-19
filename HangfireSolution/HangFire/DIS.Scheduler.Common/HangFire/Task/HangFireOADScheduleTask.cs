// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : skumar2
// Created          : 06-11-2015
//
// Last Modified By : skumar2
// Last Modified On : 06-11-2015
// ***********************************************************************
// <copyright file="HangFireOADScheduleTask.cs" company="Microsoft">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts.Models;
using DIS.Core.Infrastructure.AutoRetry;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.Profiles;
using DIS.Core.Infrastructure.Transactions;
using DIS.Scheduler.Common.Hangfire;
using DIS.Scheduler.Common.Models;
using System;


namespace DIS.Scheduler.Common.HangFire.Task
{
    /// <summary>
    /// Class HangFireOADScheduleTask.
    /// </summary>
    public class HangFireOADScheduleTask : RetryBase
    {
        /// <summary>
        /// Gets or sets the name of the API.
        /// </summary>
        /// <value>The name of the API.</value>
        public string ApiName { get; set; }


        /// <summary>
        /// The ap i_ caller_ job details
        /// </summary>
        private API_Caller_JobDetails API_Caller_JobDetails;
        //IFileOperations FileIO = null;

        /// <summary>
        /// The event manager
        /// </summary>
        IEventManager EventManager = null;

        /// <summary>
        /// The transaction
        /// </summary>
        TransactionEntry Transaction = null;

        /// <summary>
        /// Gets or sets the dis transaction identifier.
        /// </summary>
        /// <value>The dis transaction identifier.</value>
        public string DISTransactionID { get; set; }
        /// <summary>
        /// Gets or sets the bh transaction identifier.
        /// </summary>
        /// <value>The bh transaction identifier.</value>
        public string BHTransactionID { get; set; }
        /// <summary>
        /// The dis activity identifier
        /// </summary>
        public int DISActivityID = 0;

        /// <summary>
        /// Initializes a new instance of the <see cref="HangFireOADScheduleTask"/> class.
        /// </summary>
        /// <param name="l">The l.</param>
        /// <param name="t">The t.</param>
        /// <param name="API_Caller_JobDetails">The ap i_ caller_ job details.</param>
        /// <param name="DISTransactionID">The dis transaction identifier.</param>
        /// <param name="BHTransactionID">The bh transaction identifier.</param>
        public HangFireOADScheduleTask(IEventManager l, TransactionEntry t, API_Caller_JobDetails API_Caller_JobDetails, string DISTransactionID, string BHTransactionID)
        {
            EventManager = l;
            Transaction = t;
            this.API_Caller_JobDetails = API_Caller_JobDetails;
            this.BHTransactionID = BHTransactionID;
            this.DISTransactionID = DISTransactionID;
        }

        /// <summary>
        /// Abstract method Trying. Derive class must override this
        /// </summary>
        /// <param name="RetryCount">Number of retry approaches if previous attempt returns false</param>
        /// <returns>return true if everything goes right, else return false and it will retry again.</returns>
        public override void Trying(int RetryCount)
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
                    Message = "Hangfire failed to scheduler job for DIS Transaction: " + DISTransactionID,
                    DISTransactionID = DISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                    Exception = ex
                });
            }
            EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_START, new EventArguments() // need review
            {
                Message = "Creating and Scheduling Job for the following DIS Transaction " + DISTransactionID,
                DISTransactionID = DISTransactionID,
                ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
            });
            try
            {
                TimeSpan Delay = TimeSpan.FromMinutes(wait);
                Helper.CreateOnceAndDoneJob(API_Caller_JobDetails, Delay);
                EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_SCHEDULED, new EventArguments() // need review
                {
                    Message = "Job successfully scheduled for the following DIS Transaction " + DISTransactionID,
                    DISTransactionID = DISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                });
                IfSuccess = true;
                
            }
            catch (Exception ex)
            {
                EventManager.Log(EnumEventType.HANGFIRE_JOB_CREATE_ERROR, new EventArguments() // need review
                {
                    Message = "Hangfire failed to scheduler job for DIS Transaction: " + DISTransactionID,
                    DISTransactionID = DISTransactionID,
                    ObjectValue = DIS.Core.CDI.Utils.Util.SerializeToXml(API_Caller_JobDetails),
                    Exception=ex
                });
            }
        }

        /// <summary>
        /// Validates the required properties.
        /// </summary>
        /// <returns><c>true</c> if XXXX, <c>false</c> otherwise.</returns>
        /// <exception cref="System.ArgumentException">
        /// Data is null ;Data
        /// or
        /// DISTransactionID is null or Empty ;DISTransactionID
        /// </exception>
        public override bool ValidateRequiredProperties()
        {
            if (API_Caller_JobDetails == null) throw new ArgumentException("Data is null ", "Data");
            if (string.IsNullOrEmpty(DISTransactionID)) throw new ArgumentException("DISTransactionID is null or Empty ", "DISTransactionID");
            if (EventManager == null) new ArgumentException("EventManager is null ", "EventManager");
            return true;
        }

    }
}
