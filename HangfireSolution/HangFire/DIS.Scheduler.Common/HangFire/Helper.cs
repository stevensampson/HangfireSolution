// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : ssampson
// Created          : 03-24-2015
//
// Last Modified By : ssampson
// Last Modified On : 03-24-2015
// ***********************************************************************
// <copyright file="Helper.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using DIS.Scheduler.Common.Models;
using DIS.Scheduler.Common.Hangfire.Jobs;
using DIS.Scheduler.Common.HangFire.Jobs.Models;
using Hangfire;
using System;
using DIS.Scheduler.Common.HangFire.Jobs;

namespace DIS.Scheduler.Common.Hangfire
{
    /// <summary>
    /// Static Helper class for implementation of HangFire in DIS4.
    /// </summary>
    public static class Helper
    {

        /// <summary>
        /// Add, update or deletes job in the HangFire server.
        /// </summary>
        /// <param name="job">The job.</param>
        public static void AddUpdateJob(API_Caller_JobDetails job)
        {
            if (job.IsActive)
            {
                API_Caller jobdetail = new API_Caller
                {
                    Method = job.Method,
                    url = job.url,
                    id = job.Job_Name,
                    Monitor = job.Monitor,
                    AdditionalHeaders = job.AdditionalHeaders

                };

                JobTypeEnum type;

                if(job.JobType==null)
                {
                    type = JobTypeEnum.Default; //set to default
                }else
                {
                    type =  (JobTypeEnum) Enum.Parse(typeof(JobTypeEnum), job.JobType);

                }
                switch (type)
                {
                    case JobTypeEnum.AR:
                        RecurringJob.AddOrUpdate<AR>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.ATS:
                        RecurringJob.AddOrUpdate<ATS>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.EFT:
                        RecurringJob.AddOrUpdate<EFT>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.PositivePay:
                        RecurringJob.AddOrUpdate<PositivePay>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.ExpenseReports:
                        RecurringJob.AddOrUpdate<ExpenseReports>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.ExtractTarget:
                        RecurringJob.AddOrUpdate<ExtractTarget>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.Communication:
                        RecurringJob.AddOrUpdate<Communication>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    case JobTypeEnum.ServiceNow:
                        RecurringJob.AddOrUpdate<ServiceNow>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                    default:
                        RecurringJob.AddOrUpdate<Default>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                        break;
                }
            }
            else
            {
                RecurringJob.RemoveIfExists(job.Job_Name);
            }
        }

        /// <summary>
        /// Creates the once and done job.
        /// </summary>
        /// <param name="job">Job details.  See API_Caller_JobDetails class</param>
        /// <param name="Delay">The delay as a System.Timespan object</param>
        public static void CreateOnceAndDoneJob(API_Caller_JobDetails job, TimeSpan Delay)
        {
            API_Caller jobdetail = new API_Caller
            {
                Method = job.Method,
                url = job.url,
                id = job.Job_Name,
                Monitor=job.Monitor, 
                SharedKey = "",
                AdditionalHeaders = job.AdditionalHeaders
            };
            
            JobTypeEnum type;

            if (job.JobType == null)
            {
                type = JobTypeEnum.ATS; //set to default
            }
            else
            {
                type = (JobTypeEnum)Enum.Parse(typeof(JobTypeEnum), job.JobType);
            }

            switch (type)
            {
                case JobTypeEnum.AR:
                    BackgroundJob.Schedule<ATS>(x => x.Execute(jobdetail), Delay);
                    break;
                case JobTypeEnum.ATS:
                    BackgroundJob.Schedule<ATS>(x => x.Execute(jobdetail), Delay);
                    break;
                case JobTypeEnum.EFT:
                    BackgroundJob.Schedule<EFT>(x => x.Execute(jobdetail), Delay);

                    break;
                case JobTypeEnum.PositivePay:
                    BackgroundJob.Schedule<PositivePay>(x => x.Execute(jobdetail), Delay);

                    break;
                case JobTypeEnum.ExpenseReports:
                    BackgroundJob.Schedule<ExpenseReports>(x => x.Execute(jobdetail), Delay);
                    break;
                default:
                    RecurringJob.AddOrUpdate<ATS>(job.Job_Name, x => x.Execute(jobdetail), job.CronExpression, TimeZoneInfo.Local);
                    break;
            }
        }


    }
}
