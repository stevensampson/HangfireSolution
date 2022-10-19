


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
Employee :  HR.Employee = 7, Finance.Employee = 4,Staffing.Employee = 12

*/

DECLARE @Candidate_Post_ERROR_SUBJECT as varchar(MAX)
DECLARE @Candidate_Post_ERROR_BODY as varchar(MAX)
DECLARE @Candidate_Post_SUCCESS_SUBJECT as varchar(MAX)
DECLARE @Candidate_Post_SUCCESS_BODY as varchar(MAX)
DECLARE @Candidate_Post_FAIL_SUBJECT as varchar(MAX)
DECLARE @Candidate_Post_FAIL_BODY as varchar(MAX)

declare @Candidate_Post_Processing_FAIL_SUBJECT as varchar(MAX)
DECLARE  @Candidate_Post_Processing_FAIL_BODY as varchar(MAX)
DECLARE @Candidate_Post_Processing_ERROR_SUBJECT as varchar(MAX)
DECLARE @Candidate_Post_Processing_ERROR_BODY as varchar(MAX)





SET @Candidate_Post_Processing_ERROR_SUBJECT=N'[DataIntegrationServices] - Data Processing for Employee Error'
SET @Candidate_Post_Processing_ERROR_BODY = N'<!DOCTYPE html>

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
                            Data processing  error!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td>[MachineName]</td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td>[DateTime]</td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td>[ApplicationName]</td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td>[OriginTransactionID]</td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td>[DISTransactionID]</td></tr>                  
                    <tr valign="top"><td>Message </td><td>:</td><td>[Message]</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td>[Exception]</td></tr>
                  
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
'

SET @Candidate_Post_Processing_FAIL_SUBJECT= N'[DataIntegrationServices] - Data Processing for Employee Failed'
SET @Candidate_Post_Processing_FAIL_BODY= N'<!DOCTYPE html>

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
                            Data processing  failed!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Failed</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td>[MachineName]</td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td>[DateTime]</td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td>[ApplicationName]</td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td>[OriginTransactionID]</td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td>[DISTransactionID]</td></tr>                    
                    <tr valign="top"><td>Message </td><td>:</td><td>[Message]</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        
    </table>
</body>
</html>
'



SET @Candidate_Post_ERROR_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Error'
SET @Candidate_Post_ERROR_BODY = N'<!DOCTYPE html>

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
                          Processing of the [OperationTypeForBody] Employee  error!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Error</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td>[MachineName]</td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td>[DateTime]</td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td>[ApplicationName]</td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td>[OriginTransactionID]</td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td>[DISTransactionID]</td></tr>                   
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td>[BusinessEntityID]</td></tr>
					<tr valign="top"><td>Employee ID </td><td>:</td><td>[BusinessEntityID2]</td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>[Message]</td></tr>
                    <tr valign="top"><td>Error </td><td>:</td><td>[Exception]</td></tr>
                  
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
'


SET @Candidate_Post_FAIL_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Failed'
SET @Candidate_Post_FAIL_BODY = N'<!DOCTYPE html>

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
                          Processing of the [OperationTypeForBody] Employee failed!
</td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Failed</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td>[MachineName]</td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td>[DateTime]</td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td>[ApplicationName]</td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td>[OriginTransactionID]</td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td>[DISTransactionID]</td></tr>                   
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td>[BusinessEntityID]</td></tr>
					<tr valign="top"><td>Employee ID </td><td>:</td><td>[BusinessEntityID2]</td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>[Message]</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
        
    </table>
</body>
</html>
'

