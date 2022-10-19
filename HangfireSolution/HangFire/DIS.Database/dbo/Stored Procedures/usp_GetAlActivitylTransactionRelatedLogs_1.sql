
--exec [dbo].[usp_GetAlActivitylTransactionRelatedLogs] '173f0284-7fd8-40e6-9748-c367c01cb98c', 'Staffing.Client.Data.Post'

CREATE Procedure [dbo].[usp_GetAlActivitylTransactionRelatedLogs]
@TransactionID varchar(50),
@API_Name varchar(200)

As
DECLARE @TN VARCHAR(100);
Declare @sql NVARCHAR(max);

Create Table #Logs  
(
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

DECLARE C CURSOR LOCAL FAST_FORWARD
  FOR SELECT Table_Name FROM information_schema.tables
Where Table_name Like '%Logs%';

OPEN C;

FETCH NEXT FROM C INTO @TN;
WHILE (@@FETCH_STATUS = 0)
BEGIN 
    PRINT @TN;
	SET @sql = N'Insert into #Logs '
	SET @sql = @sql +  N'Select [ApplicationID], [EventDate] ,	[EventLevel] ,	[UserName]  ,	[MachineName],[EventMessage],[EventSource] ,[EventClass],[ErrorMethod],[InsertErrorMessage] ,[TransactionID] from dbo.' + @TN
	SET @sql = @sql + ' Where TransactionID = ''' + @TransactionID + ''''
	set @sql = @sql + ' And EventClass = ''' + @API_Name + ''''
    EXEC sys.sp_executesql @sql;
    FETCH NEXT FROM C INTO @TN;
END 
CLOSE C;
DEALLOCATE C;

select baa.ApplicationName, 
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
from #logs l 
Inner Join [dbo].[Business_Area_Application] baa On l.ApplicationID = baa.[Id]
order by EventDate

Drop table #Logs