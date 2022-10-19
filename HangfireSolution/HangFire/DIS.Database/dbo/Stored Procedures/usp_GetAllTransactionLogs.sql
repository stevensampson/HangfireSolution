

--Declare @Application varchar(100)
--Declare @EventLevel varchar(20)
--Declare @Startdate datetime
--Declare @Enddate datetime

--Set @Application = 'ALL'
--Set @EventLevel = 'Info'
--Set @Startdate  = '2015-01-13T13:00:00'
--Set @Enddate  = '2015-01-13T15:00:00'

--exec [dbo].[usp_GetAllTransactionLogs] @Application, @EventLevel, @Startdate, @Enddate

CREATE Procedure [dbo].[usp_GetAllTransactionLogs]
@Application varchar(100) = 'All',
@EventLevel varchar(20) = 'All',
@Startdate datetime = '2014-01-13T13:00:00',
@Enddate datetime = '2115-01-13T15:00:00'
As
DECLARE @TN VARCHAR(100);
Declare @sql NVARCHAR(max);
Declare @len int

Create Table #Logs  
(
	[LogTableName] [varchar](200),
	[EventCode] [int] NULL,
	[ApplicationName] [varchar](200) NULL,
	[EventDate] [datetime] NOT NULL,
	[EventLevel] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[MachineName] [nvarchar](100) NOT NULL,
	[EventMessage] [nvarchar](max) NULL,
	[EventSource] [nvarchar](100) NULL,
	[EventClass] [nvarchar](100) NULL,
	[ErrorMethod] [nvarchar](max) NULL,
	[InsertErrorMessage] [nvarchar](max) NULL,
	[TransactionID] [varchar](50) NULL,
)

DECLARE C CURSOR LOCAL FAST_FORWARD
  FOR SELECT Table_Name FROM information_schema.tables
Where Table_name Like '%Logs%';

OPEN C;

FETCH NEXT FROM C INTO @TN;
WHILE (@@FETCH_STATUS = 0)
BEGIN 
    PRINT @TN;

	if (@Application = 'All') or (CHARINDEX(@Application,@TN ) > 0)
		Begin
			SET @sql = N'Insert into #Logs '
			SET @sql = @sql + N'Select '''  + @TN + ''', a.EventCode, b.ApplicationName, a.EventDate, a.EventLevel, a.UserName, a.MachineName, a.EventMessage, a.EventSource,			a.EventClass, a.ErrorMethod, a.InsertErrorMessage, a.TransactionID from dbo.' + @TN
			Set @sql = @sql + ' AS a INNER JOIN
                         Business_Area_Application AS b ON a.ApplicationID = b.ID '
			Set @sql = @sql + ' where a.eventdate between ''' + Cast(@Startdate as varchar(50)) + ''' and ''' + Cast(@Enddate as varchar(50)) + '''' 

					--select @sql;
			EXEC sys.sp_executesql @sql;
			PRINT '---------------------------------------------------------------------------------------'
		End

    FETCH NEXT FROM C INTO @TN;
END 
CLOSE C;
DEALLOCATE C;

if @Eventlevel = 'All'
	select *
	from #logs l 
	order by EventDate desc
Else
	select *
	from #logs l 
	Where l.EventLevel = @EventLevel
	order by EventDate desc

Drop table #Logs