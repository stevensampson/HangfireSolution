

--DROP WORKFLOW
DELETE from EventWorkflows
Go
--DROP NOTIFICATIONS
delete from NotificationWorkflows
--DROP MAPPINGS
delete from EventLevelsByApplication
delete from NotificationLevelsByApplication
--DROP EXISTING VALUES
delete from [dbo].[EventLevels]
--DROP CODES
delete from EventCodes
SET IDENTITY_INSERT [dbo].[EventLevels] ON 

INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (1, N'FATAL', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (2, N'ERROR', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (3, N'FAILED', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (4, N'WARN', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (5, N'INFO', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (6, N'DEBUG', 1)
INSERT [dbo].[EventLevels] ([LevelID], [LevelName], [IsActive]) VALUES (7, N'SUCCESS', 1)

SET IDENTITY_INSERT [dbo].[EventLevels] OFF
Go