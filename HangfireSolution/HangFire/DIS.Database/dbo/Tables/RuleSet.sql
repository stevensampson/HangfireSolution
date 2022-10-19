CREATE TABLE [dbo].[RuleSet] (
    [Name]         NVARCHAR (128) NOT NULL,
    [MajorVersion] INT            NOT NULL,
    [MinorVersion] INT            NOT NULL,
    [RuleSet]      NTEXT          NOT NULL,
    [Status]       SMALLINT       NULL,
    [AssemblyPath] NVARCHAR (256) NULL,
    [ActivityName] NVARCHAR (128) NULL,
    [ModifiedDate] DATETIME       NULL,
    CONSTRAINT [pk_RuleSet] PRIMARY KEY CLUSTERED ([Name] ASC, [MajorVersion] ASC, [MinorVersion] ASC)
);

