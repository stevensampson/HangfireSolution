CREATE TABLE [dbo].[DiagApiSettings] (
    [Id]               INT        NOT NULL,
    [ApiId]            INT        NOT NULL,
    [DiagTestId]       INT        NOT NULL,
    [EvaluationSource] NCHAR (10) NULL,
    [EvaluationField]  NCHAR (10) NULL,
    [IdentifierKey]    NCHAR (10) NULL,
    [Description]      NCHAR (10) NULL,
    CONSTRAINT [PK_DiagApiSettings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DiagApiSettings_Business_Area_Application] FOREIGN KEY ([ApiId]) REFERENCES [dbo].[Business_Area_Application_Resource_API] ([API_ID]),
    CONSTRAINT [FK_DiagApiSettings_DiagTestSettings] FOREIGN KEY ([DiagTestId]) REFERENCES [dbo].[DiagTestSettings] ([Id])
);

