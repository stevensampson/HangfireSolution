CREATE TABLE [dbo].[Business_Area_Application_Config] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [AppId]      INT           NOT NULL,
    [KeyName]    VARCHAR (100) NOT NULL,
    [Value]      VARCHAR (MAX) NULL,
    [CreatedOn]  DATETIME      NULL,
    [ModifiedOn] DATETIME      NULL,
    [IsEncrypt]  BIT           NULL,
    CONSTRAINT [PK_App_config] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Business_Area_Application_Config_Business_Area_Application] FOREIGN KEY ([AppId]) REFERENCES [dbo].[Business_Area_Application] ([Id]),
    CONSTRAINT [UK_App_Config] UNIQUE NONCLUSTERED ([AppId] ASC, [KeyName] ASC)
);



