
--select * from [dbo].[fn_GetAllTransactionLogs]()

CREATE Function [dbo].[fn_GetAllTransactionLogs]
(
)
returns @results table
(
	[LogTableName] [varchar](200),
	[ApplicationName] [varchar](200) ,
	[EventDate] [datetime] ,
	[EventLevel] [nvarchar](100) ,
	[UserName] [nvarchar](100) ,
	[MachineName] [nvarchar](100) ,
	[EventMessage] [nvarchar](max) ,
	[EventSource] [nvarchar](100) ,
	[EventClass] [nvarchar](100) ,
	[ErrorMethod] [nvarchar](max) ,
	[InsertErrorMessage] [nvarchar](max) ,
	[TransactionID] [varchar](50) 
)

As
begin
DECLARE @TN VARCHAR(100);
Declare @sql NVARCHAR(max);

declare @logs Table   
(
	[LogTableName] [varchar](200),
	[ApplicationID] [int] ,
	[EventDate] [datetime] ,
	[EventLevel] [nvarchar](100) ,
	[UserName] [nvarchar](100) ,
	[MachineName] [nvarchar](100) ,
	[EventMessage] [nvarchar](max) ,
	[EventSource] [nvarchar](100) ,
	[EventClass] [nvarchar](100) ,
	[ErrorMethod] [nvarchar](max) ,
	[InsertErrorMessage] [nvarchar](max) ,
	[TransactionID] [varchar](50) 
)

insert into @logs
SELECT    'ADP_Maintenance_Logs' as tablename,    ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID
FROM            ADP_Maintenance_Logs
union all
SELECT     'ADP_Scheduler_Logs' as tablename,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[ADP_Scheduler_Logs]
union all
SELECT    'Finance_Clients_Logs' as tablename ,   ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Finance_Clients_Logs]
union all
SELECT    'ADP_Scheduler_Logs' as tablename  ,  ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Finance_Employee_Logs]
union all
SELECT     'Finance_SecondaryAssignment_Logs' as tablename ,  ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Finance_SecondaryAssignment_Logs]
union all
SELECT     'Finance_SupplierAssociate_Log' as tablename ,  ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Finance_SupplierAssociate_Logs]
union all
SELECT    'Finance_Transaction_Log' as tablename ,   ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Finance_Transaction_Logs]
union all
SELECT    'HR_Employee_Logs' as tablename ,   ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[HR_Employee_Logs]
union all
SELECT   'HR_Monitor_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[HR_Monitor_Logs]
union all
SELECT   'HR_Transaction_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[HR_Transaction_Logs]
union all
SELECT   'QTRZ_Scheduler_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[QTRZ_Scheduler_Logs]
union all
SELECT   'Security_Authentication_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Security_Authentication_Logs]
union all
SELECT    'Staffing_Candidate_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_Candidate_Logs]
union all
SELECT    'Staffing_Clients_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_Clients_Logs]
union all
SELECT   'Staffing_Employee_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_Employee_Logs]
union all
SELECT    'Staffing_SecondaryAssignment_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_SecondaryAssignment_Logs]
union all
SELECT    'Staffing_SupplierAssociate_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_SupplierAssociate_Logs]
union all
SELECT    'Staffing_Transaction_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[Staffing_Transaction_Logs]
union all
SELECT   'UKFinance_Logs' as tablename ,      ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[UKFinance_Logs]
union all
SELECT    'UKStaffing_Logs' as tablename ,     ApplicationID, EventDate, EventLevel, UserName, MachineName, EventMessage, EventSource, EventClass, ErrorMethod, InsertErrorMessage, TransactionID from [dbo].[UKStaffing_Logs]
	
	Insert into @results
	select 
	l.LogTableName,
	baa.ApplicationName, 
			l.EventDate,
		l.EventLevel,
		l.UserName  ,
		l.MachineName,
		l.EventMessage  ,
		l.EventSource,
		l.EventClass,
		l.ErrorMethod,
		l.InsertErrorMessage  ,
		l.TransactionID 
	from @logs l 
	Inner Join [dbo].[Business_Area_Application] baa On l.ApplicationID = baa.[Id]
	order by EventDate desc

	return
End