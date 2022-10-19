Use DIS4_Dev
Go

USE [DIS4]
GO
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
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1142, N'RULE_EXCEPTION', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1143, N'MAPPING_FAIL', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1144, N'MAPPING_START', N'', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (1145, N'MAPPING_ERROR', N'', 1)
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
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (74, 1092, 3, N'Out', N'Unknown_Test', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (75, 1001, 2, N'Out', N'Null_Object_Test', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (76, 1092, 3, N'Out', N'UNknown_Test2', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (77, 1001, 2, N'Out', N'NullobjectTes2', 10, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (78, 1142, 2, N'Log', N'Exception occurred during rule execution.
Exception = <Exception> 
RuleSetName =< RuleSetName>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (79, 1145, 2, N'Log', N'Exception has occurred during mapping.
MappingFromTypeName = <MappingFromTypeName>
MappingFromTypeValue = <MappingFromTypeValue>
MappingInToTypeName = <MappingInToTypeName>
MappingInToTypeValue = <MappingInToTypeValue>
Exception = <Exception>', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (80, 1143, 3, N'Log', N'MappingFromTypeName= <MappingFromTypeName>
MappingFromTypeValue = <MappingFromTypeValue>
MappingInToTypeName = <MappingInToTypeName>
MappingInToTypeValue = <MappingInToTypeValue>
', 2, 1)
INSERT [dbo].[EventWorkflows] ([Id], [EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) VALUES (81, 1144, 5, N'Log', N'MappingFromTypeName = <MappingFromTypeName>
MappingFromTypeValue = <MappingFromTypeValue>
MappingInToTypeName = <MappingInToTypeName>
MappingInToTypeValue = <MappingInToTypeValue>', 2, 1)
SET IDENTITY_INSERT [dbo].[EventWorkflows] OFF
SET IDENTITY_INSERT [dbo].[Business_Area_Application] ON 

INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1, N'Finance.Transaction', 18, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (2, N'Finance.Client', 18, N'Error', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (3, N'UKFinance', 18, N'Info', N'Database', 3, 5, N'd:\UKDIS\v1\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (4, N'Finance.Employee', 18, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (5, N'Finance.SecondaryAssignment', 18, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (6, N'Finance.SupplierAssociate', 18, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', NULL, NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (7, N'HR.Employee', 2, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\HR\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (8, N'HR.Transaction', 2, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\HR\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (9, N'HR.Monitor', 2, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\HR\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (10, N'Staffing.Client', 3, N'Info', N'Database', 3, 10, N'E:\SBeraShared\DISS4.1_TextLog\Staffing.Client', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (11, N'Staffing.Transaction', 3, N'Error', N'Database', 10, 30, N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (12, N'Staffing.Employee', 3, N'Info', N'Database', 3, 5, N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (13, N'Staffing.SecondaryAssignment', 3, N'Info', N'Database', 3, 5, N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (14, N'Staffing.SupplierAssociate', 3, N'Info', N'Database', 3, 5, N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (15, N'Staffing.Candidate', 3, N'Info', N'Database', 3, 5, N'd:\wwwroot\DataIntegrationServices\v1\Staffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (16, N'Staffing.UKStaffing', 3, N'Info', N'Database', 3, 5, N'd:\wwwroot\UKDIS4\v1\UKStaffing\Logs', N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (24, N'Quartz.Scheduler', 2, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (25, N'ADP.Scheduler', 2, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (26, N'Bullhorn.Dashboard', 6, N'Info', N'Database', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (27, N'Security.Authentication', 7, N'Info', N'Database', NULL, NULL, NULL, N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1045, N'Finance.Transaction', 18, N'Warn', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1046, N'Finance.Client', 18, N'Error', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', 1, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1048, N'UKStaffing', 3, N'Info', N'Database', 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1049, N'UKFinance', 18, N'Info', N'Database', 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1050, N'Finance.Employee', 18, N'Info', N'Database', 3, 5, N'd:\DataIntegrationServices4\v1\Finance\Logs', N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1051, N'Staffing.Employee', 3, N'Info', N'Database', 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1052, N'Staffing.SecondaryAssignment', 3, N'Info', N'Database', 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1053, N'Staffing.SupplierAssociate', 3, N'Info', N'Database', 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1054, N'Staffing.Candidate', 3, N'Info', N'Database', 3, 5, N'G:\Datacore\DIS.TEXTLOGS\DIS.STAFFING.CLIENT', NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1058, N'Security.Authentication', 31, N'Info', N'Database', 3, 5, NULL, N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1061, N'UK.Client', 29, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1062, N'UK.Assignment', 29, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1063, N'UK.ClientAddress', 29, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1064, N'UK.Placement', 29, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1067, N'Bullhorn.Dashboard', 30, N'Info', N'Database', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1068, N'HR.Employee', 28, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1069, N'HR.Transaction', 28, N'INfo', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1070, N'Finance.SecondaryAssignment', 18, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1071, N'Finance.SupplierAssociate', 18, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1072, N'HR.Monitor', 28, N'INfo', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1073, N'ADP.Scheduler', 28, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1074, N'Quartz.Scheduler', 28, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1075, N'Staffing.Security', 7, N'Info', N'Database', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1076, N'Staffing.Authenticate', 31, N'Info', N'Database', NULL, NULL, NULL, N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', NULL, NULL)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1105, N'UKStaffing.Transaction', 29, N'Info', N'Database', 3, 5, NULL, N'Rwgdno2d3i10Xch1u1DYnyKvy19cGQEBiwBkWsUFJjKvNdkv1JzxfG2dNC0bbIGn', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1106, N'UKFinance.Transaction', 5, N'Info', N'Database', 3, 5, NULL, N'7rybzUylVLX3j6ZMI6V3', 1, 1)
INSERT [dbo].[Business_Area_Application] ([Id], [ApplicationName], [BA_ID], [LogLevel], [LogMethod], [RetryNo], [LapseTime], [TextLogLocation], [SharedKey], [EnableLog], [EnableNotification]) VALUES (1108, N'Test1', 4, N'Info', N'Put', NULL, NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Business_Area_Application] OFF
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Resource] ON 

INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1, N'Finance.Transactions.Transaction', N'Call finance transaction API test values', 1, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (2, N'Finance.Client.GPCustomer', N'Call GP customer', 2, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (2, N'Finance.Client.Rules', N'Call rule API', 3, NULL, N'svkLRj9nYEgZo7gWDJD5IQ==', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (3, N'Finance.UKFinance.Rules', N'Apply business rule', 4, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (3, N'Finance.UKFinance.Tempest', N'Generate CSV data', 5, N'CDI\tfsservice', N'tfs$ervice1', N'G:\Datacore\NAS\UK')
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (4, N'Finance.Employee.GP', N'Call GP Temporary Placement ', 6, NULL, N'6pR/LoFxxn4jftfJRnaNrejzGuaby5E+wPAV0vK/pak=', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (4, N'Finance.Employee.Rules', N'Finance Employee rule ', 7, NULL, N'Wj7VoVOy/+7ytLNAvim/Yw==', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (5, N'Finance.SecondaryAssignment.GPData', N'Finance SecondaryAssignment GP Data ', 9, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (5, N'Finance.SecondaryAssignment.GPRules', N'Finance SecondaryAssignment GP rule ', 10, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (5, N'Finance.SecondaryAssignment.Rules', N'Finance SecondaryAssignment rule ', 11, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.ADP', N'HR.Employee.ADP', 12, NULL, N'6pR/LoFxxn4jftfJRnaNrejzGuaby5E+wPAV0vK/pak=', N'G:\Datacore\NAS')
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.ADPRules', N'ADP Rule', 13, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.Data', N'New Employee', 14, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.Rules', N'Employee Rules', 15, NULL, N'fc0iUkg331qk3V8HY6MWvQ==', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.ADPMaintenance', N'HR.Employee.ADP', 16, NULL, N'6pR/LoFxxn4jftfJRnaNrejzGuaby5E+wPAV0vK/pak=', N'G:\Datacore\NAS')
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (7, N'HR.Employee.ADPMaintenanceRules', N'ADP Rule', 17, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (8, N'HR.Transaction.Transaction', N'Hr transaction will call to staffing transaction', 18, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (10, N'Staffing.Client.Data', N'Accept Bullhorn Data', 19, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (11, N'Staffing.Transactions.Transactions', N'update bullhorn dashboard', 20, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1046, N'Finance.Client.GPCustomer', N'Call GP customer', 21, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1045, N'Finance.Transactions.Transaction', N'Call finance transction API', 22, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1046, N'Finance.Client.Rules', N'Call rule API', 23, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (14, N'Staffing.SupplierAssociate.Data', N'SupplierAssociate', 24, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1048, N'Staffing.UKStaffing.UKStaffingService', N'Accept UKStaffing data', 25, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1049, N'Finance.UKFinance.Rules', N'Apply business rule', 26, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1049, N'Finance.UKFinance.Tempest', N'Generate CSV data', 27, N'CDI\tfsservice', N'tfs$ervice1', N'G:\Datacore\NAS\UK')
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1053, N'Staffing.SupplierAssociate.Data', N'SupplierAssociate', 28, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1051, N'Staffing.Employee.Data', N'Employee', 29, NULL, N'fc0iUkg331qk3V8HY6MWvQ==', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1052, N'Staffing.SecondaryAssignment.Data', N'Staffing.SecondaryAssignment', 30, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.Rules', N'Employee Rules', 31, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.Data', N'New Employee', 32, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.ADP', N'HR.Employee.ADP', 33, N'CDI\amajumder', N'6pR/LoFxxn4jftfJRnaNrejzGuaby5E+wPAV0vK/pak=', N'G:\Datacore\NAS')
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1069, N'HR.Transaction.Transaction', N'Hr transaction will call to staffing transaction', 1032, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.ADPRules', N'ADP Rule', 1033, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1050, N'Finance.Employee.Rules', N'Finance Employee rule ', 1034, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.GP', N'HR employee GP', 1036, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1054, N'Staffing.Candidate.Data', N'abcd', 1037, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1072, N'HR.Monitor.Employee', N'abcd', 1040, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1070, N'Finance.SecondaryAssignment.Rules', N'Finance', 1050, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1070, N'Finance.SecondaryAssignment.GPRules', N'Finance.SecondaryAssignment.GPRules', 1051, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1070, N'Finance.SecondaryAssignment.GPData', N'Finance.SecondaryAssignment.GPData', 1052, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1071, N'Finance.SupplierAssociate.Rules', N'Process for Finance.SupplierAssociate.Rules', 1053, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1071, N'Finance.SupplierAssociate.GPRules', N'process for Finance.SupplierAssociate.GPRules', 1054, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1071, N'Finance.SupplierAssociate.GPData', N'process for Finance.SupplierAssociate.GPData', 1055, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1068, N'HR.Employee.ADPMaintenance', N'fff', 1060, N'fff', N'fc0iUkg331qk3V8HY6MWvQ==', NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1075, N'Staffing.Security.Validate', N'Authentication API', 1066, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1076, N'Staffing.Authenticate.Validate', N'Candidate Authenication', 1067, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1105, N'UKStaffing.Transaction.Transaction ', N'UKStaffing transaction will update bullhorn dashboard with status', 1087, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource] ([Application_ID], [Process_Name], [Description], [Process_ID], [AccessAccount], [AccessPassword], [ResourceDirectory]) VALUES (1106, N'UKFinance.Transactions.Transaction', N'UKFinance Transaction will call UKStaffing ransaction', 1088, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Resource] OFF
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Resource_API] ON 

INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1, 1, N'Finance.Transaction.Put', N'Send data to Staffing.Transaction', N'hh', N'hh', NULL, NULL, NULL, NULL, N'1234', N'/v1/Finance/Transactions/api/Transaction', NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (2, 2, N'Finance.Client.GPCustomer.Put', N'Import client data into Great Plains.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Client/api/GPCustomer', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (3, 3, N'Finance.Client.Rules.Post', N'Performs Business Rules processing for Client data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Client/api/Rules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 4, N'Finance.UKFinance.Rules', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 5, N'Finance.UKFinance.Rules.Assignments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 6, N'Finance.UKFinance.Rules.ClientAddresses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 7, N'Finance.UKFinance.Rules.Clients', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 8, N'Finance.UKFinance.Rules.Placements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 9, N'Finance.UKFinance.Rules.RateTexts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 10, N'Finance.UKFinance.Rules.Suppliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (4, 11, N'Finance.UKFinance.Rules.Workers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 12, N'Finance.UKFinance.Tempest.Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 13, N'Finance.UKFinance.Tempest.Client', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 14, N'Finance.UKFinance.Tempest.ClientAddress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 15, N'Finance.UKFinance.Tempest.Placement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 16, N'Finance.UKFinance.Tempest.Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 17, N'Finance.UKFinance.Tempest.Supplier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (5, 18, N'Finance.UKFinance.Tempest.Worker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (6, 19, N'Finance.Employee.GP.Get', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Employee/api/GP/Get', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (19, 22, N'Staffing.Client.Data.Post', N'Receives data from Bullhorn and validate access to DIS system.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Client/api/Data', NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (20, 23, N'Staffing.Transaction.Put', N'Update Status to Bullhorn Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Transactions/api/Transactions', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (12, 25, N'HR.Employee.ADP.Send', N'HR.Employee.ADP.Send', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADP', NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (13, 26, N'HR.Employee.ADPRules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADPRules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (13, 27, N'HR.Employee.ADPRules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADPRules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (14, 28, N'HR.Employee.Data.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/Data', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (14, 29, N'HR.Employee.Data.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/Data', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (15, 31, N'HR.Employee.Rules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/Rules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (16, 32, N'HR.Employee.ADPMaintenance.Get', N'HR.Employee.ADP.Post', N'smtp.cdicorp.com', N'/DIStest/DISDev', N'sFTPwithKey', N'DIStest', N'DIStest2014', N'G:\Datacore\DISTestOpenSSH.ppk', NULL, N'/v1/HR/Employee/api/ADPMaintenance', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (16, 33, N'HR.Employee.ADPMaintenance.Put', N'HR.Employee.ADP.Send', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADPMaintenance', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 34, N'Staffing.UKStaffing.UKStaffingService.Assignments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 35, N'Staffing.UKStaffing.UKStaffingService.ClientAddresses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 36, N'Staffing.UKStaffing.UKStaffingService.Clients', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 37, N'Staffing.UKStaffing.UKStaffingService.Placements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 38, N'Staffing.UKStaffing.UKStaffingService.RateTexts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 39, N'Staffing.UKStaffing.UKStaffingService.Suppliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (25, 40, N'Staffing.UKStaffing.UKStaffingService.Workers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (28, 55, N'Staffing.SupplierAssociate.Data.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/SupplierAssociate/api/Data', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (28, 56, N'Staffing.SupplierAssociate.Data.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/SupplierAssociate/api/Data', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (27, 57, N'Finance.SupplierAssociate.GPData.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPData', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (27, 58, N'Finance.SupplierAssociate.GPData.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPData', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (29, 59, N'Staffing.Employee.Data.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Employee/api/Data', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (29, 60, N'Staffing.Employee.Data.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Employee/api/Data', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (30, 61, N'Staffing.SecondaryAssignment.Data.Put', N'Staffing.SecondaryAssignment.Data.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/SecondaryAssignment/api/Data', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (30, 62, N'Staffing.SecondaryAssignment.Data.Post', N'Staffing.SecondaryAssignment.Data.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/SecondaryAssignment/api/Data', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (31, 63, N'HR.Employee.Rules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/Rules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (33, 65, N'HR.Employee.ADP.Post', N'HR.Employee.ADP.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADP', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1036, 69, N'Finance.Employee.GP.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Employee/api/GP', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1036, 70, N'Finance.Employee.GP.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Employee/api/GP', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1032, 1065, N'HR.Transaction.Transaction.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Transaction/api/Transaction', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1034, 1068, N'Finance.Employee.Rules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Employee/api/Rules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1034, 1069, N'Finance.Employee.Rules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/Employee/api/Rules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1037, 1071, N'Staffing.Candidate.Data.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Candidate/api/Data', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1040, 1072, N'HR.Monitor.Employee.Get', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Monitor/api/Employee', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1040, 1075, N'HR.Monitor.Employee.CheckTransactionStatus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Monitor/api/Employee/CcheckTransactionStatus', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (33, 1076, N'HR.Employee.ADP.SendToOutgoing', NULL, NULL, NULL, NULL, NULL, NULL, N'G:\Datacore\NAS', NULL, N'/v1/HR/Employee/api/ADP/Sendtogoing', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (33, 1077, N'HR.Employee.ADP.SendViaADP', NULL, N'sdfiltran.adp.com', N'/QA/EmployeeInbound', N'sFTPwithPort', N'cdi_corp', N'WnsGXy2L&hkE95f', N'G:\Datacore\NAS', N'100221097', NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (33, 1078, N'HR.Employee.ADP.Put', NULL, NULL, NULL, NULL, NULL, NULL, N'G:\Datacore\NAS', NULL, N'/v1/HR/Employee/api/ADP', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1050, 1079, N'Finance.SecondaryAssignment.Rules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/Rules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1050, 1080, N'Finance.SecondaryAssignment.Rules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/Rules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1051, 1081, N'Finance.SecondaryAssignment.GPRules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/GPRules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1051, 1082, N'Finance.SecondaryAssignment.GPRules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/GPRules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1052, 1083, N'Finance.SecondaryAssignment.GPData.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/GPData', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1052, 1084, N'Finance.SecondaryAssignment.GPData.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SecondaryAssignment/api/GPData', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1053, 1087, N'Finance.SupplierAssociate.Rules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/Rules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1053, 1088, N'Finance.SupplierAssociate.Rules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/Rules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1054, 1089, N'Finance.SupplierAssociate.GPRules.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPRules', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1054, 1090, N'Finance.SupplierAssociate.GPRules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPRules', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (33, 1096, N'HR.Employee.ADP.Get', N'This API method retrieve files from ADP SFTP site and save to NAS drive for processing by the Put API.', N'sdfiltran.adp.com', N'/QA/EmployeeNightly', N'sFTPwithPort', N'cdi_corp', N'WnsGXy2L&hkE95f', N'G:\Datacore\DISTestOpenSSH.ppk', N'1022', NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1066, 1097, N'Staffing.Security.Validate.Get', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Shared/Authenticate/api/Validate/', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1067, 1098, N'Staffing.Authenticate.Validate.Get', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Authenticate/api/Validate/Get', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (16, 1099, N'HR.Employee.ADPMaintenanceRules.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Employee/api/ADPMaintenanceRules', NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1037, 1100, N'Staffing.Candidate.Data.Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Candidate/api/Data', N'Post')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (6, 1114, N'Finance.Employee.GP.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (19, 1115, N'Staffing.Client.Data.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Client/api/Data/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (20, 1116, N'Staffing.Transaction.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Transactions/ping/Transactions/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1055, 1123, N'Finance.SupplierAssociate.GPData.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPData/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (29, 1124, N'Staffing.Employee.Data.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Employee/api/Data/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (30, 1125, N'Staffing.SecondaryAssignment.Data.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/SecondaryAssignment/api/Data/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1037, 1128, N'Staffing.Candidate.Data.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Candidate/api/Data/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1040, 1129, N'HR.Monitor.Employee.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/HR/Monitor/api/Employee/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1053, 1133, N'Finance.SupplierAssociate.Rules.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/Rules/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1054, 1134, N'Finance.SupplierAssociate.GPRules.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Finance/SuppliersAssociate/api/GPRules/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1066, 1135, N'Staffing.Security.Validate.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Shared/Authenticate/api/Validate/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1067, 1136, N'Staffing.Authenticate.Validate.Ping', N'Check API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/Staffing/Authenticate/ping/validate/Ping', N'Get')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1088, 1140, N'UKFinance.Transaction.Transaction.Put ', N'UKFinance.Transaction.Transaction.Put  will call to UKStaffing.Transaction.Transaction.Put', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/UKFinance/Transactions/api/Transaction', N'Put')
INSERT [dbo].[Business_Area_Application_Resource_API] ([Process_ID], [API_ID], [API_Name], [API_Description], [RemoteServer], [RemoteDirectory], [RemoteProtocol], [RemoteUser], [RemotePassword], [RemoteCustom1], [RemoteCustom2], [API_Path], [Method]) VALUES (1087, 1141, N'UKStaffing.Transaction.Transaction.Put', N'UKStaffing.Transaction.Transaction.Put api will update BH Dashboard with status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/v1/UKStaffing/Transactions/api/Transactions', N'')
SET IDENTITY_INSERT [dbo].[Business_Area_Application_Resource_API] OFF
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
SET IDENTITY_INSERT [dbo].[Subscriber] ON 

INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (2, N'Steven Sampson', N'steve.sampson@cdicorp.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (3, N'Suvankar', N'suvankar.bera@in.dclgroup.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (4, N'Ajoy', N'ajoy.majumder@cdicorp.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (5, N'Ajoy', N'ajoy.majumder@cdicorp.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (8, N'ATS Testing Notifications', N'ATSTestingNotifications1@cdicorp.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (11, N'SUMAN', N'suman.kumar.nath@in.dclgroup.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (17, N'Rushil Patel', N'Rushil.Patel@cdicorp.com')
INSERT [dbo].[Subscriber] ([Subscriber_ID], [Subscriber_Full_Name], [Subscriber_EmailAddress]) VALUES (23, N'SUMAN', N'nath@GMAIL.com')
SET IDENTITY_INSERT [dbo].[Subscriber] OFF
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1, 3, N'Success')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1, 5, N'Failed')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 5, N'Success')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (2, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 8, N'Error')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (3, 23, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (4, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (4, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (4, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (4, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (4, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (5, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (5, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (5, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (5, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (5, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (6, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (6, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (6, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (6, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (6, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (7, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (7, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (7, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (7, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (7, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (8, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (8, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (8, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (8, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (8, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (9, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (9, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (9, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (9, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (9, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 11, N'Error')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (10, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (11, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (11, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (11, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (11, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (11, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (12, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (12, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (12, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (12, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (12, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (13, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (13, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (13, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (13, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (13, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (14, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (14, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (14, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (14, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (14, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (15, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (15, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (15, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (15, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (15, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (16, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (16, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (16, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (16, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (16, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (17, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (17, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (17, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (17, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (17, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (18, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (18, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (18, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (18, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (18, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 8, N'Failed')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (19, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (22, 2, N'All')
GO
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (22, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (22, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (22, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (22, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (23, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (23, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (23, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (23, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (23, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (25, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (25, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (25, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (25, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (25, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (26, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (26, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (26, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (26, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (26, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (27, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (27, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (27, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (27, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (27, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (28, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (28, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (28, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (28, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (28, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (29, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (29, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (29, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (29, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (29, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (31, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (31, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (31, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (31, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (31, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (32, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (32, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (32, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (32, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (32, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (33, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (33, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (33, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (33, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (33, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (34, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (34, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (34, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (34, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (34, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (35, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (35, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (35, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (35, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (35, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (36, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (36, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (36, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (36, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (36, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (37, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (37, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (37, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (37, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (37, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (38, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (38, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (38, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (38, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (38, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (39, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (39, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (39, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (39, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (39, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (40, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (40, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (40, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (40, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (40, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (55, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (55, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (55, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (55, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (55, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (56, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (56, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (56, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (56, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (56, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (57, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (57, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (57, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (57, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (57, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (58, 2, N'All')
GO
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (58, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (58, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (58, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (58, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (59, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (59, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (59, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (59, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (59, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (60, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (60, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (60, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (60, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (60, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (61, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (61, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (61, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (61, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (61, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (62, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (62, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (62, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (62, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (62, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (63, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (63, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (63, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (63, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (63, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (65, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (65, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (65, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (65, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (65, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (69, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (69, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (69, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (69, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (69, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 4, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (70, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1065, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1065, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1065, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1065, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1065, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1068, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1068, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1068, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1068, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1068, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1069, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1069, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1069, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1069, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1069, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1071, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1071, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1072, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1072, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1072, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1072, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1072, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1075, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1075, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1075, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1075, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1075, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1076, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1076, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1076, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1076, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1076, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1077, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1077, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1077, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1077, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1077, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1078, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1078, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1078, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1078, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1078, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1079, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1079, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1079, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1079, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1079, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 3, N'Error')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1080, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1081, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1081, 3, N'All')
GO
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1081, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1081, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1081, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1082, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1082, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1082, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1082, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1082, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1083, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1083, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1083, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1083, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1083, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1084, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1084, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1084, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1084, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1084, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1087, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1087, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1087, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1087, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1087, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1088, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1088, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1088, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1088, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1088, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1089, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1089, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1089, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1089, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1089, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1090, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1090, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1090, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1090, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1090, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1096, 2, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1096, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1096, 5, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1096, 11, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1096, 17, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1099, 3, N'All')
INSERT [dbo].[Business_Area_Application_Resource_API_Subscriber] ([API_ID], [Subscriber_ID], [MessageLevel]) VALUES (1100, 3, N'All')
SET IDENTITY_INSERT [dbo].[Business_Area] ON 

INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (2, N'HR', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (3, N'Staffing', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (4, N'Transaction', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (5, N'UKFinance', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (6, N'Bullhorn', NULL, N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (7, N'Security', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (10, N'Transaction', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (18, N'Finance', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (27, N'DIS', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (28, N'HR', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (29, N'UKStaffing', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (30, N'Bullhorn', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (31, N'Security', N'http://172.17.10.15:1936', N'smtp.cdicorp.com')
INSERT [dbo].[Business_Area] ([BA_ID], [Business_Area_Name], [BaseURL], [SMTPServer]) VALUES (41, N'~     ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Business_Area] OFF
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (0, 0)
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (1, 1)
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (2, 1)
INSERT [dbo].[EventLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (4, 3)
INSERT [dbo].[NotificationLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (1, 1)
INSERT [dbo].[NotificationLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (1, 3)
INSERT [dbo].[NotificationLevelsByApplication] ([ApplicationID], [LevelID]) VALUES (6, 1)
SET IDENTITY_INSERT [dbo].[NotificationWorkflows] ON 

INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (3, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (4, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (5, 1001, 1, N'This is for testing', 1, 0, N'This is for testing')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (6, 1001, 1, N'This is for testing', 1, 1, N'This is for testing-done')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (66, 1108, 9, N'Data Successfully process in to GP database', 2, 1, N'Data Successfully process in to GP database')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (67, 1107, 2, N'Data Processing failed.', 2, 1, N'Data Processing failed.')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (91, 1092, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td><Status></td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><ServerName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td><Message></td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 10, 1, N'[DataIntegrationServices] - Client Fail')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (96, 1122, 2, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
                            Processing of the Client has occurred an error! 
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Exception occurred during task exceution.</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td><Exception></td></tr>                   
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
       
    </table>
</body>
</html>
', 10, 1, N'[DataIntegrationServices] - Client  Error')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (97, 1016, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Activity processing has been failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 10, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (98, 1019, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status</td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>API communication has been failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 10, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (99, 1122, 2, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
                            Processing of the Client has occurred an error! 
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Exception occurred during task exceution.</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td><Exception></td></tr>                   
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
       
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Error')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (100, 1016, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Activity processing has been failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (109, 1019, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status</td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>API communication has been failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (110, 1142, 2, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
                              Processing of the Client has occurred an error! 
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Exception occurred during rule execution </td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td><Exception></td></tr>                   
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
       
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Error')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (111, 1143, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Mapping has been failed between two entities.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (112, 1123, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the Client failed!
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Failed to update GP Database. Details : <Message></td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (113, 1124, 9, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color:#3C763D; font-weight: bold; padding-bottom: 15px; font-family:Verdana ">
                            Processing of the Client Completed
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Success</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Data has been successfully processed into GP.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
       
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Success')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (114, 1068, 2, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
                               Processing of the Client has occurred an error! 
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Client ID </td><td>:</td><td><ClientNumber></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Exception has occurred during GP data processing.</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td><Exception></td></tr>                   
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
       
    </table>
</body>
</html>
', 2, 1, N'[DataIntegrationServices] - Client  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (124, 1122, 2, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
                            Processing of the <OperationTypeForBody> Secondary Assignment error!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Placement ID </td><td>:</td><td><PlacementID></td></tr>
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td><CandidateID></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Error occured during task execution</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td><Exception></td></tr>
                    
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>       
    </table>
</body>
</html>
', 13, 1, N'[DataIntegrationServices] - <OperationTypeForSubject> Secondary Assignment Error')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (125, 1016, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the <OperationTypeForBody> Secondary Assignment failed!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Placement ID </td><td>:</td><td><PlacementID></td></tr>
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td><CandidateID></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>Acitivity processing has been failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>       
    </table>
</body>
</html>
', 13, 1, N'[DataIntegrationServices] - <OperationTypeForSubject> Secondary Assignment  Failed')
INSERT [dbo].[NotificationWorkflows] ([Id], [EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) VALUES (126, 1019, 3, N'<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        .contTable tr td {
            border-bottom: 1px solid #e6e6e6;
            padding-left: 5px;
        }

        .border-bottom {
            border-bottom: 1px solid #e6e6e6;
        }
    </style>
</head>
<body style="background: none repeat scroll 0% 0% rgb(245, 245, 245);">

    <table style="width:100%">
        <tr>
            <td class="border-bottom" style="text-align: center; font-weight: bold; color: white; font-family: Verdana; background: none repeat scroll 0% 0% gray;
       padding: 10px;">
                &nbsp;  &nbsp; Data integration services
            </td>
        </tr>
        
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        <tr>
            <td>
                <table class="contTable" border="0" style="width:100%">
                    <tr>
                        <td colspan="3" style="color: rgb(220,20,60); font-weight: bold; padding-bottom: 15px; font-family: Verdana;">
                            Processing of the <OperationTypeForBody> Secondary Assignment failed!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td><MachineName></td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td><DateTime></td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td><ApplicationName></td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td><BullhornTransactionID></td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td><DISTransactionID></td></tr>
                    <tr valign="top"><td>Placement ID </td><td>:</td><td><PlacementID></td></tr>
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td><CandidateID></td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>API communication failed.</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>       
    </table>
</body>
</html>
', 13, 1, N'[DataIntegrationServices] - <OperationTypeForSubject> Secondary Assignment Failed ')