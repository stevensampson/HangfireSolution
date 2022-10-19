
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
Clients : UKStaffing = 3, UKFinance = 16, UKStaffing.Transaction = 31, UKFinance.Transaction = 32
*/

DECLARE @UK_ERROR_SUBJECT as varchar(MAX)
DECLARE @UK_ERROR_BODY as varchar(MAX)
DECLARE @UK_SUCCESS_BODY as varchar(MAX)
declare @UK_SUCCESS_SUBJECT as varchar(MAX)
DECLARE @UK_FAIL_SUBJECT as varchar(MAX)
DECLARE @UK_FAIL_BODY as varchar(MAX)


SET @UK_ERROR_SUBJECT = N'[DataIntegrationServices] -  ATS [ApplicationName] Transaction Error'

SET @UK_ERROR_BODY = N'<!DOCTYPE html>

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
					<table class="contTable" border="0">
						<tr>
							<td colspan="3" style="color: rgb(139, 0, 0); font-weight: bold; padding-bottom: 15px; font-family: Verdana; ">
								Processing of the ATS [ApplicationName] Transaction error!
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


SET @UK_FAIL_SUBJECT = N'[DataIntegrationServices] - ATS [ApplicationName] Transaction Failed'

SET @UK_FAIL_BODY = N'<!DOCTYPE html>

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
							 Processing of the ATS [ApplicationName] Transaction Failed!
						</td>
					</tr>
					<tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Fail</td></tr>
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

SET @UK_SUCCESS_SUBJECT = N'[DataIntegrationServices] - ATS [ApplicationName] Transaction Success'

SET @UK_SUCCESS_BODY = N'<!DOCTYPE html>

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
							Processing of the ATS [ApplicationName] Transaction completed
						</td>
					</tr>
					 <tr valign="top"><td style="width:200px">Status </td><td>:</td><td>Success</td></tr>
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

-- CREATE TEMPLATES

DECLARE @AppIDList TABLE(AppID integer primary key not null)
insert into @AppIDList(AppID) values(3),(16),(31),(32)

DECLARE @AppID integer

while exists (select * from @AppIDList)
BEGIN
	select @AppID = MIN(AppID) from @AppIDList

--ERROR CASES ....
/* 
100002
100005
100010
100012
100018
100027
100028
100031
100035
100047
100056
100057
100059
100064
100065
100141
100072
100098
100095
*/

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100002, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100005, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100010, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100012, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100018, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100027, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100028, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100031, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100035, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100047, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100056, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100057, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100059, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100064, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100065, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100136, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100141, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100072, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100098, 2, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100095, 3, @UK_ERROR_BODY , @AppID, 1, @UK_ERROR_SUBJECT)


	-------------
	/* failed cases 
	100049,100050, 100051, 100052,100140
	 */
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100049, 3, @UK_FAIL_BODY , @AppID, 1, @UK_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100050, 3, @UK_FAIL_BODY , @AppID, 1, @UK_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100051, 3, @UK_FAIL_BODY , @AppID, 1, @UK_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100052, 3, @UK_FAIL_BODY , @AppID, 1, @UK_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100140, 3, @UK_FAIL_BODY , @AppID, 1, @UK_FAIL_SUBJECT)


	---------
	/* success cases  
	, 100139
	 */
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100139, 7, @UK_SUCCESS_BODY , @AppID, 1, @UK_SUCCESS_SUBJECT)






------------------------------------------- END -------------------------------------------













	delete from @AppIDList where AppID = @AppID
END

GO