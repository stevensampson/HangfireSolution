CREATE TABLE [dbo].[Role] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [RoleName] VARCHAR (200) NOT NULL,
    [IsActive] BIT           CONSTRAINT [DF_Role_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([ID] ASC)
);



