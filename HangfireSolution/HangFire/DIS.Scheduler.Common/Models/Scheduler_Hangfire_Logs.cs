using System;
using System.Collections.Generic;

namespace DIS.Scheduler.Common.Models
{
    public partial class Scheduler_Hangfire_Logs
    {
        public int Log_Id { get; set; }
        public int ApplicationID { get; set; }
        public System.DateTime EventDate { get; set; }
        public string EventLevel { get; set; }
        public int EventCode { get; set; }
        public string UserName { get; set; }
        public string MachineName { get; set; }
        public string EventMessage { get; set; }
        public string EventSource { get; set; }
        public string EventClass { get; set; }
        public string EventMethod { get; set; }
        public string InsertErrorMessage { get; set; }
        public string TransactionID { get; set; }
    }
}
