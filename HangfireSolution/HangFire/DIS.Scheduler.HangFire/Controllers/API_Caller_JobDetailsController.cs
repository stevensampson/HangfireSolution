// ***********************************************************************
// Assembly         : DIS.Scheduler.Hangfire
// Author           : ssampson
// Created          : 03-20-2015
//
// Last Modified By : ssampson
// Last Modified On : 10-29-2015
// ***********************************************************************
// <copyright file="API_Caller_JobDetailsController.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Collections.Generic;
using System.Net;
using System.Web.Mvc;
using DIS.Scheduler.Common.Hangfire;
//for dianostics only
using System.Threading;
using System.Security.Principal;
using DIS.Core.Infrastructure.RBAC;
using DIS.Core.CDI.Utils;
using DIS.Scheduler.Common.HangFire.Database.Repositories;
using DIS.Core.Entity.Contexts;
using System.Configuration;
using DIS.Core.Infrastructure.Profiles;
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Hangfire.Models;
using DIS.Core.Entity.Contexts.Models;
using DIS.Scheduler.Common.HangFire.Jobs.Models;


/// <summary>
/// The Controllers namespace.
/// </summary>
namespace DIS.Scheduler.Hangfire.Controllers
{
    /// <summary>
    /// Class API_Caller_JobDetailsController.
    /// </summary>
    public class API_Caller_JobDetailsController : Controller
    {

        /// <summary>
        /// The repository class for API_JobDetail table
        /// </summary>
        private API_JobDetailsRepository rep;


        /// <summary>
        /// Initializes a new instance of the <see cref="API_Caller_JobDetailsController"/> class.
        /// </summary>
        public API_Caller_JobDetailsController()
        {
            rep = new API_JobDetailsRepository(Configure.Project);
        }


        // GET: API_Caller_JobDetails
        /// <summary>
        /// Indexes this instance.
        /// GET: API_Caller_JobDetails
        /// </summary>
        /// <returns>ActionResult.</returns>
        [DISAuthorize(Roles = "User")]
        public ActionResult Index()
        {
            IPrincipal principal = Thread.CurrentPrincipal;
            IPrincipal User = HttpContext.User;

            ViewBag.ThreadUser = principal.Identity.Name;
            ViewBag.HttpUser = User.Identity.Name;

            return View(rep.GetJobDetails());
        }

        // GET: API_Caller_JobDetails/Details/5
        /// <summary>
        /// Details the specified identifier.
        /// GET: API_Caller_JobDetails/Details/5
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>ActionResult.</returns>
        [DISAuthorize(Roles = "User")]
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            API_Caller_JobDetails aPI_Caller_JobDetails = rep.GetJobDetails_ByID((int)id);
            if (aPI_Caller_JobDetails == null)
            {
                return HttpNotFound();
            }
            else
            {
                APICaller_JobDetails jobdetails = GetJobDetailModel(aPI_Caller_JobDetails);
                jobdetails.JobTypeList = GetJobTypes(JobTypeEnum.ATS.ToString());

                return View(jobdetails);

            }
        }

        // GET: API_Caller_JobDetails/Create
        /// <summary>
        /// Creates this instance.
        /// GET: API_Caller_JobDetails/Create
        /// </summary>
        /// <returns>ActionResult.</returns>
        [DISAuthorize(Roles = "Admin")]
        public ActionResult Create()
        {
            DIS.Scheduler.Hangfire.Models.APICaller_JobDetails jobdetails = new APICaller_JobDetails()
            {
                JobTypeList = GetJobTypes(JobTypeEnum.AR.ToString())
            };
            return View(jobdetails);
        }

        /// <summary>
        /// Creates the specified a p i_ caller_ job details.
        /// </summary>
        /// <param name="aPI_Caller_JobDetails">a p i_ caller_ job details.</param>
        /// <returns>ActionResult.</returns>
        /// <remarks>POST: API_Caller_JobDetails/Create
        /// To protect from overposting attacks, please enable the specific properties you want to bind to, for
        /// more details see http://go.microsoft.com/fwlink/?LinkId=317598.</remarks>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,url,Method,Job_Name,IsActive,CronExpression,JobType,Monitor,AdditionalHeaders")] APICaller_JobDetails aPI_Caller_JobDetails)
        {
            if (ModelState.IsValid)
            {
                API_Caller_JobDetails jobdetails = GetJobDetailObject(aPI_Caller_JobDetails);
                rep.InsertJobDetails(jobdetails);
                Helper.AddUpdateJob(jobdetails);

                return RedirectToAction("Index");
            }

            return View(aPI_Caller_JobDetails);
        }

        // GET: API_Caller_JobDetails/Edit/5
        /// <summary>
        /// Edits the specified identifier.
        /// GET: API_Caller_JobDetails/Edit/5
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>ActionResult.</returns>
        [DISAuthorize(Roles = "Admin")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            API_Caller_JobDetails aPI_Caller_JobDetails = rep.GetJobDetails_ByID((int)id);
            if (aPI_Caller_JobDetails == null)
            {
                return HttpNotFound();
            }
            else
            {
                DIS.Scheduler.Hangfire.Models.APICaller_JobDetails jobdetails = GetJobDetailModel(aPI_Caller_JobDetails);
                return View(jobdetails);

            }
        }