SET @Candidate_Post_SUCCESS_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Success'
SET @Candidate_Post_SUCCESS_BODY = N'<!DOCTYPE html>

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
                          Processing of the [OperationTypeForBody] Employee completed
                        </td>
                    </tr>
                    <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Success</td></tr>
                    <tr valign="top"><td>ServerName </td><td>:</td><td>[MachineName]</td></tr>
                    <tr valign="top"><td>DateTime </td><td>:</td><td>[DateTime]</td></tr>
                    <tr valign="top"><td>Process </td><td>:</td><td>[ApplicationName]</td></tr>
                    <tr valign="top"><td>Bullhorn Transaction ID </td><td>:</td><td>[OriginTransactionID]</td></tr>
                    <tr valign="top"><td>DIS Transaction ID </td><td>:</td><td>[DISTransactionID]</td></tr>                   
                    <tr valign="top"><td>Candidate ID </td><td>:</td><td>[BusinessEntityID]</td></tr>
					<tr valign="top"><td>Employee ID </td><td>:</td><td>[BusinessEntityID2]</td></tr>
                    <tr valign="top"><td>Message </td><td>:</td><td>[Message]</td></tr>
                </table>
            </td>
        </tr>
        <tr><td><!-- some gap --> &nbsp; </td></tr>
      
    </table>
</body>
</html>
'


--CREATE TEMPLATES

DECLARE @AppIDList TABLE(AppID integer primary key not null)
insert into @AppIDList(AppID) values(15)

DECLARE @AppID integer
DECLARE @ApiID integer

while exists (select * from @AppIDList)
BEGIN
	select @AppID = MIN(AppID) from @AppIDList


	DECLARE @ApiIDList TABLE(ApiID integer primary key not null)
	insert into @ApiIDList(ApiID) values(75)

	while exists (select * from @ApiIDList)
	BEGIN
		select @ApiID = MIN(ApiID) from @ApiIDList

			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID],[PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100002, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100005, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100010, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100012, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100018, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100027, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100028, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100031, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100035, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100047, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100056, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100057, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100059, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100064, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100065, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100149, 2, @Candidate_Post_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_ERROR_SUBJECT)


			---------------------------------
			/*Error Mail while file processing
			100098
			*/

			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100098, 3, @Candidate_Post_Processing_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_ERROR_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100108, 3, @Candidate_Post_Processing_ERROR_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_ERROR_SUBJECT)

			------------------------------------------

			-------------
			/* failed cases 
			100049,100050, 100051, 100052,100068,100083,100070,100148,100146
			 */
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100049, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100050, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			--VALUES (100051, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100052, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100068, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100083, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100070, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100148, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100146, 3, @Candidate_Post_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_FAIL_SUBJECT)

			/*failed Case for FileProcessing
			100100,100102,100104,100106,100011

			*/

			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100100, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100102, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100104, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100106, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			--VALUES (100011, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100112, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100110, 3, @Candidate_Post_Processing_FAIL_BODY , @AppID, @ApiID, 1, @Candidate_Post_Processing_FAIL_SUBJECT)

			/* Failed case for FTP Processing
			100112,100110
			*/
	
			---------
			/* success cases  
			, 100053,100069,100147
			 */
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100053, 7, @Candidate_Post_SUCCESS_BODY , @AppID, @ApiID, 1, @Candidate_Post_SUCCESS_SUBJECT)

			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100069, 7, @Candidate_Post_SUCCESS_BODY , @AppID, @ApiID, 1, @Candidate_Post_SUCCESS_SUBJECT)
			INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [PriorityApiId], [IsActive], [SubjectTemplate]) 
			VALUES (100147, 7, @Candidate_Post_SUCCESS_BODY , @AppID, @ApiID, 1, @Candidate_Post_SUCCESS_SUBJECT)

			--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
			--VALUES (1147, 3, @CLIENT_SUCCESS_BODY , @AppID, 1, @CLIENT_SUCCESS_SUBJECT)

			--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
			--VALUES (1147, 3, @CLIENT_FAIL_BODY , @AppID, 1, @CLIENT_FAIL_BODY)




------------------------------------------- END -------------------------------------------










		delete from @ApiIDList where ApiID = @ApiID
	END


	delete from @AppIDList where AppID = @AppID
END

GO