CREATE TABLE [dbo].[dataholding_ADP_SU] (
    [TransactionID]              NVARCHAR (50) NOT NULL,
    [SystemUpdated]              VARCHAR (20)  NOT NULL,
    [TimeStamp]                  DATETIME      NOT NULL,
    [ExternalTransactionUpdated] BIT           CONSTRAINT [DF_dataholding_ADP_SU_ExternalTransactionUpdated] DEFAULT ((0)) NULL,
    [Successful]                 BIT           NOT NULL,
    CONSTRAINT [PK_dataholding_ADP_SU_1] PRIMARY KEY CLUSTERED ([TransactionID] ASC, [SystemUpdated] ASC)
);





