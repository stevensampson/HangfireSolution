CREATE TABLE [dbo].[AppSystemErrors] (
    [ErrorCodeID]      INT           IDENTITY (100, 1) NOT NULL,
    [AppSystem]        VARCHAR (30)  NOT NULL,
    [ErrorCode]        VARCHAR (10)  NOT NULL,
    [ErrorDescription] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_AppSystemErrors] PRIMARY KEY CLUSTERED ([ErrorCodeID] ASC)
);




