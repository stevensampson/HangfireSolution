CREATE TABLE [dbo].[NotificationHistory] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [AppID]         INT           NOT NULL,
    [EventCode]     INT           NOT NULL,
    [EventDate]     DATETIME      NOT NULL,
    [Level]         VARCHAR (10)  NOT NULL,
    [Status]        BIT           NOT NULL,
    [Subject]       VARCHAR (100) NULL,
    [Body]          VARCHAR (MAX) NOT NULL,
    [Address_To]    VARCHAR (250) NOT NULL,
    [Address_CC]    VARCHAR (250) NULL,
    [TransactionID] VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_NotificationHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NotificationHistory_Business_Area_Application] FOREIGN KEY ([AppID]) REFERENCES [dbo].[Business_Area_Application] ([Id])
);

