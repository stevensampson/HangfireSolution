

--select * from dbo.fn_TransactionSummaries()
CREATE Function fn_TransactionSummaries
(
)
returns @summaries Table
(
	ProcessType varchar(20),
	TransactionType varchar(50),
	InsertUpdate varchar(20),
	OriginTransactionID varchar(200),
	transactionMonth int,
	transactionDay int,
	transactionYear int, 
	Submits int,
	Completed int,
	Failed int,
	InProgress int
)
AS
Begin
	Declare @results Table
	(
		ApplicationName varchar(200),
		APIMethod varchar(200),
		TransactionStatus varchar(50),
		ProcessType varchar(20),
		TransactionType varchar(50),
		InsertUpdate varchar(20),
		OriginTransactionID varchar(200),
		transactionMonth int,
		transactionDay int,
		transactionYear int
	)
	Declare @transactionsummaries Table
	(
		ApplicationName varchar(200),
		APIMethod varchar(200),
		TransactionStatus varchar(50),
		ProcessType varchar(20),
		TransactionType varchar(50),
		OriginTransactionID varchar(200),
		transactionMonth int,
		transactionDay int,
		transactionYear int
	)

	Insert into @transactionsummaries
	Select Distinct 
		ApplicationName, 
		APIMethod, 
		TransactionStatus,
		Case 
			When APIMethod Like '%ADPMaintenance.Put' then 'DataProcess'
			When ApplicationName Like 'HR%' then 'FileProcess'
			Else 'DataProcess'
		End As ProcessType,
		Case
			When APIMethod Like '%ADP.Get' then 'EPOP23_File_Process'
			When APIMethod Like '%ADP.Post' then 'EPOP11_File_Process'
			When APIMethod Like '%ADP.Put' then 'EPOP23_File_Process'
			When APIMethod Like '%ADPMaintenance.Get' then 'EPOP24_File_Process'
			When APIMethod Like '%ADPMaintenance.Put' then 'ADP_Maintenance_Process'
			When APIMethod Like '%Staffing.Client%' then 'Client'
			When APIMethod Like '%Staffing.Employee%' then 'Employee'
			When APIMethod Like '%Staffing.SecondaryAssignment%' then 'SecondaryAssignment'
			When APIMethod Like '%Staffing.SupplierAssociate%' then 'SuppliedAssociates'
			When APIMethod Like '%UK%' then 'UK'
		End As 'TransactionType',
		OriginTransactionID,
		Month(TransactionDate) as transactionMonth,
		Day(TransactionDate) as transactionDay ,
		Year(TransactionDate) as transactionYear 
	from [dbo].[fn_GetAllTransaction]()
	Where TransactionDate > '12/27/2014'

	Insert into @results
	Select 
		ApplicationName,
		APIMethod,
		TransactionStatus,
		ProcessType,
		TransactionType,
		Case
			When ProcessType = 'DataProcess' and APIMethod like '%Put' then 'Update'
			When ProcessType = 'DataProcess' and APIMethod like '%Post' then 'Insert'
			When ProcessType = 'FileProcess' then 'N\A'
			Else 'Update'
		End As InsertUpdate,
		OriginTransactionID,
		transactionMonth,
		transactionDay ,
		transactionYear 
	from @transactionsummaries

	Declare @retries table (OriginTransactionID varchar(200), Submits int, Completed int, Failed int, InProgress int )


	Insert into @retries
	Select  
	  
		OriginTransactionID
		, Count(TransactionStatus) Submits 
		, sum(case when r.TransactionStatus = 'Completed' then 1 else 0 end) Completed
		, sum(case when r.TransactionStatus = 'Failed' then 1 else 0 end) Failed
		, sum(case when r.TransactionStatus = 'In Progress' then 1 else 0 end) InProgress
	from @results r
	Group by  OriginTransactionID

	Insert into @summaries
	Select
		r.ProcessType,
		r.TransactionType,
		r.InsertUpdate,
		r.OriginTransactionID,
		r.transactionMonth,
		r.transactionDay ,
		r.transactionYear, 
		re.Submits,
		re.Completed,
		re.Failed,
		re.InProgress
	from @Results r Left Join @retries re
		On r.OriginTransactionID = re.OriginTransactionID

	return
End