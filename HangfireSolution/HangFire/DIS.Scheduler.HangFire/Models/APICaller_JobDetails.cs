// ***********************************************************************
// Assembly         : DIS.Scheduler.Hangfire
// Author           : ssampson
// Created          : 03-24-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-24-2015
// ***********************************************************************
// <copyright file="APICaller_JobDetails.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Core.Entity.Contexts.Models;
using DIS.Scheduler.Common.Models;
using System.Web.Mvc;


namespace DIS.Scheduler.Hangfire.Models
{
    /// <summary>
    /// Class APICaller_JobDetails.
    /// </summary>
    public class APICaller_JobDetails : API_Caller_JobDetails
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="APICaller_JobDetails"/> class.
        /// </summary>
        public APICaller_JobDetails() { }
        /// <summary>
        /// All enum value
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1051:DoNotDeclareVisibleInstanceFields")]
        public SelectList JobTypeList = null;
    }
}