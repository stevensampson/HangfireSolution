using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DIS.Scheduler.Common.Models.Mapping
{
    public class Scheduler_Hangfire_LogsMap : EntityTypeConfiguration<Scheduler_Hangfire_Logs>
    {
        public Scheduler_Hangfire_LogsMap()
        {
            // Primary Key
            this.HasKey(t => t.Log_Id);

            // Properties
            this.Property(t => t.EventLevel)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.UserName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.MachineName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.EventSource)
                .HasMaxLength(100);

            this.Property(t => t.EventClass)
                .HasMaxLength(100);

            this.Property(t => t.TransactionID)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Scheduler_Hangfire_Logs");
            this.Property(t => t.Log_Id).HasColumnName("Log_Id");
            this.Property(t => t.ApplicationID).HasColumnName("ApplicationID");
            this.Property(t => t.EventDate).HasColumnName("EventDate");
            this.Property(t => t.EventLevel).HasColumnName("EventLevel");
            this.Property(t => t.EventCode).HasColumnName("EventCode");
            this.Property(t => t.UserName).HasColumnName("UserName");
            this.Property(t => t.MachineName).HasColumnName("MachineName");
            this.Property(t => t.EventMessage).HasColumnName("EventMessage");
            this.Property(t => t.EventSource).HasColumnName("EventSource");
            this.Property(t => t.EventClass).HasColumnName("EventClass");
            this.Property(t => t.EventMethod).HasColumnName("EventMethod");
            this.Property(t => t.InsertErrorMessage).HasColumnName("InsertErrorMessage");
            this.Property(t => t.TransactionID).HasColumnName("TransactionID");
        }
    }
}
