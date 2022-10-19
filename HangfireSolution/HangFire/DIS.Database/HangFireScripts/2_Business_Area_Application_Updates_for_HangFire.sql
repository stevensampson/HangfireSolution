Use DIS4_Dev
Go

if Not exists(select * from [dbo].[Business_Area] T 
			  where T.Business_Area_Name = 'Scheduler') 
begin
	Insert into dbo.Business_Area
	(Business_area_Name, BaseURL, SMTPServer)
	Values
	('Scheduler',	'http://disint-dev.cdicorp.com',	'smtp.cdicorp.com')
end

Go

Declare @BAID int

Select @BAID = BA_ID from Business_Area
Where Business_Area_Name = 'Scheduler'

Declare  @baa TABLE (
	[ApplicationName] [nvarchar](60) NOT NULL,
	[BA_ID] [int] NULL,
	[LogLevel] [varchar](50) NULL,
	[LogMethod] [varchar](50) NOT NULL,
	[RetryNo] [int] NULL,
	[LapseTime] [int] NULL,
	[TextLogLocation] [varchar](200) NULL,
	[SharedKey] [varchar](100) NULL,
	[EnableLog] [bit] NULL,
	[EnableNotification] [bit] NULL 
)

Insert into @baa
Select 'Scheduler.HangFire',	@BAID,	'Info',	'Database',	3,	10,	NULL,	'7rybzUylVLX3j6ZMI6V3',	1,	NULL Union
Select 'Scheduler.Quartz',	@BAID,	'Info',	'Database',	3,	10,	'd:\DataIntegrationServices4\v1\HR\Logs',	'7rybzUylVLX3j6ZMI6V3',	1,	1

Insert into [dbo].[Business_Area_Application]
([ApplicationName],	[BA_ID],[LogLevel],	[LogMethod],[RetryNo],[LapseTime],[TextLogLocation],[SharedKey],[EnableLog],[EnableNotification])
Select * from @baa b
Where 
	NOT Exists (Select * from Business_Area_Application a
					Where b.ApplicationName = a.ApplicationName)


