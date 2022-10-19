
/*
LevelID	LevelName	IsActive
1	FATAL	1
2	ERROR	1
3	FAIL	1
4	WARN	1
5	INFO	1
6	DEBUG	1
7	SUCCESS	1
*/

/*
@AppID(s)
Security.Authntication = 27
Clients :              Staffing.Client = 10, Finance.Client = 2, Staffing.Transaction = 11, Finance.Transaction = 1
Secondary assignment : Staffing.SecondaryAssignment = 13, Finance.SecondaryAssignment = 5, HR.Transaction = 8, HR.Employee = 7
Supplier associate : Staffing.SecondaryAssignment = 13, Finance.SecondaryAssignment = 5, HR.Transaction = 8, HR.Employee = 7, 
Finance.Employee = 4,Staffing.Employee = 12,UKStaffing = 16,UKFinance = 3,Staffing.Candidate=15,ADP.Maintenance =30, UKStaffing.Transaction= 31,
UKFinance.Transaction = 32,HR.Monitor=9
*/

--DROP EXISTING 
delete from EventWorkflows

--RE_CREATE TEMPLATES

DECLARE @AppIDList TABLE(AppID integer primary key not null)
insert into @AppIDList(AppID) values(27), (10),(2),(11),(1),(13),(5),(8),(7),(4), (6),(14),(12),(16),(3),(15),(30),(31),(32),(9)

DECLARE @AppID integer

while exists (select * from @AppIDList)
BEGIN
	select @AppID = MIN(AppID) from @AppIDList



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100001, 1, N'Log', 
N'Error in configuration 
Item : [ObjectName]
Value : [ObjectValue]
Expected value : [ObjectExpectedValue]
returning HTTP code : [HttpCode]
HTTP status : [HttpStatus]
Message : [Message]', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100002, 2, N'Log', 
N'HTTP header error 
Key name : [ObjectName]
Value : [ObjectValue]
Expected value : [ObjectExpectedValue]
returning HTTP code : [HttpCode]
HTTP status : [HttpStatus]
Message : [Message]', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100003, 3, N'Log', 
N'HTTP header mismatch 
Key name : [ObjectName]
Value : [ObjectValue]
Expected value : [ObjectExpectedValue]
returning HTTP code : [HttpCode]
HTTP status : [HttpStatus]
Message : [Message]', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100004, 7, N'Log', 
N'HTTP header is validated 
Key name : [ObjectName]
Value : [ObjectValue]
Expected value : [ObjectExpectedValue]
returning HTTP code : [HttpCode]
HTTP status : [HttpStatus]
Message : [Message]', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100005, 2, N'Log', 
N'HTTP header is validated 
Key name : [ObjectName]
Value : [ObjectValue]
Expected value : [ObjectExpectedValue]
returning HTTP code : [HttpCode]
HTTP status : [HttpStatus]
Message : [Message]', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100006, 6, N'Log', 
N'JSON validation started 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Package : [JsonData]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100007, 4, N'Log', 
N'JSON data is invalid 
DIS transaction ID : [DISTransactionID]
Message : [Message]
Returning HTTP code : [HttpCode]
Returning HTTP status : [HttpStatus]
Package : [JsonData]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100008, 6, N'Log', 
N'JSON validation status
Status : [Status]
Message : [Message] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Package : [JsonData]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100009, 3, N'Log', 
N'Error in JSON data as per schema validation 
Status : [Status]
Schema errors : [SchemaErrors]
Message : [Message] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Package : [JsonData]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100010, 2, N'Log', 
N'JSON schema validation process encountered an exception.
Exception : [Exception] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Package : [JsonData]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100011, 3, N'Log', 
N'File not found. 
Message : [Message] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Package : [JsonData]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100012, 2, N'Log', 
N'File path mapping error
Message : [Message] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
Exception : [Exception]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100013, 4, N'Log', 
N'File path is invalid
Message : [Message] 
Schema file location : [FileLocation]
DIS transaction ID : [DISTransactionID]
', @AppID, 1)

