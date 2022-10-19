CREATE TABLE [dbo].[NotificationWorkflows] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [EventCode]       INT           NULL,
    [LevelID]         INT           NULL,
    [BodyTemplate]    VARCHAR (MAX) NULL,
    [AppID]           INT           NULL,
    [PriorityApiId]   INT           NULL,
    [IsActive]        BIT           NULL,
    [SubjectTemplate] VARCHAR (MAX) NULL,
    CONSTRAINT [PK_NotificationWorkflows] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NotificationWorkflows_EventCodes] FOREIGN KEY ([EventCode]) REFERENCES [dbo].[EventCodes] ([EventCode]),
    CONSTRAINT [FK_NotificationWorkflows_EventLevels] FOREIGN KEY ([LevelID]) REFERENCES [dbo].[EventLevels] ([LevelID])
);







