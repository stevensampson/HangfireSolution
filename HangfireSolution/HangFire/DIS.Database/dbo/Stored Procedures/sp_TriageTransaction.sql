
--exec sp_TriageTransaction 1124

CREATE Procedure sp_TriageTransaction 
@BHTransactionID varchar(200)

As


Declare @TransactionIDs Table (transactionID varchar(200))

insert into @TransactionIDs
Select ID  from [dbo].[fn_GetAllTransaction]()
Where [OriginTransactionID] = @BHTransactionID

	Begin
		Select * from [dbo].[fn_GetAllTransaction]()
		Where ID IN (select transactionID from @TransactionIDs)

		SELECT        *
		FROM        [dbo].[fn_GetAllTtransactionActivities] ()    
		WHERE        (Transaction_ID IN
									 (SELECT        transactionID
									   FROM            @TransactionIDs))
		Order by Activity_ID desc

		Select transactionID,status, * from [dbo].[dataholding_ADP]
		Where [TransactionID] = @BHTransactionID

		Select * from [dbo].[dataholding_ADP_SU]
		Where transactionID IN (Select transactionID from @TransactionIDs)

		Select * from [dbo].[fn_GetAllTransactionLogs]()
		Where TransactionID IN (Select transactionID from @TransactionIDs)
		order by EventDate desc


	End