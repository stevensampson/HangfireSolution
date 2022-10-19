// ***********************************************************************
// Assembly         : DIS.Scheduler.HangFire
// Author           : ssampson
// Created          : 04-14-2015
//
// Last Modified By : ssampson
// Last Modified On : 04-14-2015
// ***********************************************************************
// <copyright file="HomeController.cs" company="Microsoft">
//     Copyright © Microsoft 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Web.Mvc;


namespace DIS.Scheduler.HangFire.Controllers
{
    /// <summary>
    /// Class HomeController.
    /// </summary>
    public class HomeController : Controller
    {
        /// <summary>
        /// Indexes this instance.
        /// </summary>
        /// <returns>ActionResult.</returns>
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Abouts this instance.
        /// </summary>
        /// <returns>ActionResult.</returns>
        public ActionResult About()
        {
            ViewBag.Message = "Hangfire Application for DIS 5.9.";

            return View();
        }

        /// <summary>
        /// Contacts this instance.
        /// </summary>
        /// <returns>ActionResult.</returns>
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}