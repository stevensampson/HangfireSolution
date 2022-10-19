
--exec sp_TransactionStatusSummary
CREATE Function [dbo].[fn_TransactionStatusSummary]
()
Returns @return table
(
	  BHTransaction_ID varchar(50)
	, DISTransaction_ID varchar(200)
	, TransactionStatus varchar(50)
	, TransactionDescription varchar(max)
	, LastAPItoRun varchar(150)
	, Status varchar(50)
	, LastAPItoComplete varchar(150)
	, LastAPItoFail varchar(150)
)

As 
Begin

	declare @LastFailed Table (transaction_id varchar(50), api_ID int, TransactionDate datetime,API_Name varchar(200), rk int, status varchar(50))
	 Insert into @LastFailed
		Select	e.Transaction_ID,
				e.API_ID,
				e.TransactionDate,
				b.[API_Name],
				ROW_NUMBER() OVER(PARTITION BY e.transaction_ID 
										 ORDER BY e.TransactionDate DESC) AS rk,
				Status
		from [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] e
			Inner Join [dbo].[Business_Area_Application_Resource_API] b on e.API_ID = b.API_ID
		Where e.Status = 'Failed' ;


	Declare @summary Table 
	(
		Transaction_ID varchar(50),
		Activity_ID int,
		API_ID int,
		API_Name varchar(200),
		TransactionDate datetime,
		rk int
	)
	
	Insert into @summary
	Select	Transaction_ID,
				[Activity_ID],
				e.API_ID,
				b.API_Name,
				TransactionDate,
				ROW_NUMBER() OVER(PARTITION BY e.transaction_ID 
										 ORDER BY e.TransactionDate DESC) AS rk
	From [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] e
			Inner Join [dbo].[Business_Area_Application_Resource_API] b on e.API_ID = b.API_ID

	declare @LastCompleted Table (transaction_id varchar(50), api_ID int, TransactionDate datetime,API_Name varchar(200), rk int, status varchar(50))

	Insert into @LastCompleted
		Select	e.Transaction_ID,
				e.API_ID,
				e.TransactionDate,
				b.[API_Name],
				ROW_NUMBER() OVER(PARTITION BY e.transaction_ID 
										 ORDER BY e.TransactionDate DESC) AS rk,
				Status
		from [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] e
			Inner Join [dbo].[Business_Area_Application_Resource_API] b on e.API_ID = b.API_ID
		Where e.Status = 'Completed' ;


	Insert into @return
	Select 
		e.[OriginTransactionID] as 'BH Transaction_ID'
		, s.Transaction_ID as 'DIS Transaction_ID'
		, e.[TransactionStatus]
		, e.[TransactionDescription]
		, s.API_Name as LastAPItoRun
		, a.[Status]
		, lc.API_Name as LastAPItoComplete
		, l.API_Name as LastAPItoFail
	from [dbo].[EMPLOYEE_TRANSACTION] e 
		Left Outer Join @summary s On  e.ID  = s.Transaction_ID
		left Outer Join [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] a On s.Activity_ID = a.[Activity_ID] 
		Left Outer Join @LastFailed l on e.ID = l.Transaction_ID
		Left Outer Join @LastCompleted lc on e.ID = lc.Transaction_ID

	where (s.rk = 1 or s.rk is null)
	 and (l.rk=1 or l.rk is null)
	  and (lc.rk=1 or lc.rk is null)
	Order by OriginTransactionID

	--Select * from [dbo].[EMPLOYEE_TRANSACTION]
	--Where ID in (Select Distinct transaction_ID from [dbo].[EMPLOYEE_TRANSACTIONACTIVITY])
	Return
End