        /// <summary>
        /// Gets the job detail model.
        /// </summary>
        /// <param name="aPI_Caller_JobDetails">a p i_ caller_ job details.</param>
        /// <returns>APICaller_JobDetails.</returns>
        private APICaller_JobDetails GetJobDetailModel(API_Caller_JobDetails aPI_Caller_JobDetails)
        {
            DIS.Scheduler.Hangfire.Models.APICaller_JobDetails jobdetails = new APICaller_JobDetails()
            {
                url = aPI_Caller_JobDetails.url,
                id = aPI_Caller_JobDetails.id,
                Method = aPI_Caller_JobDetails.Method,
                Job_Name = aPI_Caller_JobDetails.Job_Name,
                IsActive = aPI_Caller_JobDetails.IsActive,
                CronExpression = aPI_Caller_JobDetails.CronExpression,
                JobType = aPI_Caller_JobDetails.JobType,
                Monitor = aPI_Caller_JobDetails.Monitor,
                AdditionalHeaders = aPI_Caller_JobDetails.AdditionalHeaders,
                JobTypeList = GetJobTypes(JobTypeEnum.AR.ToString())

            };
            return jobdetails;
        }

        /// <summary>
        /// Gets the job detail object.
        /// </summary>
        /// <param name="aPI_Caller_JobDetails">a p i_ caller_ job details.</param>
        /// <returns>API_Caller_JobDetails.</returns>
        private API_Caller_JobDetails GetJobDetailObject(APICaller_JobDetails aPI_Caller_JobDetails)
        {
            API_Caller_JobDetails jobdetails = new API_Caller_JobDetails()
            {
                url = aPI_Caller_JobDetails.url,
                id = aPI_Caller_JobDetails.id,
                Method = aPI_Caller_JobDetails.Method,
                Job_Name = aPI_Caller_JobDetails.Job_Name,
                IsActive = aPI_Caller_JobDetails.IsActive,
                CronExpression = aPI_Caller_JobDetails.CronExpression,
                JobType = aPI_Caller_JobDetails.JobType,
                Monitor=aPI_Caller_JobDetails.Monitor,
                AdditionalHeaders = aPI_Caller_JobDetails.AdditionalHeaders

            };
            return jobdetails;
        }

        /// <summary>
        /// Edits the specified a p i_ caller_ job details.
        /// </summary>
        /// <param name="aPI_Caller_JobDetails">a p i_ caller_ job details.</param>
        /// <returns>ActionResult.</returns>
        /// <remarks>POST: API_Caller_JobDetails/Edit/5
        /// To protect from overposting attacks, please enable the specific properties you want to bind to, for
        /// more details see http://go.microsoft.com/fwlink/?LinkId=317598.</remarks>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,url,Method,Job_Name,IsActive,CronExpression,JobType,Monitor,AdditionalHeaders")] APICaller_JobDetails aPI_Caller_JobDetails)
        {
            if (ModelState.IsValid)
            {
                API_Caller_JobDetails jobdetails = GetJobDetailObject(aPI_Caller_JobDetails);
                rep.UpdateJobDetails(jobdetails);
                Helper.AddUpdateJob(jobdetails);
                return RedirectToAction("Index");
            }
            return View(aPI_Caller_JobDetails);
        }

        // GET: API_Caller_JobDetails/Delete/5
        /// <summary>
        /// Deletes the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>ActionResult.</returns>
        [DISAuthorize(Roles = "Admin")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            API_Caller_JobDetails aPI_Caller_JobDetails = rep.GetJobDetails_ByID((int)id);
            if (aPI_Caller_JobDetails == null)
            {
                return HttpNotFound();
            }
            return View(aPI_Caller_JobDetails);
        }

        // POST: API_Caller_JobDetails/Delete/5
        /// <summary>
        /// Deletes the confirmed.
        /// POST: API_Caller_JobDetails/Delete/5
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>ActionResult.</returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            rep.DeleteJobDetails(id);
            return RedirectToAction("Index");
        }

        /// <summary>
        /// Gets the job types.
        /// </summary>
        /// <param name="SelectValue">The select value.</param>
        /// <returns>SelectList.</returns>
        SelectList GetJobTypes(string SelectValue)
        {
            var values = Util.GetEnumValues<JobTypeEnum>();

            List<SelectListItem> list = new List<SelectListItem>();

            foreach (JobTypeEnum item in values)
            {
                list.Add(new SelectListItem()
                {
                    Text = item.ToString(),
                    Value = item.ToString()
                });
            }
            return new SelectList(list, "Value", "Text", SelectValue); ;
        }

        /// <summary>
        /// Releases unmanaged resources and optionally releases managed resources.
        /// </summary>
        /// <param name="disposing">true to release both managed and unmanaged resources; false to release only unmanaged resources.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                rep.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
