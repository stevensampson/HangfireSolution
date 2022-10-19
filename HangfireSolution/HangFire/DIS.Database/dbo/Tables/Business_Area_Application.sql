CREATE TABLE [dbo].[Business_Area_Application] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [ApplicationName]    NVARCHAR (60) NOT NULL,
    [BA_ID]              INT           NULL,
    [LogLevel]           VARCHAR (50)  NULL,
    [LogMethod]          VARCHAR (50)  CONSTRAINT [DF_Business_Area_Application_LogMethod] DEFAULT (N'WARN') NOT NULL,
    [RetryNo]            INT           NULL,
    [LapseTime]          INT           NULL,
    [TextLogLocation]    VARCHAR (200) NULL,
    [SharedKey]          VARCHAR (100) NULL,
    [EnableLog]          BIT           CONSTRAINT [DF_Business_Area_Application_IsLogActive] DEFAULT ((1)) NULL,
    [EnableNotification] BIT           CONSTRAINT [DF_Business_Area_Application_IsNotificationActive] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED ([Id] ASC)
);







