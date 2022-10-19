CREATE TABLE [dbo].[DiagHistoryMeta] (
    [Id]          INT        IDENTITY (1, 1) NOT NULL,
    [DiagBatchId] INT        NOT NULL,
    [Username]    NCHAR (10) NULL,
    [MachineName] NCHAR (10) NULL,
    CONSTRAINT [PK_DiagHistoryMeta] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DiagHistoryMeta_DiagBatches] FOREIGN KEY ([DiagBatchId]) REFERENCES [dbo].[DiagBatches] ([Id])
);