-- NE sets 

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100014, 6, N'Log', 
N'HTTP outgoing request details
DIS transaction ID : [DISTransactionID]
Shared key : [SharedKey]
Referrer : [Referrer]
URL : [URL]
Http Method : [HttpVerb]
Header values : [HttpHeaderString]
Query string values : [HttpQueryString]
Http body : [HttpRequestBody]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100015, 7, N'Log', 
N'Sending data over Http was successful.
Response details: ------------------
HttpCode  : [HttpCode], [Status]
Http Status : [HttpStatus]
Response message : [HttpResponseBody]
Request details : ------------------
DIS transaction ID : [DISTransactionID]
Shared key : [SharedKey]
Referrer : [Referrer]
URL : [URL]
Http Method : [HttpVerb]
Header values : [HttpHeaderString]
Query string values : [HttpQueryString]
Request message : [HttpRequestBody]
----------------------
Note : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100016, 3, N'Log', 
N'Sending data over Http failed..
Response details: ------------------
HttpCode  : [HttpCode], [Status]
Http Status : [HttpStatus]
Response message : [HttpResponseBody]
Request details : ------------------
DIS transaction ID : [DISTransactionID]
Shared key : [SharedKey]
Referrer : [Referrer]
URL : [URL]
Http Method : [HttpVerb]
Header values : [HttpHeaderString]
Query string values : [HttpQueryString]
Request message : [HttpRequestBody]
----------------------
Note : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100017, 3, N'Log', 
N'Object validation failed.
Object name : [ObjectName]
Object value : [ObjectValue]
Expected value : [ObjectExpectedValue]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100018, 2, N'Log', 
N'General exception.
Exception : [Exception]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100019, 6, N'Log', 
N'[RetryCount] ) [RetryRank] time Retrying ...
DIS transaction ID : [DISTransactionID]
Message : [Message]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100020, 6, N'Log', 
N'Validating properties for task
DIS transaction ID : [DISTransactionID]
Message : [Message]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100021, 6, N'Log', 
N'[RetryCount] ) [RetryRank] Retry result ...
DIS transaction ID : [DISTransactionID]
Message : [Message]
Status : [Status]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100022, 5, N'Log', 
N'[RetryCount] ) [RetryRank] If retry required : [Status]
DIS transaction ID : [DISTransactionID]
Message : [Message]
Module name : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100023, 3, N'Log', 
N'SOAP service is not available
DIS transaction ID : [DISTransactionID]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100024, 7, N'Log', 
N'SOAP service is available.
DIS transaction ID : [DISTransactionID]
----------------------
Note : [Message]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100025, 7, N'Log', 
N'Sending data over SOAP was successful.
Response details: ------------------
HttpCode  : [HttpCode]
Http Status : [HttpStatus]
Status : [Status]
Response message : 
----------------------
[HttpResponseBody]
----------------------
Request details : 
DIS transaction ID : [DISTransactionID]
Origin Transaction ID : [OriginTransactionID]
URL : [URL]
Soap method : [Method]
Request message : 
----------------------
[HttpRequestBody]
----------------------
External transaction data :
---------------------- 
[ExternalTransactionData]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100026, 3, N'Log', 
N'Sending data over SOAP failed.
Response details: ------------------
HttpCode  : [HttpCode]
Http Status : [HttpStatus]
Status : [Status]
Response message : 
----------------------
[HttpResponseBody]
----------------------
Request details : 
DIS transaction ID : [DISTransactionID]
Origin Transaction ID : [OriginTransactionID]
URL : [URL]
SOAP method : [Method]
Request message : 
----------------------
[HttpRequestBody]
----------------------
External transaction data :
---------------------- 
[ExternalTransactionData]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100027, 2, N'Log', 
N'SOAP process has an exception.
Exception : [Exception]


Available information until the exception occurred:
Response details: ------------------
HttpCode  : [HttpCode]
Http Status : [HttpStatus]
Status : [Status]
Response message : 
----------------------
[HttpResponseBody]
----------------------
Request details : 
DIS transaction ID : [DISTransactionID]
Origin Transaction ID : [OriginTransactionID]
URL : [URL]
SOAP method : [Method]
Request message : 
----------------------
[HttpRequestBody]
----------------------
External transaction data :
---------------------- 
[ExternalTransactionData]
----------------------
Note : [Message]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100028, 2, N'Log', 
N'Http/Rest process has an exception.
Exception : [Exception]

Response details: ------------------
HttpCode  : [HttpCode]
Http Status : [HttpStatus]
Status : [Status]
Response message : [HttpResponseBody]
Request details : ------------------
DIS transaction ID : [DISTransactionID]
Shared key : [SharedKey]
Referrer : [Referrer]
URL : [URL]
Http Method : [HttpVerb]
Header values : [HttpHeaderString]
Query string values : [HttpQueryString]
Request message : [HttpRequestBody]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100029, 6, N'Log', 
N'Outgoing SOAP request details.
----------------------
DIS transaction ID : [DISTransactionID]
Origin Transaction ID : [OriginTransactionID]
URL : [URL]
SOAP method : [Method]
Request message : 
----------------------
[HttpRequestBody]
----------------------
External transaction data :
---------------------- 
[ExternalTransactionData]
----------------------
Note : [Message]
', @AppID, 1)



--3rd set

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100030, 6, N'Log', 
N'JSON parsing status
Status : [Status]
From type : [MappingFromTypeValue]
From value : [MappingFromTypeValue]
To type : [MappingInToTypeName]
To value : [MappingInToTypeValue]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100031, 2, N'Log', 
N'JSON parsing exception.
----------------------------
Exception : [Exception]
----------------------------
Status : [Status]
----------------------------
From type : [MappingFromTypeValue]
From value : [MappingFromTypeValue]
----------------------------
To type : [MappingInToTypeName]
To value : [MappingInToTypeValue]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100032, 7, N'Log', 
N'HTTP Rest request accepted.
DIS transaction ID : [DISTransactionID]
URL : [URL]
Headers : [HttpHeaderString]
Http request data : [HttpRequestBody]
Http code : [HttpCode]
Http status : [HttpStatus]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100033, 4, N'Log', 
N'HTTP Rest request rejected.
DIS transaction ID : [DISTransactionID]
URL : [URL]
Headers : [HttpHeaderString]
Http request data : [HttpRequestBody]
Http code : [HttpCode]
Http status : [HttpStatus]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100034, 6, N'Log', 
N'[Message]', @AppID, 1)





INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100035, 2, N'Log', 
N'Error in DIS transaction processing.
Exception : [Exception]

Date : [DateTime] 
Status : [Status]
Activity ID : [ActivityID]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]
Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100036, 5, N'Log', 
N'DIS transaction details.

Date : [DateTime] 
Status : [Status]
Activity ID : [ActivityID]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100037, 6, N'Log', 
N'DIS transaction GUID found in database.

Date : [DateTime] 
Status : [Status]
Activity ID : [ActivityID]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100038, 7, N'Log', 
N'DIS transaction updated successfully in database with following information.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Description : [TransactionDescription]
Originating transaction ID : [OriginTransactionID]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100039, 4, N'Log', 
N'DIS transaction GUID not found in database.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100040, 7, N'Log', 
N'DIS transaction inserted successfully into database with following information.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)




INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100041, 4, N'Log', 
N'DIS transaction policy violation detected.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100042, 5, N'Log', 
N'DIS transaction activity details.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Originating transaction ID : [OriginTransactionID]
Activity ID : [ActivityID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100043, 7, N'Log', 
N'DIS transaction activity inserted successfully in database with following information.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Activity ID : [ActivityID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100044, 6, N'Log', 
N'DIS transaction activity ID found in database.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Activity ID : [ActivityID]
Originating transaction ID : [OriginTransactionID]


Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
API ID : [ApiID]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)
				
				
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100045, 7, N'Log', 
N'DIS transaction activity updated successfully in database with following information.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Activity ID : [ActivityID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)		

						   

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100046, 3, N'Log', 
N'DIS transaction activity ID not found in database.

Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Activity ID : [ActivityID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
Originating transaction ID : [OriginTransactionID]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100047, 2, N'Log', 
N'Error in DIS transaction activity processing.
Exception : [Exception]
----------------------
The following information was attempted for the activity update.
----------------------
Date : [DateTime] 
Status : [Status]
DIS transaction ID : [DISTransactionID]
Activity ID : [ActivityID]
Originating transaction ID : [OriginTransactionID]

Application name : [ApplicationName]
Application ID : [ApplicationID]
API name : [ApiName]
Repository name : [TransactionRepositoryName]

Transaction data : [TransactionActivityData]
Description : [TransactionDescription]
----------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100048, 5, N'Log', 
N'Updating bullhorn dashboard with data received message.
Message for bullhorn ----------------------
Request received from and processing.
On : [ApiName]
Transaction ID : [OriginTransactionID]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
Package Data : [JsonData]
', @AppID, 1) 
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100048, 5, N'Out', 
N'[EventCode]
Request received from BullHorn and processing.
On : [ApiName]
Transaction ID : [OriginTransactionID]
', @AppID, 1)

 

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100049, 3, N'Log', 
N'Updating bullhorn dashboard with failure.
Message for bullhorn ----------------------
API communication failed!
From : [ApiName]  - To : [DestinationApiName]
Transaction ID : [OriginTransactionID]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
URL failed to call : [URL]
Package Data : [JsonData]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100049, 3, N'Out', 
N'[EventCode]
API communication failed!
From : [ApiName]  - To : [DestinationApiName]
Transaction ID : [OriginTransactionID]
', @AppID, 1)

   


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100050, 3, N'Log', 
N'Updating bullhorn dashboard with failure.
Message for bullhorn ----------------------
Rule validation failed on [ApiName]
Transaction ID : [OriginTransactionID]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
Rule set name : [RuleSetName]
Reason : [Message]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100050, 3, N'Out', 
N'[EventCode]
Rule validation failed on [ApiName]
Transaction ID : [OriginTransactionID]
Reason : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100051, 3, N'Log', 
N'Updating bullhorn dashboard with failure.
Message for bullhorn ----------------------
Activity processing error on [ApiName]
Transaction ID : [OriginTransactionID]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
Transaction description : [TransactionDescription]
Activity ID : [ActivityID]
DIS dashboard status : [Status]
Package Data : [JsonData]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100051, 3, N'Out', 
N'[EventCode]
Activity processing error on [ApiName]
Transaction ID : [OriginTransactionID]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100052, 3, N'Log', 
N'Updating bullhorn dashboard with failure.
Message for bullhorn ----------------------
GP processing failed on [ApiName]
Transaction ID : [OriginTransactionID]
GP Error code : [ErrorCode]
GP Error status : [ErrorState]
Client number : [BusinessEntityID]
PAM Message : [Message]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
Package Data : [JsonData]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100052, 3, N'Out', 
N'[EventCode]
GP processing failed on [ApiName]
Transaction ID : [OriginTransactionID]
GP Error code : [ErrorCode]
GP Error status : [ErrorState]
Client number : [BusinessEntityID]
PAM Message : [Message]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100053, 5, N'Log', 
N'Updating bullhorn dashboard with success.
Message for bullhorn ----------------------
Saved to GP successfully
Transaction ID : [OriginTransactionID]
Client number : [BusinessEntityID]
-------------------------------------------
DIS transaction ID : [DISTransactionID]
Package Data : [JsonData]
GP Error code : [ErrorCode]
GP Error status : [ErrorState]
Message : [Message]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100053, 5, N'Out', 
N'[EventCode]
Saved to GP successfully
Transaction ID : [OriginTransactionID]
Client number : [BusinessEntityID]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100055, 6, N'Log', 
N'Processing GP through PAM SP.
DIS Transaction ID : [DISTransactionID]
Method name : [ObjectProcessingModuleName]
Message : [Message]
-------------------------------
SP Script : [ObjectValue]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100054, 6, N'Log', 
N'GP PAM procedure result.
-----------------------------------
Error code : [ErrorCode]
Error state : [ErrorState]
Effected record count : [RowCount]
-----------------------------------
DIS Transaction ID : [DISTransactionID]
Method name : [ObjectProcessingModuleName]
Message : [Message]
-----------------------------------
SP Script : [ObjectValue]
', @AppID, 1)




INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100056, 2, N'Log', 
N'Error processing in GP.

Exception : [Exception]
-----------------------------------
Error code : [ErrorCode]
Error state : [ErrorState]
-----------------------------------
DIS Transaction ID : [DISTransactionID]
Method name : [ObjectProcessingModuleName]
-----------------------------------
SP Script : [ObjectValue]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100057, 2, N'Log', 
N'Exception during task execution.

Exception : [Exception]
-----------------------------------

DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]
Entity ID : [BusinessEntityID]
On : [ApplicationName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100058, 6, N'Log', 
N'Processing data through rule engine & their details.

For type : [MappingFromTypeName]
---------------------------------
Input object value : [MappingFromTypeValue]
---------------------------------
Rule set name : [RuleSetName]
DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]

