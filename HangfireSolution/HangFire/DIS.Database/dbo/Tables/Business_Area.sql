CREATE TABLE [dbo].[Business_Area] (
    [BA_ID]              INT           IDENTITY (1, 1) NOT NULL,
    [Business_Area_Name] VARCHAR (200) NOT NULL,
    [BaseURL]            VARCHAR (200) NULL,
    [SMTPServer]         VARCHAR (200) NULL,
    CONSTRAINT [PK_Business_Area] PRIMARY KEY CLUSTERED ([BA_ID] ASC),
    CONSTRAINT [FK_Business_Area_Business_Area] FOREIGN KEY ([BA_ID]) REFERENCES [dbo].[Business_Area] ([BA_ID])
);





