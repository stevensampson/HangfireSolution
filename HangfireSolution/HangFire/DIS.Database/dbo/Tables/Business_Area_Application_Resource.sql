CREATE TABLE [dbo].[Business_Area_Application_Resource] (
    [Application_ID]    INT           NOT NULL,
    [Process_Name]      VARCHAR (200) NOT NULL,
    [Description]       VARCHAR (500) NULL,
    [Process_ID]        INT           IDENTITY (1, 1) NOT NULL,
    [AccessAccount]     VARCHAR (200) NULL,
    [AccessPassword]    VARCHAR (200) NULL,
    [ResourceDirectory] VARCHAR (200) NULL,
    CONSTRAINT [PK_Business_Area_Application_Resource] PRIMARY KEY CLUSTERED ([Process_ID] ASC),
    CONSTRAINT [FK_Business_Area_Application_Resource_Business_Area_Application] FOREIGN KEY ([Application_ID]) REFERENCES [dbo].[Business_Area_Application] ([Id])
);