On : [ApplicationName]
---------------------------------
Note : [Message]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100059, 2, N'Log', 
N'Rule processing error.

Exception : [Exception]
-----------------------
For type : [MappingFromTypeName]
---------------------------------
Input object value : [MappingFromTypeValue]
---------------------------------
Rule set name : [RuleSetName]
DIS Transaction ID : [DISTransactionID]
Entity ID : [BusinessEntityID]
On : [ApplicationName]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100060, 7, N'Log', 
N'Rule validation successfully completed.

For type : [MappingFromTypeName]
---------------------------------
Input object value : [MappingFromTypeValue]
---------------------------------
Output object value : [MappingInToTypeValue]
---------------------------------
Rule set name : [RuleSetName]
DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]
On : [ApplicationName]
---------------------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100061, 3, N'Log', 
N'Rule validation failed.

For type : [MappingFromTypeName]
---------------------------------
Input object value : [MappingFromTypeValue]
---------------------------------
Output object value : [MappingInToTypeValue]
---------------------------------
Rule set name : [RuleSetName]
DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]
Entity ID : [BusinessEntityID]
On : [ApplicationName]
---------------------------------
Note : [Message]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100062, 7, N'Log', 
N'Mapping between two objects has been completed successfully.

Input type : [MappingFromTypeName]
Input object value : [MappingFromTypeValue]
---------------------------------
Output type : [MappingInToTypeName]
Output object value : [MappingInToTypeValue]
---------------------------------
DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]
On : [ApplicationName]
---------------------------------
Note : [Message]
', @AppID, 1)




INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100063, 6, N'Log', 
N'Processing data mapping between two object.

Input type : [MappingFromTypeName]
Input object value : [MappingFromTypeValue]
---------------------------------
Output type : [MappingInToTypeName]
Output object value : [MappingInToTypeValue]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100064, 2, N'Log', 
N'Mapping between two objects failed.

Input type : [MappingFromTypeName]
Input object value : [MappingFromTypeValue]
---------------------------------
Output type : [MappingInToTypeName]
Output object value : [MappingInToTypeValue]
---------------------------------
DIS Transaction ID : [DISTransactionID]
Bullhorn transaction ID : [OriginTransactionID]
Entity ID : [BusinessEntityID]
---------------------------------
Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100065, 2, N'Log', 
N'Data mapping error.

Exception : [Exception]
---------------------------------
Input type : [MappingFromTypeName]
Input object value : [MappingFromTypeValue]
---------------------------------
Output type : [MappingInToTypeName]
Output object value : [MappingInToTypeValue]
', @AppID, 1)

-- 6th set 
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100066, 7, N'Out', 
N'[EventCode] Database operation successful.
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100066, 7, N'Log', 
N'Database operation successful.

Message : [Message]
DISTransactionID : [DISTransactionID]
Data : [ObjectValue]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100067, 3, N'Out', 
N'[EventCode] Database operation is failed.
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100067, 3, N'Log', 
N'Database operation is failed.

