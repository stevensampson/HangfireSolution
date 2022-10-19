-- =============================================
-- Author:		SUMAN KUMAR NATH
-- Create date: 1/20/2015
-- Description:	Inserts a log
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllEventsByAppID]
	-- Add the parameters for the stored procedure here
	@AppID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	DECLARE @EventCode int, @LevelID  int, @ActionType varchar(3), @Template varchar(MAX), @CAppID int

	IF NOT EXISTS(SELECT Id from Business_Area_Application a where a.Id = @AppID and a.EnableLog = 1)	
	BEGIN
	 -- OK Logging is diabled , just get out of here
	 PRINT 'Log is disabled for APP : ' + CAST(@AppID as varchar)
	 RETURN	
	END

IF EXISTS(SELECT LevelID FROM EventLevelsByApplication a WHERE a.ApplicationID = @AppID)
BEGIN
	
	SELECT t.EventCode,ev.EventKey, el.LevelName, t.ActionType, t.Template, t.AppID as PriorityAppID, t.PriorityApiId
		FROM EventWorkflows t
		INNER JOIN EventCodes ev on ev.EventCode = t.EventCode 
		INNER JOIN EventLevels el on el.LevelID = t.LevelID
		INNER JOIN EventLevelsByApplication apple on apple.LevelId = t.LevelID 
		where t.IsActive=1 and ev.IsActive=1
		and t.AppID = @AppID and apple.ApplicationID= @AppID

END
ELSE
BEGIN
 PRINT 'ELSE'
	
	SELECT t.EventCode, ev.EventKey,el.LevelName, t.ActionType, t.Template, t.AppID as PriorityAppID, t.PriorityApiId
		FROM EventWorkflows t
		INNER JOIN EventCodes ev on ev.EventCode = t.EventCode 
		INNER JOIN EventLevels el on el.LevelID = t.LevelID
		where t.IsActive=1 and ev.IsActive=1 and el.IsActive=1 
		and t.AppID = @AppID

END
END