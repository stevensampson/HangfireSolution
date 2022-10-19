CREATE TABLE [dbo].[Calendar_Exclussion_Dates] (
    [CALENDAR_NAME]  NVARCHAR (200) NOT NULL,
    [ExclusionDates] DATETIME       NOT NULL,
    [id]             INT            IDENTITY (1, 1) NOT NULL,
    [Description]    VARCHAR (200)  NULL,
    CONSTRAINT [PK_Calendar_Exclussion_Dates] PRIMARY KEY CLUSTERED ([id] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Calendar_Exclussion_Dates]
    ON [dbo].[Calendar_Exclussion_Dates]([CALENDAR_NAME] ASC, [ExclusionDates] ASC);

