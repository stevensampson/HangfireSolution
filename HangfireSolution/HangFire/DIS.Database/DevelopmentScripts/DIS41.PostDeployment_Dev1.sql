/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
			   SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [DIS4_Dev]
GO


declare @enableTable Table (ApplicationName varchar(60), EnableLog bit, EnableNotification bit)

Insert into @enableTable
Select 'Finance.Client',	1,	NULL Union All
Select 'Finance.Transaction',	1,	1 Union All
Select 'Security.Authentication',	1,	1 Union All
Select 'Staffing.Client',	1,	1 Union All
Select 'UKFinance.Transaction',	1,	1 Union All
Select 'UKStaffing.Transaction',	1,	1 

Update DIS4_Dev.[dbo].[Business_Area_Application]
Set EnableLog = a.EnableLog,
	EnableNotification = a.EnableNotification
From @enableTable a Inner Join DIS4_dev.[dbo].[Business_Area_Application] b
		on a.ApplicationName = b.ApplicationName
Where a.EnableLog Is Not Null

Go
SET IDENTITY_INSERT [dbo].[EventLevels] ON 

INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (1, N'FATAL', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (2, N'ERROR', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (3, N'FAIL', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (4, N'WARN', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (5, N'INFO', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (6, N'DEBUG', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (9, N'SUCCESS', 1)
SET IDENTITY_INSERT [dbo].[EventLevels] OFF
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1001, N'NULL_OBJECT', N'When a nul object reference error will be there.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1002, N'API_REQUEST_NO_JSONDATA', N'No json data found.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1003, N'API_REQUEST_INVALID_JSONDATA', N'Json data is invalid.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1004, N'JSON_SCHEMA_VALIDATION_ERROR', N'Error occured when parsing json data.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1005, N'JSON_SCHEMA_FILE_NOTFOUND', N'Json schema  file  location not found in solution.', 0)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1006, N'API_RESPONSE_SUCCESS', N'One API sucessfully communicate with another API.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1007, N'Test Suvankar', N'This for testing', 0)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1008, N'HTTP_REQUEST_REJECTED', N'Http request is rejected', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1009, N'JSON_SCHEMA_VALIDATION_BEGINS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1010, N'JSON_SCHEMA_VALIDATION_STATUS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1011, N'JSON_SCHEMA_VALIDATION_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1012, N'GENERAL_INFO', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1013, N'JSON_PARSING_STATUS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1014, N'JSON_PARSING_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1015, N'INCOMING_TRANSACTION_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1016, N'ACTIVITY_PROCESSING_FAILED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1017, N'BULLHORN_UPDATE_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1018, N'HTTP_OUTGOING_REQUEST_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1019, N'HTTP_OUTGOING_REQUEST_FAILED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1030, N'FILE_NOT_FOUND', N'file not Fount', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1040, N'FILE_FOUND', N'file found', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1041, N'HTTP_HEADER_ENCR_NOKEY', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1042, N'HTTP_ENCR_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1043, N'HTTP_KEY_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1044, N'HTTP_START_VALIDATION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1045, N'HTTP_LOG_KEYS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1046, N'HTTP_VALIDATION_STATUS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1047, N'HTTP_REQUEST_ACCEPTED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1048, N'HTTP_RESPONSE_INFO', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1049, N'API_RESPONSE_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1050, N'HTTP_OUTGOING_REQUSERT_SUCESSFULL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1051, N'CRYPTO_BITETOBASE64', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1052, N'CRYPTO_INVALID_BASE64_STRING', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1053, N'CRYPTO_DECR_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1054, N'CONFIG_OBJECT_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1055, N'CONFIG_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1056, N'JSON_PARSE_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1057, N'JSON_DESERIALIZE_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1058, N'JSON_INVALID_JSONDATA', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1059, N'JSON_SCHEMA_VALIDATION_ERROR_WITHMESSAGE', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1060, N'SOAP_SERVICE_RESPONSE_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1061, N'SOAP_SERVICE_RESPONSE_SUCCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1062, N'SOAP_SERVICE_RESPONSE_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1063, N'RULE_SERVICE_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1064, N'RULE_APPLIEDFOR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1065, N'RULE_PROPERTY_NOTFOUND', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1066, N'RULE_NAME_NOTFOUND', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1067, N'SP_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1068, N'DB_GP_PAM_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1069, N'DB_ACTIVITY_INSERT_SUCSESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1070, N'DB_FAILED_TO_INSERT_DIS_TRANSACTIONID', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1071, N'DB_ACTIVITY_ID_NOT_FOUND', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1072, N'DB_ACTIVITY_INSERT_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1073, N'DB_ACTIVITY_UPDATE_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1074, N'DB_ACTIVITY_UPDATE_SUCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1075, N'CSV_PROCESSING_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1076, N'CSV_FILE_CREATION_FAILED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1077, N'NOTIFICATION_MAIL_SEND_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1078, N'NOTIFICATION_ERROR', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1079, N'SCHEDULER_STANDBY', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1080, N'SCHEDULER_OFF', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1081, N'SCHEDULER_SHUTTINGDOWN', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1082, N'SCHEDULER_TRIGGER_FINALIZED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1083, N'SCHEDULER_TRIGGER_DELETED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1084, N'SCHEDULER_JOB_RESUMED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1085, N'SCHEDULER_JOB_PAUSED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1086, N'SCHEDULER_JOB_DELETED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1087, N'SCHEDULER_JOB_STOPPED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1088, N'SCHEDULER_JOB_STARTED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1089, N'SCHEDULER_JOB_STARTING', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1090, N'SCHEDULER_JOB_FINISHED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1091, N'SCHEDULER_JOB_FLUSHED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1092, N'UNKNOWN', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1093, N'PROPERTY_VALIDATION_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1095, N'TASK_RETRYING', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1096, N'TASK_INVALID_PROPERTY', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1097, N'PROCESS_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1098, N'TASK_WRONG_FLAG', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1099, N'ACTIVITY_PROCESSING_START', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1100, N'ACTIVITY_PROCESSING_SUCCESSFUL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1101, N'ACTIVITY_PROCESSING_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1102, N'ACTIVITY_PROCESSING_INFO', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1103, N'ACTIVITY_CREATING', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1104, N'ACTIVITY_UPDATING', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1105, N'PROCESS_START', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1106, N'PROCESS_ABORT', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1107, N'PROCESS_FAILED', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1108, N'PROCESS_SUCESSFULL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1109, N'PROCESS_END', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1110, N'OBJECT_VALIDATION_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1111, N'GENERAL_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1112, N'HTTP_KEY_OK', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1113, N'PRINCIPAL_VALIDATING', N'', 0)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1114, N'PRINCIPAL_VALIDATION_ERROR', N'', 0)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1115, N'OBJECT_VALIDATION_SUCCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1117, N'LOGIN', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1118, N'LOGOUT', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1119, N'CRYPTO_STRINGTOBYTE', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1120, N'LOGIN_SUCCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1121, N'LOGIN_FAILED', N'', 1)
GO
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1122, N'TASK_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1123, N'DB_PAM_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1124, N'DB_PAM_SUCCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1125, N'DB_GP_PAM_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1203, N'LOGIN_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1204, N'CRYPTO_ENCR_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1205, N'CRYPTO_EXCEPTION', N'', 0)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1206, N'CRYPTO_SUCCESS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1207, N'CRYPTO_DETAILS', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1209, N'CRYPTO_FAILED', N'', 1)
SET IDENTITY_INSERT [dbo].[EventWorkflows] ON 

INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (6, 1005, 4, N'Log', N'Json schema file location not found.', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (14, 1004, 2, N'Log', N'Message : <Message>
FileLocation :<FileLocation>
JsonData : <JsonData>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (17, 1001, 1, N'Log', N'test
hello
this is newline formatting test
<ObjectName>', 1, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (21, 1040, 5, N'Log', N'Test location huraa   ..... <FileLocation> ... json data : <JsonData> :P', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (22, 1007, 2, N'Log', N'test <name>', 3, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (23, 1008, 3, N'Log', N'Http request is rejected Message = <Message> Jsondata = <JsonData> Exception = <Exception> FileLocation = <FileLocation>
', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (24, 1009, 5, N'Log', N'Json schema validation strats. 
Jsondata : <JsonData>;
FileLocation : <FileLocationFileLocation>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (25, 1010, 6, N'Log', N'Json schema validation status : <Status>
Message : <Message>
JsonData : <JsonData>
FileLocation :<FileLocation>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (26, 1011, 2, N'Log', N'Exception during json schema validation. 
Exception  : <Exception>
JsonData : <JsonData>
FileLocation : <FileLocation>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (28, 1013, 6, N'Log', N'Json parsing status : <Status>
JsonData : <JsonData>
', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (29, 1014, 2, N'Log', N'Exception occured during json data parsing.
Exception : <Exception>
JsonData : <Jsondata>
FileLocation : <FileLocation>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (30, 1015, 6, N'Log', N'BullhornTransactionID: <BullhornTransactionID>;
ClientID : <ClientID>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (31, 1016, 3, N'Log', N'Activiy processing has been failed.
Message : <Message>;
Exception : <Exception>;
BHTransactionID : <BullhornTransactionID >;
DISTranactionID  : <DISTransactionID >;
ActivityID : <ActivityID>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (32, 1016, 3, N'Out', N'Activity processing has been failed.
Exception : <Exception>
BHTransactionID : <BullhornTransactionID >
DISTranactionID  : <DISTransactionID >', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (33, 1017, 5, N'Log', N'Bullhorn Update Details: 
URL : <URL>
Key3 : <Sharedkey> 
DISTransactionID : <DISTransactionID> 
BullhornTransactionID : <BullhornTransactionID>
', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (34, 1017, 5, N'Out', N'Bullhorn Update status : <Status>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (35, 1018, 6, N'Log', N'Http out going request details : 
SharedKey : <Sharedkey> ;
DISTransactionID : <DISTransactionID> ;
URL : <URL>;
JsonData : <JsonData>;
RetryRank :<RetryRank>
Referrer : <Referrer>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (36, 1019, 3, N'Log', N'Http Outgoing request has failed for Finance rule api.
URL : <URL> ;
Jsondata : <JsonData>;
Sharedkey : <Sharedkey> ;
DISTransactionID : <DISTransactionID>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (37, 1019, 3, N'Out', N'Failed to communicate with finance rule api.', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (38, 1113, 5, N'Log', N'Validating credentials from active directory. Server name : <ServerName>', 1058, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (39, 1114, 2, N'Log', N'Active directory authentication exception. Server name : <ServerName> , Exception : <Exception>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (40, 1115, 9, N'Log', N'Valid <ObjectName> found. value : <ObjectValue>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (41, 1110, 4, N'Log', N'ObjectName : <ObjectName>
ObjectExpectedValue : <ObjectExpectedValue>
ObjectValue : <ObjectValue>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (42, 1012, 5, N'Log', N'<Message>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (43, 1113, 6, N'Log', N'Authenticating user from Windows server. Server name : <ServerName> , Username : <Username>, Password : <Password>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (44, 1114, 3, N'Log', N'Windows authentication failed. Server name : <ServerName> ', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (45, 1117, 5, N'Log', N'<Username> is logging in with password : <Password>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (46, 1120, 5, N'Log', N'<username> logged in successfully.', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (47, 1121, 5, N'Log', N'Login failed for user : <Username> , password : <Password>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (48, 1101, 2, N'Log', N'Exception occured during Activity Processing
DISTransactionID : <DISTransactionID>;
Exception : <Exception>;
RetryCount : <RetryCount>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (49, 1100, 9, N'Log', N'Activity processing has been successful.
ActivityID : <ActivityID>;
DISTransactionID : <DISTransactionID>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (50, 1099, 6, N'Log', N'Activity processing has been Started
DISTransactionID : <DISTransactionID>
RetryCount : <RetryCount>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (51, 1104, 6, N'Log', N'Activity process Updating
DISTransactionID : <DISTransactionID>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (52, 1054, 2, N'Log', N'Message : <Message>
KeyName : <KeyName>
HttpCode : <HttpCode>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (53, 1043, 2, N'Log', N'Message : <Message>
KeyName : <KeyName>
HttpCode : <HttpCode>
ObjectValue : <ObjectValue>
', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (54, 1112, 9, N'Log', N'Message : <Message>
KeyName : <KeyName>
HttpCode : <HttpCode >
ObjectValue : <ObjectValue>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (55, 1118, 5, N'Log', N'Logging out from session.
Message : <Message>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (56, 1203, 6, N'Log', N'User login details ... Username :  <Username>, Pasword : < Password>, Domain : <DomainName>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (57, 1054, 1, N'Log', N'Invalid configuration  for : <ObjectName> . Value : <ObjectValue> , Excepted : <ObjectExpectedValue>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (58, 1205, 2, N'Log', N'Exception in crypto process , Exception : <Exception>
Message : <message>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (59, 1047, 5, N'Log', N'Message : <Message>
JsonData : <JsonData>
FileLocation: <FileLocation>', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (60, 1122, 2, N'Log', N'Unhandle Exception occured during Task execution :
Exception : <Exception >', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (61, 1206, 9, N'Log', N'<ObjectProcessingModuleName> process was successful for value : <ObjectValue>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (62, 1123, 3, N'Log', N'Message : <Message>
ErrorCode : <ErrorCode>
ErrorState : <ErrorState>
', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (63, 1124, 9, N'Log', N'Message : <Message>
ErrorCode : <ErrorCode>
ErrorState : <ErrorState>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (64, 1207, 5, N'Log', N'Process <ObjectProcessingModuleName> for value : <Value>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (65, 1209, 3, N'Log', N'<ObjectProcessingModuleName> process failed for <ObjectValue>', 27, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (66, 1068, 2, N'Log', N'Exception : <Exception>
Message : <Message>
ErrorCode : <ErrorCode>
ErrorState : <ErrorState>
', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (67, 1125, 6, N'Log', N'Message : <Message>
ErrorCode : <ErrorCode>
ErrorState : <ErrorState>
DISTransactionID : <DISTransactionID>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (68, 1006, 9, N'Log', N'Status : <Status>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (69, 1049, 3, N'Log', N'Status : <Status>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (70, 1111, 2, N'Log', N'Exception : <Exception>
 Message : <Message>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (71, 1018, 6, N'Log', N'<URL> : URL
Sharedkey : <Sharedkey>
DISTransactionID : <DISTransactionID>
JsonData : <JsonData>
Referrer :<Referrer>', 4, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (72, 1013, 5, N'Log', N'Status : <Status>
Exception : <Exception>
JsonData : <JsonData>
FileLocation : <FileLocation>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (73, 1108, 9, N'Log', N'Successfully inserted in to GP database.
', 2, 1)
SET IDENTITY_INSERT [dbo].[EventWorkflows] OFF
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Config] ON 

INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (4, 2, N'LogLocation', N'~/JsonSchemaFiles/ATSUSClientSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (5, 2, N'RequestJsonSchemaLocation', N'~/JsonSchemaFiles/ATSUSClientSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (6, 2, N'GPCustomerJsonSchemaLocation', N'~/JsonSchemaFiles/GPCustomerSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (7, 2, N'RuleSetName', N'FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (8, 2, N'GPRuleSet', N'BusinessRuleInGPData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (10, 2, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (11, 2, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (12, 2, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (13, 2, N'RuleSetStoreConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (14, 2, N'GP10_51DB', N'server=PHL17CDIVGPPS51;database=CDI01;Integrated Security=True', CAST(0x0000A432004AB17C AS DateTime), CAST(0x0000A441006297AD AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (17, 2, N'GPDBAdoConnStr', N'server=PHL17CDIVGPPS51;database=CDI01;Integrated Security=True', CAST(0x0000A432004AB17C AS DateTime), CAST(0x0000A4410062B1D1 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (18, 6, N'RuleSchemaPut', N'~/JsonSchemaFiles/JSONSchemaForSupplierAssociateRulesPut.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (19, 6, N'RuleSchemaPost', N'~/JsonSchemaFiles/JSONSchemaForSupplierAssociateRulesPost.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (20, 6, N'GPSchemaPut', N'~/JsonSchemaFiles/GPEmployeePutJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (21, 6, N'GPSchemaPost', N'~/JsonSchemaFiles/GPEmployeePostJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (22, 6, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (23, 6, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (24, 6, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (25, 6, N'FinancialDataBaseRuleSetNamePut', N'FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (26, 6, N'GPRuleSetNamePut', N'BusniessRuleInSupplierAssociateGpData  ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (27, 6, N'RequiredFieldRuleSetNamePut', N'BusniessRuleInSupplierAssociateRequriedField_Put ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (28, 6, N'ValidateRequiredFieldRuleSetNamePut', N'BusniessRuleInValidateSupplierAssociateRequriedField_Put    ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (29, 6, N'FinancialDataBaseRuleSetNamePost', N'FinancialDatabase  ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (30, 6, N'GPRuleSetNamePost', N'BusniessRuleInSupplierAssociateGpData ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (31, 6, N'RequiredFieldRuleSetNamePost', N'BusniessRuleInSupplierAssociateRequriedField_Post ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (32, 6, N'ValidateRequiredFieldRuleSetNamePost', N'BusniessRuleInValidateSupplierAssociateRequriedField_Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (34, 6, N'RuleSetStoreConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (35, 6, N'GPDBAdoConnStr', N'server=PHL17CDIVGPPS51;database=CDI01;Integrated Security=True;Connection Timeout=30;Min Pool Size=20; Max Pool Size=200;', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (41, 1, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB17C AS DateTime), CAST(0x0000A442007712A5 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (42, 1, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), CAST(0x0000A4410041E1EB AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (43, 1, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), CAST(0x0000A4410042A2C0 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (47, 7, N'RequestJsonSchemaLocation', N'~/bin/JsonSchemaFiles/PlacementJSONSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (48, 7, N'GPCustomerJsonSchemaLocation', N'~/JsonSchemaFiles/GPCustomerSchemaForModifiedSP.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (49, 7, N'HREmployeePostADPRuleSetName', N'BusniessRuleInADPPostData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (50, 7, N'HREmployeeRuleSet', N'BusniessRuleInADPPutData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (51, 7, N'FinanceGPEmployeeRuleSetName', N'BusniessRuleInGPEmployeeRulesData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (54, 7, N'ADPUpdateRuleSet', N'BusniessRuleInADPUpdateData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (55, 7, N'HREmployeeADPRuleSet', N'BusinessRuleInADPData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (56, 7, N'FinancialDatabaseRuleSetName', N'FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (60, 7, N'FinancialDatabaseRuleSet', N' FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (61, 7, N'PlacementReqriedFieldRuleSetName_Post', N'BusinessRuleInEmployeeReqriedField_Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (62, 7, N'ValidatePlacementRequrieldFieldRuleSetname_Post', N'BusinessRuleInValidateEmployeeRequriedField_Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (63, 7, N'PlacementReqriedFieldRuleSetName_Put', N'BusinessRuleInEmployeeReqriedField_Put', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (64, 7, N'ValidatePlacementRequrieldFieldRuleSetname_Put', N'BusinessRuleInValidateEmployeeRequriedField_Put', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (65, 7, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (66, 7, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (67, 7, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (68, 7, N'FileLineProcessDelayInSeconds', N'10', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (69, 7, N'SFTPHost', N'sftp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (70, 7, N'SFTPUserName', N'DIStest', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (71, 7, N'SFTPPassCode', N'DIStest2014', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (77, 9, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB17C AS DateTime), CAST(0x0000A4420079D1BF AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (78, 9, N'NotificationFromAddress', N' cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (79, 9, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (80, 9, N'DIS4Context', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True;MultipleActiveResultSets=True providerName="System.Data.SqlClient"', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (81, 9, N'DefaultConnection', N'Data Source=(LocalDb)\v11.0;AttachDbFilename=|DataDirectory|\aspnet-DIS.HR.Monitor-20140910092138.mdf;Initial Catalog=aspnet-DIS.HR.Monitor-20140910092138;Integrated Security=True providerName="System.Data.SqlClient"    ', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (84, 8, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (85, 8, N'NotificationFromAddress', N' cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (86, 8, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (87, 8, N'DIS4Context', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True;MultipleActiveResultSets=True providerName="System.Data.SqlClient"', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (92, 1076, N'UserName', N' CDIDev.API', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (93, 1076, N'Password', N' ZeJQwGgV287q', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (94, 1076, N'ClientId', N' 1de2bd4f-d00f-420d-b873-74f3ee2a52df', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (97, 15, N'NotificationHostAddress', N' smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (98, 15, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (99, 15, N'NotificationDefaultAddress', N' STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (105, 10, N'BullhornJsonSchemaLocation', N' ~/JsonSchemaFiles/ATSUSClientSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (106, 10, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (107, 10, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (108, 10, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB17C AS DateTime), CAST(0x0000A4410051FFB6 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (113, 12, N'BullhornPlacementJsonSchemaLocation_NewEmployee', N'~/JsonSchemaFiles/PlacementJSONSchema_NewEmployee.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (114, 12, N'BullhornPlacementJsonSchemaLocation_UpdateEmployee', N'~/JsonSchemaFiles/PlacementJSONSchema_UpdateEmployee.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (116, 12, N'LogLocation', N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (118, 12, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (119, 12, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (120, 12, N'DIS4Context', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True;MultipleActiveResultSets=True providerName="System.Data.SqlClient"', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (124, 13, N'BHPlacementSecondaryAssignment_POST_JSONSchema', N'~/JsonSchemaFiles/BHPlacementSecondaryAssignment_POST_JSONSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (125, 13, N'BHPlacementSecondaryAssignment_PUT_JSONSchema', N'~/JsonSchemaFiles/BHPlacementSecondaryAssignment_PUT_JSONSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (126, 13, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (127, 13, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (128, 13, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (133, 14, N'PlacementJSONSchemaPost', N'~/JsonSchemaFiles/BHSuppliersAssociate_POST_Schema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (134, 14, N'PlacementJSONSchemaPut', N'~/JsonSchemaFiles/BHSuppliersAssociate_PUT_Schema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (135, 14, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (136, 14, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (137, 14, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (139, 11, N'JsonSchemaPath', N' ~/TransactionSchema/TransactionStatus.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (140, 11, N'BullHornEncryptionKey', N' c611631a665788a1324b11842d8962f0798de801', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (141, 11, N'NotificationHostAddress', N' smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (142, 11, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (143, 11, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (144, 11, N'DIS4Context', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True;MultipleActiveResultSets=True providerName="System.Data.SqlClient"', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (152, 3, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (153, 3, N'NotificationFromAddress', N' cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (154, 3, N'NotificationDefaultAddress', N' STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (155, 3, N'RuleSetName', N'FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (156, 3, N'AssignmentRuleSet', N'BusinessRuleInAssignmentData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (157, 3, N'ClientRuleSet', N'BusinessRuleInClientData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (158, 3, N'ClientAddressRuleSet', N'BusinessRuleInClientAddressData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
GO
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (159, 3, N'PlacementRuleSet', N'BusinessRuleInPlacementData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (160, 3, N'RateTextRuleSet', N'BusinessRuleInRateTextData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (161, 3, N'SupplierRuleSet', N' BusinessRuleInSupplierData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (162, 3, N'WorkerRuleSet', N'BusinessRuleInWorkerData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (164, 3, N'RuleSetStoreConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (167, 1106, N'JsonSchemaPath', N' ~/TransactionSchema/TransactionStatus.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (168, 1106, N'BullHornEncryptionKey', N' 81577974df334dc9fbf8ac29bf081a106ff10fd7', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (169, 1106, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (170, 1106, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (171, 1106, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (175, 16, N'AppName', N' UKStaffing', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (176, 16, N'ApiName', N' Staffing.Client.Data.Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (177, 16, N'ClientSchemaPath', N' ~/JsonSchemaFiles/ATSUSClientSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (178, 16, N'TransactionApiUrl', N' https://disdmz-test.cdicorp.com/v1/Staffing/Transactions/api/Transactions', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (179, 16, N'SecurityApiUrl', N' https://disdmz-test.cdicorp.com/v1/Shared/Authenticate/api/Validate7', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (180, 16, N'SharedKey', N' 7rybzUylVLX3j6ZMI6V3', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (181, 16, N'Key3', N' Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (182, 16, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (183, 16, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (184, 16, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (185, 16, N'LogLocation', N' d:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (186, 16, N'LogType', N' text', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (187, 16, N'DIS4Context', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True;MultipleActiveResultSets=True providerName="System.Data.SqlClient"', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (188, 1105, N'BullHornEncryptionKey', N' 81577974df334dc9fbf8ac29bf081a106ff10fd7', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (189, 1105, N'JsonSchemaPath', N' ~/TransactionSchema/TransactionStatus.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (190, 1105, N'NotificationHostAddress', N' smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (191, 1105, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (192, 1105, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (197, 4, N'GPEmployeeRuleSetName', N'BusniessRuleInGPEmployeeRulesData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (200, 11, N'DashboardWebServiceURL', N'https://cdiintegrationdev.bullhorncloud.com/services/DashboardWebService', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (202, 11, N'SMTPServer', N'dmzsmtp.cdi-worldwide.net', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (225, 12, N'NotificationHostAddress', N'smtp.cdi-worldwide.net', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (226, 7, N'RuleEngineConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (234, 1, N'JsonSchemaPath', N'~/TransactionSchema/TransactionStatus.json', CAST(0x0000A432004AB1B6 AS DateTime), CAST(0x0000A4410042B2FA AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (235, 1076, N'ClientSecret', N'OmDCul2jtlIheWO6LZCGcB5RhhSDLvJD', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (236, 1076, N'SessionTTLMin', N'2', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (237, 1076, N'BHLoginRESTAPI', N'https://auth9.bullhornstaffing.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (238, 27, N'SaltKey', N'sKq/veGKhL1D7nohztx/UZYxeXbKg6s04HZaOnz1mNU=', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (239, 5, N'RuleSetStoreConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (240, 5, N'GPDBAdoConnStr', N'server=PHL17CDIVGPPS51;database=CDI01;Integrated Security=True;Connection Timeout=30;Min Pool Size=20; Max Pool Size=200;', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (242, 27, N'SaltIV', N'tbHjGRQZfDch8zuLAkTgdA==', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (244, 4, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (245, 4, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (246, 4, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (247, 4, N'RuleEngineConnectionString', N'Data Source=PHL17cdisps20;Initial Catalog=DIS4;Integrated Security=True', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (248, 4, N'GPDBAdoConnStr', N'server=PHL17CDIVGPPS51;database=CDI01;Integrated Security=True;Connection Timeout=30;Min Pool Size=20; Max Pool Size=200;', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (249, 5, N'RuleSchemaPut', N'~/JsonSchemaFiles/JSONSchemaForSupplierAssociateRulesPut.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (250, 5, N'RuleSchemaPost', N'~/JsonSchemaFiles/JSONSchemaForSupplierAssociateRulesPost.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (251, 5, N'GPSchemaPut', N'~/JsonSchemaFiles/GPEmployeePutJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (252, 5, N'GPSchemaPost', N'~/JsonSchemaFiles/GPEmployeePostJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (253, 5, N'GPSchema', N'~/JsonSchemaFiles/GPSecondaryAssignmentJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (254, 5, N'FinancialDataBaseRuleSetName', N'FinancialDatabase', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (255, 5, N'SecondaryAssignmentrequiredFieldRuleSetName_Post', N'BusniessRuleInSecondaryAssignmentRequriedField_Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (256, 5, N'SecondaryAssignmentrequiredFieldRuleSetName_Put', N'BusniessRuleInSecondaryAssignmentRequriedField_Put', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (257, 5, N'SAValidaterequiredFieldRuleSetName_Post', N'BusniessRuleInValidateSecondaryAssignmentRequriedField_Post', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (258, 5, N'SAValidaterequiredFieldRuleSetName_Put', N'BusniessRuleInValidateSecondaryAssignmentRequriedField_Put', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (259, 5, N'NotificationHostAddress', N'smtp.cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (260, 5, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (261, 5, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (262, 5, N'SecondaryAssignmentGPRuleSetName', N'BusniessRuleInSecondaryAssignmentGpData', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (263, 5, N'GPCustomerJsonSchemaLocation', N'~/', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (264, 4, N'GPSchemaPut', N'~/JsonSchemaFiles/GPEmployeePutJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (265, 4, N'GPSchemaPost', N'/JsonSchemaFiles/GPEmployeePostJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (266, 4, N'FinanceEmployeeGetJsonSchema', N'~/bin/JsonSchemaFiles/GPEmployeeGetJSONSchema.txt', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (267, 1105, N'SMTPServer', N'dmzsmtp.cdi-worldwide.net', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (268, 1048, N'SMTPServer', N'dmzsmtp.cdi-worldwide.net', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (269, 1048, N'ClientSchemaPath', N'~/JsonSchemaFiles/ATSUSClientSchema.json', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (270, 1048, N'NotificationHostAddress', N'smtp.cdi-worldwide.net', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (271, 1048, N'NotificationFromAddress', N'cdi-dis-noreply@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (272, 1048, N'NotificationDefaultAddress', N'STSISSoftwareDevelopment@cdicorp.com', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (273, 7, N'test_key 1', N'testvalue 1', CAST(0x0000A432004AB1B6 AS DateTime), NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (302, 1, N'KeyTest', N'ValueTest', CAST(0x0000A4440018691D AS DateTime), CAST(0x0000A4440018691D AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (303, 1, N'TestKey', N'TestValue', CAST(0x0000A444001F97C0 AS DateTime), CAST(0x0000A444001F97C0 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (304, 1, N'jghfh', N'bmbkjb', NULL, NULL)
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (310, 1, N'Hello2', N'Hello2', CAST(0x0000A4490051F7D7 AS DateTime), CAST(0x0000A4490051F7D7 AS DateTime))
INSERT [dbo].[Business_Area_Application_Config] ([Id], [AppId], [KeyName], [Value], [CreatedOn], [ModifiedOn]) VALUES (317, 27, N'TextLogLocation', N'E:\DISTextLoagLocation\Staffing.Authenticate', CAST(0x0000A452014A6624 AS DateTime), CAST(0x0000A452014A6624 AS DateTime))
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Config] OFF
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (0, 0)
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (1, 1)
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (4, 3)
SET IDENTITY_INSERT [dbo].[NotificationWorkflows] ON 

INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (3, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (4, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (5, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (6, 1001, 1, N'This is for testing', 1, 1, N'This is for testing-done')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (66, 1108, 9, N'Data Successfully process in to GP database', 2, 1, N'Data Successfully process in to GP database')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (67, 1107, 2, N'Data Processing failed.', 2, 1, N'Data Processing failed.')
SET IDENTITY_INSERT [dbo].[NotificationWorkflows] OFF