Exception : [Exception]
Message : [Message]
Location : [ObjectProcessingModuleName] 
-------------------------------
DISTransactionID : [DISTransactionID]
BullhornTransactionID : [OriginTransactionID]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100068, 3, N'Out', 
N'[EventCode] Failed to insert data into DIS Holding table.
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100068, 3, N'Log', 
N'Failed to insert data into DIS Holding table.

DISTransactionID : [DISTransactionID]
CandidateID : [BusinessEntityID]
PlacementID : [BusinessEntityID3]
EmployeeID  : [BusinessEntityID2]
Message : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100069, 7, N'Log', 
N'GP Operation Successful.
DISTransactionID : [DISTransactionID]
Error code : [ErrorCode]
Error state : [ErrorState]
PAM error message : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100070, 3, N'Log', 
N'GP Operation failed.
DISTransactionID : [DISTransactionID]
Error code : [ErrorCode]
Error state : [ErrorState]
PAM error message : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100071, 6, N'Log', 
N'Authenticating windows credentials.
Domain name : [DomainName]
Server name : [ServerName]
User name : [Username]
Password : [Password]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100072, 2, N'Log', 
N'Windows authentication has encountered some exception.
Domain name : [DomainName]
Server name : [ServerName]
User name : [Username]
Password : [Password]
--------------------------
Exception : [Exception]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100073, 2, N'Log', 
N'Error in crypto.
Exception : [Exception]
Encoded value : [MappingFromTypeValue]
On : [ObjectProcessingModuleName]
-----------------------
Note : [ServerName]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100074, 6, N'Log', 
N'Crypto details.
For : [ObjectProcessingModuleName]
value : [ObjectValue]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100075, 7, N'Log', 
N'Crypto success.
--------------------------
Encoded value : [MappingFromTypeValue]
Decoded value : [MappingInToTypeValue]
On : [ObjectProcessingModuleName]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100076, 6, N'Log', 
N'Form authentication details.
User name : [Username]
Info : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100077, 6, N'Log', 
N'Logout out details.
--------------------------
Note : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100077, 6, N'Log', 
N'Logout out details.
--------------------------
Note : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100078, 7, N'Log', 
N'User authenticated successfully.
--------------------------
User name : [Username]
Password : [Password]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100079, 3, N'Log', 
N'User authentication failed.
--------------------------
User name : [Username]
Password : [Password]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100080, 3, N'Log', 
N'Crypto failed.
--------------------------
Encoded value : [MappingFromTypeValue]
Decoded value : [MappingInToTypeValue]
On : [ObjectProcessingModuleName]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100081, 1, N'Log', 
N'Activity processing has been failed.
--------------------------
API name : [ApiName]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
BusinessEntityID : [BusinessEntityID]
BusinessEntityID2 : [BusinessEntityID2]
BusinessEntityID3 : [BusinessEntityID3]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100082, 7, N'Log', 
N'Required field validation is successful.
--------------------------
Message : [Message]
ObjectValue : [ObjectValue]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
BusinessEntityID : [BusinessEntityID]
BusinessEntityID3 : [BusinessEntityID3]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100083, 3, N'Log', 
N'Missing required field(s)
--------------------------
Message : [Message]
ObjectValue : [ObjectValue]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
BusinessEntityID : [BusinessEntityID]
BusinessEntityID3 : [BusinessEntityID3]
MissingRequriedFields : [MissingRequriedFields]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100083, 3, N'Out', 
N'[EventCode] Missing required fields : [MissingRequriedFields]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100084, 5, N'Log', 
N'ADP Confirmation file(epop023) details.
--------------------------
Message : [Message]
ConfirmationFileName : [ADPConfirmationFileName]
ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
CandidateID : [BusinessEntityID]
EmployeeID : [BusinessEntityID2]
PlacementID : [BusinessEntityID3]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100085, 2, N'Log', 
N'Error reported in ADP confirmation file.
--------------------------
Message : [Message]
ConfirmationFileName : [ADPConfirmationFileName]
Status : [Status]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
CandidateID : [BusinessEntityID]
EmployeeID : [BusinessEntityID2]
PlacementID : [BusinessEntityID3]
', @AppID, 1)
		
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100085, 2, N'Out', 
N'[EventCode]
Error reported in ADP confirmation file.
FileName : [ADPConfirmationFileName]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100086, 7, N'Log', 
N'Update reported in ADP confirmation file.
--------------------------
Message : [Message]
ConfirmationFileName : [ADPConfirmationFileName]
Status : [Status]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
CandidateID : [BusinessEntityID]
EmployeeID : [BusinessEntityID2]
PlacementID : [BusinessEntityID3]
', @AppID, 1)
		
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100086, 2, N'Out', 
N'[EventCode]
ADP Successfully Updated.
FileName : [ADPConfirmationFileName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100087, 4, N'Log', 
N'Warning reported in ADP confirmation file.
--------------------------
Message : [Message]
ConfirmationFileName : [ADPConfirmationFileName]
Status : [Status]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
CandidateID : [BusinessEntityID]
EmployeeID : [BusinessEntityID2]
PlacementID : [BusinessEntityID3]
', @AppID, 1)
		
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100087, 2, N'Out', 
N'[EventCode]
ADP Successfully Updated with [Status] status.
FileName : [ADPConfirmationFileName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100088, 4, N'Log', 
N'
Exception : [Exception]
Message : [Message]
ConfirmationFileName : [ADPConfirmationFileName]
Status : [Status]
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
CandidateID : [BusinessEntityID]
EmployeeID : [BusinessEntityID2]
PlacementID : [BusinessEntityID3]
', @AppID, 1)
		
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100088, 4, N'Out', 
N'[EventCode]
Exception in ADP confirmation file processing.
FileName : [ADPConfirmationFileName]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100089, 6, N'Log', 
N' Note : Authentication Details
--------------------------
ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Security API URL : [URL]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100090, 7, N'Log', 
N' User Credential successfully validated
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100091, 3, N'Log', 
N' Failed to validate User Credential
Message : [Message]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100092, 6, N'Log', 
N' OutGoing request Details

ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Shared key : [Sharedkey]
DISTransactionID : [DISTransactionID]
ExternalTransactionData : [ExternalTransactionData]
ApiName : [ApiName]
DestinationApiName : [DestinationApiName]
EndPointURL : [EndPointURL]
OriginTransactionID : [OriginTransactionID]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100093, 7, N'Log', 
N' 
ActivityID : [ActivityID]
DIS transaction ID : [DISTransactionID]

Note : [Message]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100094, 7, N'Log', 
N' [ApiName] API has successfully communicated with [DestinationApiName] API.

ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Shared key : [Sharedkey]
DISTransactionID : [DISTransactionID]
ExternalTransactionData : [ExternalTransactionData]
ApiName : [ApiName]
DestinationApiName : [DestinationApiName]
EndPointURL : [EndPointURL]
OriginTransactionID : [OriginTransactionID]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100095, 3, N'Log', 
N' [ApiName] API has failed to communicate with [DestinationApiName] API.

ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Exception : [Exception],
DISTransactionID : [DISTransactionID]
OriginTransactionID : [OriginTransactionID]
Shared key : [Sharedkey]
ExternalTransactionData : [ExternalTransactionData]  
ApiName : [ApiName]
DestinationApiName : [DestinationApiName]
EndPointURL : [EndPointURL]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100096, 5, N'Log', 
N' JSON object parsing details........
From type : [MappingFromTypeName]
From value : [MappingFromTypeValue]
--------------------------------------
To type : [MappingInToTypeName]
To value : [MappingInToTypeValue]
--------------------------------------

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100097, 5, N'Log', 
N' File details........

File Location : [FileLocation]
Numbers of files : [RowCount]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]

--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100124, 7, N'Log', 
N' File Found........

File Location : [FileLocation]
Numbers of files : [RowCount]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100116, 6, N'Log', 
N' Activity Starts for Processing........

On : [ApplicationName]
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100099, 7, N'Log', 
N' File Reading Success........

On : [ApplicationName]
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100100, 3, N'Log', 
N' File Reading Failed........

On : [ApplicationName]
ApiName : [ApiName]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
File Count : [RowCount]
--------------------------------------
Note : [Message]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100125, 7, N'Log', 
N' Object Validation Success........
--------------------------------------
Object Name : [ObjectName]
Object values : [ObjectValue]
Module name : [ObjectProcessingModuleName]
--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100103, 7, N'Log', 
N' File Moved ........

On : [ApplicationName]
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]

