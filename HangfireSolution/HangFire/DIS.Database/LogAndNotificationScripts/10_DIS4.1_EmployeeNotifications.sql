﻿


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

DECLARE @Employee_ERROR_SUBJECT as varchar(MAX)
DECLARE @Employee_ERROR_BODY as varchar(MAX)
DECLARE @Employee_SUCCESS_SUBJECT as varchar(MAX)
DECLARE @Employee_SUCCESS_BODY as varchar(MAX)
DECLARE @Employee_FAIL_SUBJECT as varchar(MAX)
DECLARE @Employee_FAIL_BODY as varchar(MAX)

declare @Employee_Processing_FAIL_SUBJECT as varchar(MAX)
DECLARE  @Employee_Processing_FAIL_BODY as varchar(MAX)
DECLARE @Employee_Processing_ERROR_SUBJECT as varchar(MAX)
DECLARE @Employee_Processing_ERROR_BODY as varchar(MAX)





SET @Employee_Processing_ERROR_SUBJECT=N'[DataIntegrationServices] - Data Processing for Employee Error'
SET @Employee_Processing_ERROR_BODY = N'<!DOCTYPE html>

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

SET @Employee_Processing_FAIL_SUBJECT= N'[DataIntegrationServices] - Data Processing for Employee Failed'
SET @Employee_Processing_FAIL_BODY= N'<!DOCTYPE html>

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



SET @Employee_ERROR_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Error'
SET @Employee_ERROR_BODY = N'<!DOCTYPE html>

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
                    <tr valign="top"><td>Placement ID </td><td>:</td><td>[BusinessEntityID3]</td></tr>
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


SET @Employee_FAIL_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Failed'
SET @Employee_FAIL_BODY = N'<!DOCTYPE html>

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

SET @Employee_SUCCESS_SUBJECT = N'[DataIntegrationServices] - [OperationTypeForSubject] Employee Success'
SET @Employee_SUCCESS_BODY = N'<!DOCTYPE html>

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
insert into @AppIDList(AppID) values(4),(7),(12)

DECLARE @AppID integer

while exists (select * from @AppIDList)
BEGIN
	select @AppID = MIN(AppID) from @AppIDList

--ERROR CASES ....
/* 
EventCode	LevelID	ActionType	AppID	IsActive
100002	2	Log	10	1
100005	2	Log	10	1
100010	2	Log	10	1
100012	2	Log	10	1
100018	2	Log	10	1
100027	2	Log	10	1
100028	2	Log	10	1
100031	2	Log	10	1
100035	2	Log	10	1
100047	2	Log	10	1
100056	2	Log	10	1
100057	2	Log	10	1
100059	2	Log	10	1
100064	2	Log	10	1
100065	2	Log	10	1
100072	2	Log	10	1
100073	2	Log	10	1
100085	2	Log	10	1
100126	2	Log	10	1
100098	2	Log	10	1
100136	2	Log	10	1
100141	2	Log	10	1


suspect 100085.86.87
*/

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100002, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100005, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100010, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100012, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100018, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100027, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100028, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100031, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100035, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100047, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100056, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100057, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100059, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100064, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100065, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100067, 2, @Employee_ERROR_BODY , @AppID, 1, @Employee_ERROR_SUBJECT)

	
	---------------------------------
	/*Error Mail while file processing
	100098
	*/

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100098, 3, @Employee_Processing_ERROR_BODY , @AppID, 1, @Employee_Processing_ERROR_SUBJECT)


	------------------------------------------

	-------------
	/* failed cases 
	100049,100050, 100051, 100052,100068,100083,100070
	 */
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100049, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100050, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100051, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (100052, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100068, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100083, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100070, 3, @Employee_FAIL_BODY , @AppID, 1, @Employee_FAIL_SUBJECT)

	/*failed Case for FileProcessing
	100100,100102,100104,100106,100011

	*/

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100100, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100102, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100104, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100106, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (100011, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100112, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100110, 3, @Employee_Processing_FAIL_BODY , @AppID, 1, @Employee_Processing_FAIL_SUBJECT)

	/* Failed case for FTP Processing
	100112,100110
	*/
	
	---------
	/* success cases  
	, 100053,100069
	 */
	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (100053, 7, @Employee_SUCCESS_BODY , @AppID, 1, @Employee_SUCCESS_SUBJECT)

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100069, 7, @Employee_SUCCESS_BODY , @AppID, 1, @Employee_SUCCESS_SUBJECT)

	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (1147, 3, @CLIENT_SUCCESS_BODY , @AppID, 1, @CLIENT_SUCCESS_SUBJECT)

	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (1147, 3, @CLIENT_FAIL_BODY , @AppID, 1, @CLIENT_FAIL_BODY)




------------------------------------------- END -------------------------------------------













	delete from @AppIDList where AppID = @AppID
END

GO