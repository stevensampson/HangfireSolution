
Create Function fn_GetAllTransaction
(
)
returns @results Table
(
	  Transaction_Type varchar(100)
	, Id varchar(200)
	, ApplicationName varchar(100)
	, APIMethod varchar(100)
	, TransactionDate datetime
	, TransactionDescription varchar(max)
	, TransactionStatus varchar(200)
	, OriginTransactionID varchar(200)
	, ApplicationID int
)
as
Begin

		Insert into @results
		SELECT  'ADP_FileProcess_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            ADP_FileProcess_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'ADPMAINTENANCE_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            ADPMAINTENANCE_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'CLIENT_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            CLIENT_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'EMPLOYEE_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            EMPLOYEE_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'SECONDARYASSIGNMENT_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            SECONDARYASSIGNMENT_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'SUPPLIERASSOCIATE_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            SUPPLIERASSOCIATE_TRANSACTION AS a INNER JOIN
								 Business_Area_Application AS b ON a.ApplicationID = b.Id
		Union All
		SELECT  'UK_TRANSACTION' as Transaction_Type,      a.Id, b.ApplicationName, a.APIMethod, a.TransactionDate, a.TransactionDescription, a.TransactionStatus, a.OriginTransactionID, a.ApplicationID
		FROM            UK_TRANSACTION AS a INNER JOIN
                         Business_Area_Application AS b ON a.ApplicationID = b.Id

	return
End