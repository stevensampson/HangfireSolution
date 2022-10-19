Use DIS4_Dev
Go

Declare @BAID int

Select @BAID = BA_ID from Business_Area
Where Business_Area_Name = 'Security'

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
Select 'Security.Encryption',	@BAID,	'Info',	'Database',	3,	10,	NULL,	'7rybzUylVLX3j6ZMI6V3',	1,	NULL

Insert into [dbo].[Business_Area_Application]
([ApplicationName],	[BA_ID],[LogLevel],	[LogMethod],[RetryNo],[LapseTime],[TextLogLocation],[SharedKey],[EnableLog],[EnableNotification])
Select * from @baa b
Where 
	NOT Exists (Select * from Business_Area_Application a
					Where b.ApplicationName = a.ApplicationName)

Declare @AppID int

Select @AppID = [Id] from [dbo].[Business_Area_Application]
Where [ApplicationName] = 'Security.Encryption'


Insert into [dbo].[Business_Area_Application_Resource]
(Application_ID, Process_Name,	[Description],	AccessAccount,	AccessPassword,	ResourceDirectory)
Values
(@AppID,	'Security.Encryption.Manager',	'Encryption/Decryption Tools',	NULL,	NULL,	NULL)
