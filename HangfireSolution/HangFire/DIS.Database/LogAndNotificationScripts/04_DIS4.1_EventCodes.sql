

--- RE-CREATE CODES
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100001, N'CONFIG_KEY_ERROR', N'When a null object reference error will be there.', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100002, N'HTTP_KEY_ERROR', N'Some http header is not provided or invalid.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100003, N'HTTP_KEY_MISMATCH', N'HTTP header value not matching.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100004, N'HTTP_KEY_OK', N'HTTP header is matched.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100005, N'HTTP_CONTEXT_ERROR', N'Problem processing HTTP context object.', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100006, N'JSON_SCHEMA_VALIDATION_BEGINS', N'Starting schema validations of a JSON request.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100007, N'JSON_INVALID_JSONDATA', N'JSON data is invalid.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100008, N'JSON_SCHEMA_VALIDATION_STATUS', N'Status of the schema validation.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100009, N'JSON_SCHEMA_VALIDATION_ERROR', N'Schema errors reported by validator.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100010, N'JSON_SCHEMA_VALIDATION_EXCEPTION', N'If validation process got some exception. ', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100011, N'FILE_NOT_FOUND', N'File not found.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100012, N'FILE_MAPPATH_ERROR', N'File path processing exception.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100013, N'FILE_PATH_INVALID', N'The provided path is invalid.', 1)

--2ND review set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100014, N'HTTP_OUTGOING_REQUEST_DETAILS', N'Log for all REST request made', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100015, N'HTTP_RESPONSE_SUCCESS', N'When HTTP response is 200', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100016, N'HTTP_RESPONSE_FAIL', N'When HTTP response is not 200', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100017, N'OBJECT_VALIDATION_FAIL', N'If any object is having unexpected value', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100018, N'GENERAL_EXCEPTION', N'For any general exception encountered', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100019, N'TASK_RETRYING', N'Task retry method invoked', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100020, N'TASK_VALIDATING_PROPERTY', N'When task class is validating properties before jumping into threaded retry loop', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100021, N'TASK_RETRY_RESULT', N'Log result of each retry made', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100022, N'TASK_IF_RETRY_REQUIRED', N'Log if another retry round if required or not', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100023, N'SOAP_SERVICE_AVAILABILITY_FAIL', N'Soap service is not available.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100024, N'SOAP_SERVICE_AVAILABILITY_SUCCESS', N'Soap service is available', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100025, N'SOAP_SERVICE_RETURN_SUCCESS', N'Soap transaction was successful', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100026, N'SOAP_SERVICE_RETURN_FAIL', N'Soap transaction was failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100027, N'SOAP_SERVICE_PROCESS_ERROR', N'Soap transaction has some exception', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100028, N'HTTP_PROCESS_ERROR', N'Http/Rest transaction has some exception', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100029, N'SOAP_SERVICE_CALL_DETAILS', N'Outgoing soap request details', 1)

--3rd set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100030, N'JSON_PARSING_STATUS', N'The status of JSON parsing', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100031, N'JSON_PARSING_EXCEPTION', N'Exception during JSON parsing', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100032, N'HTTP_REQUEST_ACCEPTED', N'HTTP rest request is valid to process.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100033, N'HTTP_REQUEST_REJECTED', N'HTTP Rest request is invalid', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100034, N'GENERAL_INFO', N'General debug message', 1)


--#4th set

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100035, N'DB_DISTRANSACTION_ERROR', N'Error in DIS transaction processing.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100036, N'DB_DISTRANSACTION_DETAILS', N'DIS transaction details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100037, N'DB_DISTRANSACTION_ID_FOUND', N'DIS transaction GUID found in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100038, N'DB_DISTRANSACTION_UPDATE_SUCCESS', N'DIS transaction updated in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100039, N'DB_DISTRANSACTION_ID_NOTFOUND', N'DIS transaction GUID not found in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100040, N'DB_DISTRANSACTION_INSERT_SUCCESS', N'DIS transaction inserted into database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100041, N'DB_DISTRANSACTION_INSERT_VIOLATION', N'DIS transaction policy violation detected.', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100042, N'DB_DISTRANSACTION_ACTIVITY_DETAILS', N'DIS transaction activity details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100043, N'DB_DISTRANSACTION_ACTIVITY_INSERT_SUCCESS', N'DIS transaction activity inserted in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100044, N'DB_DISTRANSACTION_ACTIVITY_ID_FOUND', N'DIS transaction activity ID found in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100045, N'DB_DISTRANSACTION_ACTIVITY_UPDATE_SUCCESS', N'DIS transaction activity updated in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100046, N'DB_DISTRANSACTION_ACTIVITY_ID_NOTFOUND', N'DIS transaction activity ID not found in database.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100047, N'DB_DISTRANSACTION_ACTIVITY_ERROR', N'Error in DIS transaction activity processing.', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100048, N'BH_DATA_RECEIVED', N'Bullhorn update : Request received from bull horn and processing.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100049, N'BH_APICOMMUNICATION_FAILED', N'Bullhorn update : Data processing failed for API communication failure.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100050, N'BH_RULE_FAILED', N'Bullhorn update : Rule validation failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100051, N'BH_ACTIVITY_FAILED', N'Activity failed and stopping data processing.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100052, N'BH_GP_FAILED', N'Bullhorn update : PAM/GP Operation failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100053, N'BH_GP_COMPLETED', N'Bullhorn update : PAM/GP Operation successful.', 1)

