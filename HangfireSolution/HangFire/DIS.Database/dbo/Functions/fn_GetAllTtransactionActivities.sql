

Create Function fn_GetAllTtransactionActivities
(
)
returns @results Table
(
	  Transaction_Type varchar(100)
	, Transaction_ID varchar(200)
	, API_Name varchar(100)
	, Activity_ID int
	, API_ID int
	, TransactionDate datetime
	, Status varchar(50)
	, TransactionData varchar(max)
	, OriginTransactionID varchar(200)
)
as
Begin
	Insert into @results
	SELECT DISTINCT 'ADP_FileProcess_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID,
	 a.API_ID, a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            ADP_FileProcess_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								ADP_FileProcess_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'ADPMAINTENANCE_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID, 
	a.API_ID, a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            ADPMAINTENANCE_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								ADPMAINTENANCE_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'CLIENT_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID, a.API_ID,
	 a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            CLIENT_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								CLIENT_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'EMPLOYEE_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID, a.API_ID,
	 a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            EMPLOYEE_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								EMPLOYEE_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'SECONDARYASSIGNMENT_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID,
	 a.API_ID, a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            SECONDARYASSIGNMENT_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								SECONDARYASSIGNMENT_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'SUPPLIERASSOCIATE_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID,
	 a.API_ID, a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            SUPPLIERASSOCIATE_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								SUPPLIERASSOCIATE_TRANSACTION AS c ON a.Transaction_ID = c.Id
	Union All
	SELECT DISTINCT 'UK_TRANSACTION' as Transaction_Type, a.Transaction_ID, b.API_Name, a.Activity_ID, a.API_ID, 
	a.TransactionDate, a.Status, a.TransactionData, c.OriginTransactionID
	FROM            UK_TRANSACTIONACTIVITY AS a INNER JOIN
								Business_Area_Application_Resource_API AS b ON a.API_ID = b.API_ID INNER JOIN
								UK_TRANSACTION AS c ON a.Transaction_ID = c.Id

	return
End