--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100126, 2, N'Log', 
N' Processing error.

On : [ApplicationName]
ApiName : [ApiName]
Exception : [Exception]
-----------------------
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]

--------------------------------------
Note : [Message]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100120, 6, N'Log', 
N' Updating Activity
ActivityID : [ActivityID]
DIS transaction ID : [DISTransactionID]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100119, 7, N'Log', 
N' Creating Activity

ActivityID : [ActivityID]
DIS transaction ID : [DISTransactionID]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100109, 7, N'Log', 
N'FTP download success.

Module name : [ObjectProcessingModuleName]
Object Name : [ObjectName]
Object values : [ObjectValue]
ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100110, 3, N'Log', 
N'FTP download Failed.

Module name : [ObjectProcessingModuleName]
Object Name : [ObjectName]
Object values : [ObjectValue]
ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100111, 7, N'Log', 
N'FTP Upload success.

Module name : [ObjectProcessingModuleName]
Object Name : [ObjectName]
Object values : [ObjectValue]
ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100112, 3, N'Log', 
N'FTP Upload Failed.

Module name : [ObjectProcessingModuleName]
Object Name : [ObjectName]
Object values : [ObjectValue]
ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100113, 5, N'Log', 
N' ADP Process Details.

On : [ApplicationName]
ApiName : [ApiName]
-----------------------
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
File Count : [RowCount]
--------------------------------------
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100114, 5, N'Log', 
N' ADP Process Success.

