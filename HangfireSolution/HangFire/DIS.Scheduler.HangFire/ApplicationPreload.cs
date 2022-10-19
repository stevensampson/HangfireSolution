// ***********************************************************************
// Assembly         : DIS.Scheduler.HangFire
// Author           : ssampson
// Created          : 06-22-2015
//
// Last Modified By : ssampson
// Last Modified On : 06-22-2015
// ***********************************************************************
// <copyright file="ApplicationPreload.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hangfire;





namespace DIS.Scheduler.HangFire
{
    /// <summary>
    /// Class ApplicationPreload.
    /// </summary>
    public class ApplicationPreload : System.Web.Hosting.IProcessHostPreloadClient
    {
        /// <summary>
        /// Provides initialization data that is required in order to preload the application.
        /// </summary>
        /// <param name="parameters">Data to initialize the application. This parameter can be null or an empty array.</param>
        public void Preload(string[] parameters)
        {
            HangfireBootstrapper.Instance.Start();
        }
    }
}