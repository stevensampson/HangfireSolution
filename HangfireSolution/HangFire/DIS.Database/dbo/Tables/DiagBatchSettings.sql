CREATE TABLE [dbo].[DiagBatchSettings] (
    [BatchId]           INT NOT NULL,
    [DiagApiSettingsId] INT NOT NULL,
    CONSTRAINT [FK_DiagBatchSettings_DiagApiSettings] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[DiagApiSettings] ([Id]),
    CONSTRAINT [FK_DiagBatchSettings_DiagBatches] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[DiagBatches] ([Id])
);

