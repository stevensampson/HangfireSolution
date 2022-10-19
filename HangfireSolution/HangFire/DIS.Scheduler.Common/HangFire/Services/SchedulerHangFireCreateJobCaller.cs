using DIS.Core.Entity.Contexts.Models;
using DIS.Core.Infrastructure.DISEvents;
using DIS.Core.Infrastructure.EventCore;
using DIS.Core.Infrastructure.EventCore.Models;
using DIS.Core.Infrastructure.Json;
using DIS.Core.Infrastructure.Profiles;
using DIS.Scheduler.Common.Models;
using System;
using System.Net;

namespace DIS.Scheduler.Common.HangFire.Services
{
    public class SchedulerHangFireCreateJobCaller : IDisposable
    {
        /// <summary>
        /// The dis transaction identifier
        /// </summary>
        string DISTransactionID = null;
        /// <summary>
        /// The shared key
        /// </summary>
        string SharedKey = string.Empty;
        /// <summary>
        /// The bh transaction identifier
        /// </summary>
        string BHTransactionID = string.Empty;
        /// <summary>
        /// The _request
        /// </summary>
        WebClient _request = new WebClient();
        /// <summary>
        /// The URL
        /// </summary>
        string Url;
        /// <summary>
        /// Gets or sets the logger.
        /// </summary>
        /// <value>The logger.</value>
        public IEventManager Logger { get; set; }


        /// <summary>
        /// Initializes a new instance of the <see cref="SchedulerHangFireCreateJobCaller"/> class.
        /// </summary>
        /// <param name="SharedKey">The shared key.</param>
        /// <param name="DISTransactionID">The dis transaction identifier.</param>
        /// <param name="BHTransactionID">The bh transaction identifier.</param>
        /// <param name="URL">The URL.</param>
        /// <param name="l">The l.</param>
        /// <param name="FromBusinessEntity">From business entity.</param>
        public SchedulerHangFireCreateJobCaller(string SharedKey, string DISTransactionID, string BHTransactionID, string URL,
             IEventManager l, BusinessEntities FromBusinessEntity)
        {
            this.DISTransactionID = DISTransactionID;
            this.BHTransactionID = BHTransactionID;
            this.SharedKey = SharedKey;
            this.Url = URL;
            _request.Credentials = CredentialCache.DefaultNetworkCredentials;
            _request.Headers.Add("SharedKey", SharedKey);
            _request.Headers.Add("TransactionID", DISTransactionID);
            _request.Headers.Add("BHTransactionID", BHTransactionID);
            _request.Headers.Add("Referrer", ApplicationUtility.GetReferrerByBusinessEntity(FromBusinessEntity));
            _request.Headers.Add("Content-Type", "application/json");

            Logger = l;
        }

        /// <summary>
        /// Sends the specified ap i_ caller_ job detail.
        /// </summary>
        /// <param name="API_Caller_JobDetail">The ap i_ caller_ job detail.</param>
        /// <returns><c>true</c> if XXXX, <c>false</c> otherwise.</returns>
        public bool Send(API_Caller_JobDetails API_Caller_JobDetail)
        {
            try
            {
                if (string.IsNullOrEmpty(Url))
                {
                    Logger.Log(EnumEventType.OBJECT_VALIDATION_FAIL,
                           new EventArguments()
                           {
                               ObjectName = "_request.Url",
                               ObjectExpectedValue = "Url can not be null or empty ",
                               ObjectValue = Url,
                               ObjectProcessingModuleName = this.GetType().ToString()
                           });
                    return false;
                }

                string jobstring = JsonParser.ToJson<API_Caller_JobDetails>(API_Caller_JobDetail);

                Logger.Log(EnumEventType.HTTP_OUTGOING_REQUEST_DETAILS,
                      new EventArguments()
                      {
                          URL = Url,
                          Sharedkey = this.SharedKey,
                          DISTransactionID = this.DISTransactionID,
                          HttpRequestBody = jobstring,
                          HttpHeaderString = null,
                          HttpQueryString = null
                      });

                try
                {
                    status = _request.UploadString(Url, "Post", jobstring);
                    Logger.Log(EnumEventType.HTTP_RESPONSE_SUCCESS,
                               new EventArguments()
                               {
                                   URL = Url,
                                   Sharedkey = this.SharedKey,
                                   DISTransactionID = this.DISTransactionID,
                                   HttpRequestBody = jobstring,
                                   HttpResponseBody = status,
                                   HttpHeaderString = "",
                                   HttpQueryString = "",
                                   HttpStatus = "OK",
                                   HttpCode = 200,
                                   Status = ""
                               });
                    return true;
                }
                catch (Exception ex)
                {
                    Logger.Log(EnumEventType.HTTP_RESPONSE_FAIL,
                         new EventArguments()
                         {
                             URL = Url,
                             Sharedkey = this.SharedKey,
                             DISTransactionID = this.DISTransactionID,
                             HttpRequestBody = jobstring,
                             HttpResponseBody = status,
                             HttpHeaderString = "",
                             HttpQueryString = "",
                             HttpStatus = "OK",
                             HttpCode = 200,
                             Status = ex.Message
                         });
                    return false;

                }

            }
            catch (Exception ex)
            {
                Logger.Log(EnumEventType.GENERAL_EXCEPTION,
                      new EventArguments()
                      {
                          Exception = ex,
                          Message = "Error in sending data to Finance api.",
                          ObjectProcessingModuleName = this.GetType().ToString()
                      });
                return false;

            }

        }

        /// <summary>
        /// The disposed
        /// </summary>
        private bool disposed = false;

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources.
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing && _request != null)
                {
                    _request.Dispose();
                }
            }
            this.disposed = true;
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Gets or sets the status.
        /// </summary>
        /// <value>The status.</value>
        public string status { get; set; }
    }
}
