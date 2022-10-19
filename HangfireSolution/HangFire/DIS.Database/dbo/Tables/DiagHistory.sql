CREATE TABLE [dbo].[DiagHistory] (
    [id]                INT        NOT NULL,
    [DiagApiSettingsId] INT        NOT NULL,
    [Expected]          NCHAR (10) NULL,
    [Result]            NCHAR (10) NULL,
    [Status]            BIT        NULL,
    [Time]              DATETIME   NULL,
    [Remarks]           NCHAR (10) NULL,
    CONSTRAINT [FK_DiagHistory_DiagApiSettings] FOREIGN KEY ([DiagApiSettingsId]) REFERENCES [dbo].[DiagApiSettings] ([Id]),
    CONSTRAINT [FK_DiagHistory_DiagHistoryMeta] FOREIGN KEY ([id]) REFERENCES [dbo].[DiagHistoryMeta] ([Id])
);

