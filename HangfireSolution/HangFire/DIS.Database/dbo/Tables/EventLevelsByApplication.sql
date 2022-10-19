CREATE TABLE [dbo].[EventLevelsByApplication] (
    [ApplicationID] INT NOT NULL,
    [LevelID]       INT NOT NULL,
    CONSTRAINT [PK] PRIMARY KEY CLUSTERED ([ApplicationID] ASC, [LevelID] ASC)
);



