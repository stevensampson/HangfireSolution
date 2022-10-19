using System;
using System.Collections.Generic;

namespace DIS.Scheduler.Common.Models
{
    public partial class API_Caller_JobDetails
    {
        public int id { get; set; }
        public string url { get; set; }
        public string Method { get; set; }
        public string Job_Name { get; set; }
        public bool IsActive { get; set; }
        public string CronExpression { get; set; }
        public string JobType { get; set; }
        public bool Monitor { get; set; }
        public string AdditionalHeaders { get; set; }
    }
}