--4th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100054, N'DB_GP_PAM_RESULT', N'GP PAM SP processing result.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100055, N'DB_GP_PAM_DETAILS', N'GP PAM details before start processing through SP.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100056, N'DB_GP_PAM_ERROR', N'GP PAM Error details.', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100057, N'TASK_EXCEPTION', N'Exception during task execution.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100058, N'RULE_DETAILS', N'Processing data through rule engine & their details.', 1)

--5th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100059, N'RULE_EXCEPTION', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100060, N'RULE_SUCCESS', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100061, N'RULE_FAILED', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100062, N'MAPPING_SUCCESS', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100063, N'MAPPING_DETAILS', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100064, N'MAPPING_FAIL', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100065, N'MAPPING_ERROR', N'Processing data through rule engine & their details.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100066, N'DB_SUCCESS', N'Data base operation is success.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100067, N'DB_ERROR', N'Data base operation fail.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100068, N'BH_DATA_HOLDING_FAIL', N'Failed to save data into DIS Holding table', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100069, N'GP_PROCESS_SUCCESS', N'Gp Process success', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100070, N'GP_PROCESS_FAIL', N'Gp Process failed', 1)

--6th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100071, N'PRINCIPAL_VALIDATING', N'Validating credentials through windows foundations', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100072, N'PRINCIPAL_VALIDATION_ERROR', N'Error validating credentials using windows foundations', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100073, N'CRYPTO_EXCEPTION', N'Error in AES encryption engine processing', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100074, N'CRYPTO_DETAILS', N'Details of inputs before processing the data', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100075, N'CRYPTO_SUCCESS', N'Data processed successfully in encryption engine', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100076, N'LOGIN_DETAILS', N'Details of login before validating the credentials', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100077, N'LOGOUT_DETAILS', N'Details of logout process.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100078, N'LOGIN_SUCCESS', N'Login confirmations.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100079, N'LOGIN_FAILED', N'Login failed.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100080, N'CRYPTO_FAILED', N'Data processed successfully in encryption engine', 1)

--6th set(anish)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100081, N'ACTIVITY_PROCESSING_FAILED', N'Activity processing failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100082, N'RULE_VALIDATION_SUCCESSFOR_REQURIEDFIELDS', N' Successfully validate required field ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100083, N'BH_RULE_VALIDATION_FAILFOR_REQURIEDFIELDS', N' Failed to validate required fields ', 1)

--7th set(Suvankar)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100084, N'CONFIRMATION_FILE_DETAILS', N'ADP Confirmation file(epop023) details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100085, N'CONFIRMATION_FILE_STATUS_ERROR', N' Error reported in ADP confirmation file ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100086, N'CONFIRMATION_FILE_STATUS_UPDATE', N' Update reported in ADP confirmation file ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100087, N'CONFIRMATION_FILE_STATUS_WARNING', N'Warning reported in ADP confirmation file', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100088, N'CONFIRMATION_FILE_PROCESSING_ERROR', N' Error in confirmation file processing ', 1)

--8th set(UK)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100089, N'HTTP_REQUEST_AUTHENTICATE_DETAILS', N'Authentication Details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100090, N'HTTP_REQUEST_AUTHENTICATE_SUCCESS', N'Authentication Successful', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100091, N'HTTP_REQUEST_AUTHENTICATE_FAIL', N'Authentication Failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100092, N'SOAP_REQUEST_OUTGOING_DETAILS', N'Soap service outgoing request details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100093, N'ACTIVITY_PROCESSING_SUCCESSFUL', N'Activity processing is successful', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100094, N'SOAP_REQUEST_COMMUNICATION_SUCCESS', N'Soap request communication is successful', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100095, N'SOAP_REQUEST_COMMUNICATION_ERROR', N'Soap request communication has failed', 1)


INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100096, N'JSON_PARSING_DETAILS', N'Details before parsing a json object', 1)