On : [ApplicationName]
ApiName : [ApiName]
-----------------------
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
OriginTransactionID : [OriginTransactionID]

Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100115, 3, N'Log', 
N' ADP Process Failed.

On : [ApplicationName]
ApiName : [ApiName]
-----------------------
ApiName : [ApiName]
DISTransactionID : [DISTransactionID]
OriginTransactionID : [OriginTransactionID]

Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100107, 7, N'Log', 
N'FTP  success.

ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100108, 3, N'Log', 
N'FTP  Failed.

ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100121, 6, N'Log', 
N'Process  Starts.

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

---------------------------------------
ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Count : [RowCount]
Module Name : [ObjectProcessingModuleName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100127, 7, N'Log', 
N'Process  Success.

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

---------------------------------------
ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Count : [RowCount]
Module Name : [ObjectProcessingModuleName]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100128, 3, N'Log', 
N'Process  Failed.

ApplicationName : [ApplicationName]
ApiName : [ApiName]
Exception : [Exception]
---------------------------------------
ObjectName : [ObjectName]
ObjectValue : [ObjectValue]
Count : [RowCount]
Module Name : [ObjectProcessingModuleName]

----------------------------------------
Note : [Message]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100101, 7, N'Log', 
N' File Writing Success........

On : [ApplicationName]
ApiName : [ApiName]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100102, 3, N'Log', 
N' File Writing Failed........

On : [ApplicationName]
ApiName : [ApiName]
Module name : [ObjectProcessingModuleName]
--------------------------------------
File Location : [FileLocation]
--------------------------------------
File Name : [ObjectName]
File values : [ObjectValue]
--------------------------------------
Note : [Message]

', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100098, 2, N'Log', 
N'File Error.

ApplicationName : [ApplicationName]
ApiName : [ApiName]
Exception : [Exception]
---------------------------------------
FileName : [ObjectName]
FileContent : [ObjectValue]
File Location : [FileLocation]
Module Name : [ObjectProcessingModuleName]

----------------------------------------
Note : [Message]

', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100129, 3, N'Log', 
N'Mapping failed between entity to process rules.
DIS Transaction ID : [DISTransactionID]
---------------------------------
From type : [MappingFromTypeName]
Value : [MappingFromTypeValue]
---------------------------------
To type : [MappingInToTypeName]
Value : [MappingInToTypeValue]
---------------------------------
Updating bullhorn dashboard with following information!
[EventCode]
Mapping failed between entity to process rules.
From type : [MappingFromTypeName]
To type : [MappingInToTypeName]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100129, 3, N'Out', 
N'[EventCode]
Mapping failed between entity to process rules.
From type : [MappingFromTypeName]
To type : [MappingInToTypeName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100130, 7, N'Log', 
N'[ApiName] successfully communicated with [DestinationApiName]
URL : [URL]
Shared key : [Sharedkey]
JSON data : [JsonData]
---------------------------------
Origin Transaction ID : [OriginTransactionID]
Entity ID : [BusinessEntityID]
Entity ID2 : [BusinessEntityID2]
Entity ID3 : [BusinessEntityID3]
---------------------------------
Updating DIS dashboard with following information!
[EventCode] - [ApiName] successfully communicated with [DestinationApiName]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100130, 7, N'Out', 
N'[EventCode] - [ApiName] successfully communicated with [DestinationApiName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100131, 3, N'Log', 
N'[ApiName] failed to communicated with [DestinationApiName]
URL : [URL]
Shared key : [Sharedkey]
JSON data : [JsonData]
---------------------------------
Origin Transaction ID : [OriginTransactionID]
Entity ID : [BusinessEntityID]
Entity ID2 : [BusinessEntityID2]
Entity ID3 : [BusinessEntityID3]
---------------------------------
Updating DIS dashboard with following information!
[EventCode] - [ApiName] failed communicated with [DestinationApiName]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100131, 3, N'Out', 
N'[EventCode] - [ApiName] failed communicated with [DestinationApiName]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100132, 4, N'Log', 
N'Unauthorized request
Validated by : [DestinationApiName]
URL : [URL]
Username : [Username]
Password : [Password]
Shared key : [Sharedkey]
---------------------------------
Returning following response to caller
[EventCode] - Unauthorized request
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100132, 4, N'Out', 
N'[EventCode] - Unauthorized request.
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100133, 1, N'Log', 
N'Unexcepted case value detected. 
Object name : [ObjectName]
Value : [ObjectValue]
Expected : [ObjectExpectedValue]
From module : [ObjectProcessingModuleName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100134, 3, N'Log', 
N'Failed send data to update bullhorn dashboard.
-----------------------------------------------
URL : [URL]
Originating transaction ID : [OriginTransactionID]
Message : [Message]
Status : [Status]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100134, 3, N'Out', 
N'[Message] - Failed to update bullhorn dashboard through transaction API.
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100135, 7, N'Log', 
N'Sent data to update bullhorn dashboard successfully.
-----------------------------------------------
URL : [URL]
Originating transaction ID : [OriginTransactionID]
Message : [Message]
Status : [Status]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100135, 7, N'Out', 
N'[Message] - Updated bullhorn dashboard through transaction API Successfully
', @AppID, 1)




INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100136, 2, N'Log', 
N'Failed to set configurations properly.
-----------------------------------------------
Message : [Message]
Exception : [Exception]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100137, 7, N'Log', 
N'Financial database is valid
--------------------------
Received financial database name : [FinancialDBName]
Expected financial database name : [ObjectExpectedValue]
Rule evaluated database name : [ObjectValue]
Rule set name : [RuleSetName]
--------------------------
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
BusinessEntityID : [BusinessEntityID]
BusinessEntityID2 : [BusinessEntityID2]
BusinessEntityID3 : [BusinessEntityID3]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100138, 3, N'Log', 
N'Invalid financial database
--------------------------
Received financial database name : [FinancialDBName]
Expected financial database name : [ObjectExpectedValue]
Rule evaluated database name : [ObjectValue]
Rule set name : [RuleSetName]
--------------------------
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
BusinessEntityID : [BusinessEntityID]
BusinessEntityID2 : [BusinessEntityID2]
BusinessEntityID3 : [BusinessEntityID3]
--------------------------
Note : [Message]
--------------------------
Updating bullhorn dashboard with following information
--------------------------
[EventCode] Invalid financial database name : [FinancialDBName]
', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100138, 3, N'Out', 
N'[EventCode] Invalid financial database name : [FinancialDBName]
', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100139, 7, N'Log', 
N'Sucessfully CSV file created for UK ListItem
--------------------------
ListItem Name : [ObjectName]
ListItem Value : [ObjectValue]
--------------------------
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
ObjectProcessingModuleName : [ObjectProcessingModuleName]
--------------------------
Note : [Message]

', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100139, 7, N'Out', 
N'[EventCode] File has been created successfully for [ObjectName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100140, 3, N'Log', 
N'Failed to create CSV file UK ListItem
--------------------------
ListItem Name : [ObjectName]
ListItem Value : [ObjectValue]
--------------------------
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
ObjectProcessingModuleName : [ObjectProcessingModuleName]
--------------------------
Note : [Message]

', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100140, 3, N'Out', 
N'[EventCode] Failed to create file for [ObjectName]
', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100141, 2, N'Log', 
N'Exception occurred during UK ListItem data processing
--------------------------
Exception : [Exception]
ListItem Name : [ObjectName]
ListItem Value : [ObjectValue]
--------------------------
Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
ObjectProcessingModuleName : [ObjectProcessingModuleName]
--------------------------
Note : [Message]

', @AppID, 1)
INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100141, 2, N'Out', 
N'[EventCode] Exception occurred during [ObjectName] data processing
Message : [Exception]
', @AppID, 1)



INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100142, 4, N'Log', 
N'Directory path not found...
--------------------------
DirectoryPath : [FileLocation]
DIS transaction ID : [DISTransactionID]
ObjectProcessingModuleName : [ObjectProcessingModuleName]
ServerName : [ServerName]
--------------------------
Note : [Message]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100143, 7, N'Log', 
N'Directory path found...
--------------------------
DirectoryPath : [FileLocation]
DIS transaction ID : [DISTransactionID]
ServerName : [ServerName]

', @AppID, 1)




INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100144, 6, N'Log', 
N'Connecting FTP server with following details.

ServerName : [ServerName]
PortNumber : [PortNumber]
FTPLocalDirectory : [FTPLocalDirectory]
Username : [Username]
Password : [Password]
FTPPrivateKeyName : [FTPPrivateKeyName]
FTPRemoteDirectory : [FTPRemoteDirectory]

Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)


INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100145, 7, N'Log', 
N'Bullhorn Rest Authentication Success.

Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
Candidate ID : [BusinessEntityID]
Employee ID : [BusinessEntityID2]
Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100146, 3, N'Log', 
N'Bullhorn Rest Authentication Failed.

Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
Candidate ID : [BusinessEntityID]
Employee ID : [BusinessEntityID2]
Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100147, 7, N'Log', 
N'Bullhorn Rest Update Success.

Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
Candidate ID : [BusinessEntityID]
Employee ID : [BusinessEntityID2]
Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100148, 3, N'Log', 
N'Bullhorn Rest Update Failed.

Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
Candidate ID : [BusinessEntityID]
Employee ID : [BusinessEntityID2]
Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)

INSERT [dbo].[EventWorkflows] ([EventCode], [LevelID], [ActionType], [Template], [AppID], [IsActive]) 
VALUES ( 100149, 3, N'Log', 
N'Error Occurred While updating data into BH rest service .

Originating transaction ID : [OriginTransactionID]
DIS transaction ID : [DISTransactionID]
Candidate ID : [BusinessEntityID]
Employee ID : [BusinessEntityID2]
Message : [Message]
ApplicationName : [ApplicationName]
ApiName : [ApiName]

', @AppID, 1)





------------------------------------------- END -------------------------------------------













	delete from @AppIDList where AppID = @AppID
END

GO