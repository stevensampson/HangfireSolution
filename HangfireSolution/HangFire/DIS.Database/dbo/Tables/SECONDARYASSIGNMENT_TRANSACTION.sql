﻿CREATE TABLE [dbo].[SECONDARYASSIGNMENT_TRANSACTION] (
    [Id]                     VARCHAR (50)   NOT NULL,
    [ApplicationID]          INT            NOT NULL,
    [APIMethod]              NVARCHAR (100) NOT NULL,
    [TransactionDate]        DATETIME       NOT NULL,
    [TransactionDescription] NVARCHAR (MAX) NULL,
    [TransactionStatus]      NVARCHAR (100) NOT NULL,
    [OriginTransactionID]    VARCHAR (50)   NULL,
    CONSTRAINT [PK_SECONDARYASSIGNMENT_TRANSACTION] PRIMARY KEY CLUSTERED ([Id] ASC)
);



