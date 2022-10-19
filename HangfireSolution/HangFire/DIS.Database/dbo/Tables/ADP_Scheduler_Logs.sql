CREATE TABLE [dbo].[ADP_Scheduler_Logs] (
    [Log_Id]             INT            IDENTITY (1, 1) NOT NULL,
    [ApplicationID]      INT            NOT NULL,
    [EventDate]          DATETIME       NOT NULL,
    [EventCode]          INT            NULL,
    [EventLevel]         NVARCHAR (100) NOT NULL,
    [UserName]           NVARCHAR (100) NOT NULL,
    [MachineName]        NVARCHAR (100) NOT NULL,
    [EventMessage]       NVARCHAR (MAX) NULL,
    [EventSource]        NVARCHAR (100) NULL,
    [EventClass]         NVARCHAR (100) NULL,
    [ErrorMethod]        NVARCHAR (MAX) NULL,
    [InsertErrorMessage] NVARCHAR (MAX) NULL,
    [TransactionID]      VARCHAR (50)   NULL,
    CONSTRAINT [PK_ADP_Scheduler_Logs] PRIMARY KEY CLUSTERED ([Log_Id] ASC)
);






GO
CREATE NONCLUSTERED INDEX [IX_ADP_Scheduler_Logs_3]
    ON [dbo].[ADP_Scheduler_Logs]([EventDate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Scheduler_Logs_2]
    ON [dbo].[ADP_Scheduler_Logs]([ApplicationID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Scheduler_Logs_1]
    ON [dbo].[ADP_Scheduler_Logs]([TransactionID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ADP_Scheduler_Logs]
    ON [dbo].[ADP_Scheduler_Logs]([EventClass] ASC);

