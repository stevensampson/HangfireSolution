// ***********************************************************************
// Assembly         : DIS.Scheduler.HangFire
// Author           : ssampson
// Created          : 06-22-2015
//
// Last Modified By : ssampson
// Last Modified On : 06-22-2015
// ***********************************************************************
// <copyright file="HangfireBootstrapper.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.CDI.Utils;
using DIS.Scheduler.Common.Hangfire;
using Hangfire;
using System.Configuration;
using System.Web.Hosting;


namespace DIS.Scheduler.HangFire
{
    /// <summary>
    /// Class HangfireBootstrapper.
    /// </summary>
    public class HangfireBootstrapper : IRegisteredObject
    {
        /// <summary>
        /// The instance
        /// </summary>
        public static readonly HangfireBootstrapper Instance = new HangfireBootstrapper();

        /// <summary>
        /// The _lock object
        /// </summary>
        private readonly object _lockObject = new object();
        /// <summary>
        /// Returns boolean on the status of the Hangfire object.
        /// </summary>
        private bool _started;

        /// <summary>
        /// The background job server
        /// </summary>
        private BackgroundJobServer _backgroundJobServer;

        /// <summary>
        /// Prevents a default instance of the <see cref="HangfireBootstrapper"/> class from being created.
        /// </summary>
        private HangfireBootstrapper()
        {
        }

        /// <summary>
        /// Starts this instance.
        /// </summary>
        public void Start()
        {
            lock (_lockObject)
            {
                if (_started) return;
                _started = true;

                HostingEnvironment.RegisterObject(this);
                Configure.SetDB();
                // Specify other options here

                //_backgroundJobServer = new BackgroundJobServer();
            }
        }

        /// <summary>
        /// Stops this instance.
        /// </summary>
        public void Stop()
        {
            lock (_lockObject)
            {
                if (_backgroundJobServer != null)
                {
                    _backgroundJobServer.Dispose();
                }

                HostingEnvironment.UnregisterObject(this);
            }
        }

        /// <summary>
        /// Requests a registered object to unregister.
        /// </summary>
        /// <param name="immediate">true to indicate the registered object should unregister from the hosting environment before returning; otherwise, false.</param>
        void IRegisteredObject.Stop(bool immediate)
        {
            Stop();
        }
    }
}