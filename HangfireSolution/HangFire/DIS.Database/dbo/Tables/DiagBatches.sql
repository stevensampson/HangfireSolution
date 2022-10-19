CREATE TABLE [dbo].[DiagBatches] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_DiagBatches] PRIMARY KEY CLUSTERED ([Id] ASC)
);

