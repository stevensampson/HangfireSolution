// ***********************************************************************
// Assembly         : DIS.Scheduler.Hangfire
// Author           : ssampson
// Created          : 03-10-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-10-2015
// ***********************************************************************
// <copyright file="Startup.cs" company="Microsoft">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using Microsoft.Owin;
using Owin;


[assembly: OwinStartup(typeof(DIS.Scheduler.Hangfire.Startup))]

namespace DIS.Scheduler.Hangfire
{
    /// <summary>
    /// Class Startup.
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// Configurations the specified application.
        /// </summary>
        /// <param name="app">The application.</param>
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
            Common.Hangfire.Configure.ConfigureHangfire(app);
            Common.Hangfire.Configure.InitializeJobs();

        }
    }
}
