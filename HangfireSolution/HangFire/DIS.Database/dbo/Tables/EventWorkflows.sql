CREATE TABLE [dbo].[EventWorkflows] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [EventCode]     INT           NULL,
    [LevelID]       INT           NULL,
    [ActionType]    VARCHAR (3)   NULL,
    [Template]      VARCHAR (MAX) NULL,
    [PriorityApiId] INT           NULL,
    [AppID]         INT           NULL,
    [IsActive]      BIT           NULL,
    CONSTRAINT [PK_EventWorkflows] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EventWorkflows_EventLevels] FOREIGN KEY ([LevelID]) REFERENCES [dbo].[EventLevels] ([LevelID]),
    CONSTRAINT [FK_EventWorkflows_EventWorkflows] FOREIGN KEY ([EventCode]) REFERENCES [dbo].[EventCodes] ([EventCode])
);



