CREATE TABLE [dbo].[Finance_Clients_Logs] (
    [Log_Id]             INT            IDENTITY (1, 1) NOT NULL,
    [EventCode]          INT            NULL,
    [ApplicationID]      INT            NOT NULL,
    [EventDate]          DATETIME       NOT NULL,
    [EventLevel]         NVARCHAR (100) NOT NULL,
    [UserName]           NVARCHAR (100) NOT NULL,
    [MachineName]        NVARCHAR (100) NOT NULL,
    [EventMessage]       NVARCHAR (MAX) NULL,
    [EventSource]        NVARCHAR (100) NULL,
    [EventClass]         NVARCHAR (100) NULL,
    [ErrorMethod]        NVARCHAR (MAX) NULL,
    [InsertErrorMessage] NVARCHAR (MAX) NULL,
    [TransactionID]      VARCHAR (50)   NULL,
    CONSTRAINT [PK_Finance_Clients_Logs] PRIMARY KEY CLUSTERED ([Log_Id] ASC)
);








GO
CREATE NONCLUSTERED INDEX [IX_Finance_Clients_Logs_3]
    ON [dbo].[Finance_Clients_Logs]([ApplicationID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Finance_Clients_Logs_2]
    ON [dbo].[Finance_Clients_Logs]([TransactionID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Finance_Clients_Logs_1]
    ON [dbo].[Finance_Clients_Logs]([EventDate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Finance_Clients_Logs]
    ON [dbo].[Finance_Clients_Logs]([EventClass] ASC);

