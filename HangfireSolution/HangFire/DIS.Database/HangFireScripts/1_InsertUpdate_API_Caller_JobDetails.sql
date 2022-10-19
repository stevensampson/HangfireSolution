Use DIS4_Dev
Go
/****** Object:  Table [dbo].[API_Caller_JobDetails]    Script Date: 4/29/2015 12:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[API_Caller_JobDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[API_Caller_JobDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](200) NOT NULL,
	[Method] [varchar](20) NOT NULL,
	[Job_Name] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_API_Caller_JobDetails_IsActive]  DEFAULT ((1)),
	[CronExpression] [varchar](100) NULL,
	[JobType] [varchar](50) NULL,
 CONSTRAINT [PK_API_Caller_JobDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[API_Caller_JobDetails] ON 

INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (1, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP', N'Post', N'HREmployee_CreateDataFile_Daily', 1, N'30 5,8,10,12,14 * * MON,WED,THU,FRI', N'ATS')
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (2, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP', N'Post', N'HREmployee_CreateDataFile_Tuesday', 1, N'30 5 * * TUE', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (3, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP/SendToOutgoing', N'Post', N'HREmployee_SendToOutgoing', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (4, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP/SendViaADP', N'Post', N'HREmployee_SendviasFTP_Daily', 1, N'45 5,8,10,12,14 * * MON,WED,THU,FRI', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (5, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP/SendViaADP', N'Post', N'HREmployee_SendviasFTP_Tuesday', 1, N'45 5 * * TUE', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (6, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP', N'Get', N'HREmployee_RetrieveFromFTP', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (7, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADP', N'Put', N'HREmployee_ProcessConfirmations', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (8, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADPMaintenance', N'Get', N'HRMaintenance_RetrieveFromADP', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (9, N'http://disint-dev.cdicorp.com/v1/HR/Employee/api/ADPMaintenance', N'Put', N'HRMaintenance_ProcessMaintenance', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (10, N'http://disint-dev.cdicorp.com/v1/HR/Monitor/api/Employee', N'Get', N'HREmployee_MonitorEmployee', 1, N'0/5 * * * *', NULL)
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (11, N'http://dis-test.cdicorp.com:8181/Finance/EFT/api/EFTGreatPlains/TransferToOutGoing', N'Get', N'EFTGreatPlains_TransactionToOutgoing', 1, N'0/5 * * * *', N'EFT')
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (12, N'http://dis-test.cdicorp.com:8181/Finance/EFT/api/EFTGreatPlains/TransferViaSFTP', N'Get', N'EFTGreatPlains_TransferViaSFTP', 1, N' 0/5 * * * *', N'EFT')
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (13, N'http://dis-test.cdicorp.com:8181/Finance/PositivePay/api/PositivePayCanada/TransferToOutGoing', N'Get', N'PositivePayCananda_TransferToOutgoing', 1, N'0/5 * * * *', N'PositivePay')
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (14, N'http://dis-test.cdicorp.com:8181/Finance/AccountReconciliation/api/AccountReconciliationBlackLine/TransferToOutGoing', N'Get', N'AR_BlackLine_TransferToOutgoing', 1, N'0/2 * * * *', N'AR')
INSERT [dbo].[API_Caller_JobDetails] ([id], [url], [Method], [Job_Name], [IsActive], [CronExpression], [JobType]) VALUES (15, N'http://dis-test.cdicorp.com:8181/Finance/AccountReconciliation/api/AccountReconciliationBlackLine/TransferViaSFTP', N'Get', N'AR_Blackline_TransferViaSFTP', 1, N'0/2 * * * *', N'AR')
SET IDENTITY_INSERT [dbo].[API_Caller_JobDetails] OFF
