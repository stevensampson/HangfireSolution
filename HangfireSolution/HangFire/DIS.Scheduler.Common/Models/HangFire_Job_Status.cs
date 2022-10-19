using System;
using System.Collections.Generic;

namespace DIS.Scheduler.Common.Models
{
    public partial class HangFire_Job_Status
    {
        public string Job_ID { get; set; }
        public System.DateTime DateCreated { get; set; }
        public Nullable<System.DateTime> Datedcompleted { get; set; }
        public string Status { get; set; }
        public string Jobname { get; set; }
    }
}
