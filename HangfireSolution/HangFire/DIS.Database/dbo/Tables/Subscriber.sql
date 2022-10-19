CREATE TABLE [dbo].[Subscriber] (
    [Subscriber_ID]           INT           IDENTITY (1, 1) NOT NULL,
    [Subscriber_Full_Name]    VARCHAR (250) NULL,
    [Subscriber_EmailAddress] VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_Subscriber] PRIMARY KEY CLUSTERED ([Subscriber_ID] ASC)
);

