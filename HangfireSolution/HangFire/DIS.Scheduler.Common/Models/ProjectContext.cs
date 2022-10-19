using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using DIS.Scheduler.Common.Models.Mapping;

namespace DIS.Scheduler.Common.Models
{
    public partial class ProjectContext : DbContext
    {
        static ProjectContext()
        {
            Database.SetInitializer<ProjectContext>(null);
        }

        public ProjectContext(string ConnectionString)
            : base(ConnectionString)
        {
        }

        public DbSet<API_Caller_JobDetails> API_Caller_JobDetails { get; set; }
        public DbSet<HangFire_Job_Status> HangFire_Job_Status { get; set; }
        public DbSet<Scheduler_Hangfire_Logs> Scheduler_Hangfire_Logs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new API_Caller_JobDetailsMap());
            modelBuilder.Configurations.Add(new HangFire_Job_StatusMap());
            modelBuilder.Configurations.Add(new Scheduler_Hangfire_LogsMap());
        }
    }
}
