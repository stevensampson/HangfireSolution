CREATE TABLE [dbo].[EventLevels] (
    [LevelID]   INT          IDENTITY (1, 1) NOT NULL,
    [LevelName] VARCHAR (10) NULL,
    [IsActive]  BIT          CONSTRAINT [DF_EventLevels_IsActive] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_EventLevels] PRIMARY KEY CLUSTERED ([LevelID] ASC)
);



