CREATE TABLE [dbo].[EventCodes] (
    [EventCode]   INT           NOT NULL,
    [EventKey]    VARCHAR (100) NOT NULL,
    [Description] VARCHAR (MAX) NULL,
    [IsActive]    BIT           CONSTRAINT [DF_EventCodes_IsActive] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_EventCodes] PRIMARY KEY CLUSTERED ([EventCode] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_Table_1]
    ON [dbo].[EventCodes]([EventKey] ASC);

