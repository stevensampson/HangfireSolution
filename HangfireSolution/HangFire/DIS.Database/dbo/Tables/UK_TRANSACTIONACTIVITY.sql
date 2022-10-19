﻿CREATE TABLE [dbo].[UK_TRANSACTIONACTIVITY] (
    [Transaction_ID]  VARCHAR (50)   NOT NULL,
    [Activity_ID]     INT            IDENTITY (1, 1) NOT NULL,
    [API_ID]          INT            NOT NULL,
    [TransactionDate] DATETIME       NOT NULL,
    [Status]          VARCHAR (50)   NOT NULL,
    [TransactionData] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_UK_TRANSACTIONACTIVITY] PRIMARY KEY CLUSTERED ([Activity_ID] ASC),
    CONSTRAINT [FK_UK_TRANSACTIONACTIVITY_UK_TRANSACTION] FOREIGN KEY ([Transaction_ID]) REFERENCES [dbo].[UK_TRANSACTION] ([Id])
);

