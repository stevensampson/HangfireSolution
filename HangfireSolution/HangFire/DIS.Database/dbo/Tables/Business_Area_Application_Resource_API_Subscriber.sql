CREATE TABLE [dbo].[Business_Area_Application_Resource_API_Subscriber] (
    [API_ID]        INT          NOT NULL,
    [Subscriber_ID] INT          NOT NULL,
    [MessageLevel]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Business_Area_Application_Resource_API_Subscriber] PRIMARY KEY CLUSTERED ([API_ID] ASC, [Subscriber_ID] ASC, [MessageLevel] ASC),
    CONSTRAINT [FK_Business_Area_Application_Resource_API_Subscriber_Business_Area_Application_Resource_API] FOREIGN KEY ([API_ID]) REFERENCES [dbo].[Business_Area_Application_Resource_API] ([API_ID]),
    CONSTRAINT [FK_Business_Area_Application_Resource_API_Subscriber_Subscriber] FOREIGN KEY ([Subscriber_ID]) REFERENCES [dbo].[Subscriber] ([Subscriber_ID])
);



