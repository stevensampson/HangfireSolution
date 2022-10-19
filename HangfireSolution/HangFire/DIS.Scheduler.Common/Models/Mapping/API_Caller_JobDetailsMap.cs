using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DIS.Scheduler.Common.Models.Mapping
{
    public class API_Caller_JobDetailsMap : EntityTypeConfiguration<API_Caller_JobDetails>
    {
        public API_Caller_JobDetailsMap()
        {
            // Primary Key
            this.HasKey(t => t.id);

            // Properties
            this.Property(t => t.url)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Method)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Job_Name)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.CronExpression)
                .HasMaxLength(100);

            this.Property(t => t.JobType)
                .HasMaxLength(100);

            this.Property(t => t.AdditionalHeaders)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("API_Caller_JobDetails");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.url).HasColumnName("url");
            this.Property(t => t.Method).HasColumnName("Method");
            this.Property(t => t.Job_Name).HasColumnName("Job_Name");
            this.Property(t => t.IsActive).HasColumnName("IsActive");
            this.Property(t => t.CronExpression).HasColumnName("CronExpression");
            this.Property(t => t.JobType).HasColumnName("JobType");
            this.Property(t => t.Monitor).HasColumnName("Monitor");
            this.Property(t => t.AdditionalHeaders).HasColumnName("AdditionalHeaders");
        }
    }
}