--9th set (Avijit)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100097, N'FILE_IO_DETAILS', N'File Details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100098, N'FILE_IO_ERROR', N'File Error', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100099, N'FILE_IO_READ_SUCCESS', N'File Reading Successfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100100, N'FILE_IO_READ_FAILED', N'File Reading Failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100101, N'FILE_IO_WRITE_SUCCESS', N'File Writing PROCESS_EXCEPTIONSuccessfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100102, N'FILE_IO_WRITE_FAILED', N'File Writing Failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100103, N'FILE_IO_MOVE_SUCCESS', N'File Moving Successfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100104, N'FILE_IO_MOVE_FAILED', N'File Moving Failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100105, N'FILE_IO_DELETE_SUCCESS', N'File deleted successfully ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100106, N'FILE_IO_DELETE_FAILED', N'File deleted failed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100107, N'FTP_SUCCESS', N'FTP process Successfully completed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100108, N'FTP_ERROR', N'FTP process Failed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100109, N'FTP_DOWNLODE_SUCCESS', N'FTP download process successfully completed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100110, N'FTP_DOWNLODE_FAILED', N'FTP download process Failed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100111, N'FTP_UPLODE_SUCCESS', N'FTP Upload process successfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100112, N'FTP_UPLODE_FAILED', N'FTP Upload process Failed ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100113, N'ADP_PROCESS_DETAILS', N'ADP process details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100114, N'ADP_PROCESS_SUCCESS', N'ADP process successfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100115, N'ADP_PROCESS_FAILED', N'ADP process failed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100116, N'ACTIVITY_PROCESSING_START', N'Activity Processing starts', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100117, N'ACTIVITY_PROCESSING_EXCEPTION', N'Activity Processing Exception details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100118, N'ACTIVITY_PROCESSING_DETAILS', N'Activity Processing  details', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100119, N'ACTIVITY_CREATING', N'Creating new activity', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100120, N'ACTIVITY_UPDATING', N'Updating existing activity', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100121, N'PROCESS_START', N'Beginging of new process', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100122, N'PROCESS_ABORT', N'Process Abort due to some exception during process execution', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100123, N'PROCESS_END', N'Process ended', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100124, N'FILE_FOUND', N'File Found To start Processing', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100125, N'OBJECT_VALIDATION_SUCCESS', N'Object Validation successfully completed', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100126, N'PROCESS_EXCEPTION', N'Exception occurred during Processing', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100127, N'PROCESS_SUCCESSFULL', N'Process Was successful', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100128, N'PROCESS_FAILED', N'Process Was successful', 1)


INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100129, N'BH_MAPPING_FAILED', N'Mapping failed between two types', 1)

-- 10th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100130, N'APICOMMUNICATION_SUCCESSFUL', N'Service level event for successful communication between two API.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100131, N'APICOMMUNICATION_FAILED', N'Service level event for failed communication between two API.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100132, N'APICOMMUNICATION_UNAUTHORIZED', N'Service level event for unauthorized return from security API.', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100133, N'FATAL_UNEXPECTED_CONDITIONFLAG', N'Unexpected value in switch case. Fatal error!.', 1)

--11th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100134, N'TRANSACTIONAPI_DASHBOARDUPDATE_FAIL', N'Transaction API failed to send data', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100135, N'TRANSACTIONAPI_DASHBOARDUPDATE_SUCCESSFUL', N'Transaction API sent data successfully', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100136, N'CONFIG_ERROR', N'Some error has occurred during configuration setup', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100137, N'RULE_VALIDATION_SUCCESSFOR_FINANCIALDBNAME', N' Successfully validate financial database name ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100138, N'BH_RULE_VALIDATION_FAILFOR_FINANCIALDBNAME', N' Failed to validate financial database name ', 1)

--12th set
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100139, N'UK_LIST_PROCESSING_SUCCESS', N' Successfully CSV file created for UK list Item ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100140, N'UK_LIST_PROCESSING_FAIL', N' Failed to create CSV  file  for UK list Item ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100141, N'UK_LIST_PROCESSING_EXCEPTION', N' Exception occurred during CSV file creation for UK list Item ', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100142, N'DIRECTORY_NOT_FOUND', N'Directory path not found', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100143, N'DIRECTORY_FOUND', N'Directory path not found', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100144, N'FTP_DETAILS', N'FTP details for connecting', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100145, N'BH_REST_AUTHENTICATION_SUCCESS', N'Successfully authenticate to bullhorn rest', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100146, N'BH_REST_AUTHENTICATION_FAILED,', N'Failed to authenticate to bullhorn rest', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100147, N'BH_REST_UPDATE_SUCCESS', N'Update Data on bullhorn rest', 1)
INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100148, N'BH_REST_UPDATE_FAILED', N' Failed to Update  Data on bullhorn rest', 1)

INSERT [dbo].[EventCodes] ([EventCode], [EventKey], [Description], [IsActive]) VALUES (100149, N'BH_REST_UPDATE_ERROR', N' Error while updating  Data on bullhorn rest', 1)











-- END of set









































----------------


GO

