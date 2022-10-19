
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
Clients : Staffing.Transaction = 11, Finance.Transaction = 1,HR.Transaction=8
*/

DECLARE @TR_ERROR_SUBJECT as varchar(MAX)
DECLARE @TR_ERROR_BODY as varchar(MAX)
DECLARE @TR_SUCCESS_SUBJECT as varchar(MAX)
DECLARE @TR_SUCCESS_BODY as varchar(MAX)
DECLARE @TR_FAIL_SUBJECT as varchar(MAX)
DECLARE @TR_FAIL_BODY as varchar(MAX)


SET @TR_ERROR_SUBJECT = N'[DataIntegrationServices]  Dataprocessing Error'

SET @TR_ERROR_BODY = N'<!DOCTYPE html>

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

							An error has occurred during data processing !

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

SET @TR_FAIL_SUBJECT = N'[DataIntegrationServices] - Dataprocessing Failed'

SET @TR_FAIL_BODY = N'<!DOCTYPE html>

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
							Data processing has been failed!
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

SET @TR_SUCCESS_SUBJECT = N'[DataIntegrationServices] - Dataprocessing successful'

SET @TR_SUCCESS_BODY = N'<!DOCTYPE html>

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
							Data processing has been completed
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

--DROP EXISTING 
delete from NotificationWorkflows

--RE_CREATE TEMPLATES

DECLARE @AppIDList TABLE(AppID integer primary key not null)
insert into @AppIDList(AppID) values(11),(1),(8)

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
*/

	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100002, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100005, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100010, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100012, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100018, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100027, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100028, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100031, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100035, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100047, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100056, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100057, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100059, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100064, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100065, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	--Second set
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100072, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100073, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100085, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100126, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100098, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100136, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100141, 2, @TR_ERROR_BODY , @AppID, 1, @TR_ERROR_SUBJECT)
	
	

	-------------
	/* failed cases 
	100049,100050, 100051, 100052 100053 100068 100129 100083 100138
	 */
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100049, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100050, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100051, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100052, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	--For new sets
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100053, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100068, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100129, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100083, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100138, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_SUBJECT)



	---------
	/* success cases  
	, 100053
	 */
	INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	VALUES (100053, 7, @TR_SUCCESS_BODY , @AppID, 1, @TR_SUCCESS_SUBJECT)

	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (1147, 3, @TR_SUCCESS_BODY , @AppID, 1, @TR_SUCCESS_SUBJECT)

	--INSERT [dbo].[NotificationWorkflows] ([EventCode], [LevelID], [BodyTemplate], [AppID], [IsActive], [SubjectTemplate]) 
	--VALUES (1147, 3, @TR_FAIL_BODY , @AppID, 1, @TR_FAIL_BODY)




------------------------------------------- END -------------------------------------------













	delete from @AppIDList where AppID = @AppID
END

GO