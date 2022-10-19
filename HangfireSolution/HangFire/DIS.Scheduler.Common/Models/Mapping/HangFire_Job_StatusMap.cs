using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DIS.Scheduler.Common.Models.Mapping
{
    public class HangFire_Job_StatusMap : EntityTypeConfiguration<HangFire_Job_Status>
    {
        public HangFire_Job_StatusMap()
        {
            // Primary Key
            this.HasKey(t => t.Job_ID);

            // Properties
            this.Property(t => t.Job_ID)
                .IsRequired()
                .HasMaxLength(128);

            this.Property(t => t.Status)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Jobname)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("HangFire_Job_Status");
            this.Property(t => t.Job_ID).HasColumnName("Job_ID");
            this.Property(t => t.DateCreated).HasColumnName("DateCreated");
            this.Property(t => t.Datedcompleted).HasColumnName("Datedcompleted");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Jobname).HasColumnName("Jobname");
        }
    }
}
