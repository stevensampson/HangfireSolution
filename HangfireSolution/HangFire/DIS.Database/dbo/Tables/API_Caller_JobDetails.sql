CREATE TABLE [dbo].[API_Caller_JobDetails] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [url]            VARCHAR (200) NOT NULL,
    [Method]         VARCHAR (20)  NOT NULL,
    [Job_Name]       VARCHAR (200) NOT NULL,
    [IsActive]       BIT           CONSTRAINT [DF_API_Caller_JobDetails_IsActive] DEFAULT ((1)) NOT NULL,
    [CronExpression] VARCHAR (100) NULL,
    [JobType]        VARCHAR (50)  NULL,
    CONSTRAINT [PK_API_Caller_JobDetails] PRIMARY KEY CLUSTERED ([id] ASC)
);

