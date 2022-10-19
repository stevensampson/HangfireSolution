CREATE TABLE [dbo].[Business_Area_Application_Resource_API] (
    [Process_ID]      INT           NOT NULL,
    [API_ID]          INT           IDENTITY (1, 1) NOT NULL,
    [API_Name]        VARCHAR (200) NOT NULL,
    [API_Description] VARCHAR (500) NULL,
    [RemoteServer]    VARCHAR (200) NULL,
    [RemoteDirectory] VARCHAR (200) NULL,
    [RemoteProtocol]  VARCHAR (100) NULL,
    [RemoteUser]      VARCHAR (100) NULL,
    [RemotePassword]  VARCHAR (100) NULL,
    [RemoteCustom1]   VARCHAR (100) NULL,
    [RemoteCustom2]   VARCHAR (200) NULL,
    [API_Path]        VARCHAR (500) NULL,
    [Method]          VARCHAR (20)  NULL,
    CONSTRAINT [PK_Business_Area_Application_Resource_API] PRIMARY KEY CLUSTERED ([API_ID] ASC),
    CONSTRAINT [FK_Business_Area_Application_Resource_API_Resource_API_Business_Area_Application_Resource] FOREIGN KEY ([Process_ID]) REFERENCES [dbo].[Business_Area_Application_Resource] ([Process_ID])
);







