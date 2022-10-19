CREATE TABLE [dbo].[NotificationLevelsByApplication] (
    [ApplicationID] INT NULL,
    [LevelID]       INT NULL,
    CONSTRAINT [FK_NotificationLevelsByApplication_Business_Area_Application] FOREIGN KEY ([ApplicationID]) REFERENCES [dbo].[Business_Area_Application] ([Id]),
    CONSTRAINT [FK_NotificationLevelsByApplication_EventLevels] FOREIGN KEY ([LevelID]) REFERENCES [dbo].[EventLevels] ([LevelID])
);





