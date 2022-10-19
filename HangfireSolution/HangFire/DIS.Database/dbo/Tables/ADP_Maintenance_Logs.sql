CREATE TABLE [dbo].[ADP_Maintenance_Logs] (
    [Log_Id]             INT            IDENTITY (1, 1) NOT NULL,
    [ApplicationID]      INT            NOT NULL,
    [EventCode]          INT            NULL,
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
    CONSTRAINT [PK_ADP_Maintenance_Logs] PRIMARY KEY CLUSTERED ([Log_Id] ASC)
);






GO
CREATE NONCLUSTERED INDEX [IX_ADP_Maintenance_Logs_3]
    ON [dbo].[ADP_Maintenance_Logs]([TransactionID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Maintenance_Logs_2]
    ON [dbo].[ADP_Maintenance_Logs]([ApplicationID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Maintenance_Logs_1]
    ON [dbo].[ADP_Maintenance_Logs]([EventClass] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Maintenance_Logs]
    ON [dbo].[ADP_Maintenance_Logs]([EventDate] ASC);

