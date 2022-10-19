CREATE TABLE [dbo].[UIApplication] (
    [AppID]                  INT           IDENTITY (1, 1) NOT NULL,
    [ApplicationDescription] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_UIApplication] PRIMARY KEY CLUSTERED ([AppID] ASC)
);

