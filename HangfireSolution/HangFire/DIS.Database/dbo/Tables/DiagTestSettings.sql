CREATE TABLE [dbo].[DiagTestSettings] (
    [Id]             INT        IDENTITY (1, 1) NOT NULL,
    [TestType]       NCHAR (10) NULL,
    [TestAction]     NCHAR (10) NULL,
    [EvaluationType] NCHAR (10) NULL,
    [Operator]       NCHAR (10) NULL,
    [ExpectedValue]  NCHAR (10) NULL,
    CONSTRAINT [PK_DiagTestSettings] PRIMARY KEY CLUSTERED ([Id] ASC)
);

