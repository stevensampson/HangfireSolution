
--exec sp_TransactionStatusSummary
CREATE Procedure sp_TransactionStatusSummary

As

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


with summary AS 
(
	Select	Transaction_ID,
			[Activity_ID],
			API_ID,
			TransactionDate,
			ROW_NUMBER() OVER(PARTITION BY e.transaction_ID 
									 ORDER BY e.TransactionDate DESC) AS rk
	from [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] e
)
Select 
	e.[OriginTransactionID] as 'BH Transaction_ID'
	, s.Transaction_ID as 'DIS Transaction_ID'
	, e.[TransactionStatus]
	, e.[TransactionDescription]
	, b.API_Name as LastAPItoRun
	, a.[Status]
	, l.API_Name as LastAPItoFail
from [dbo].[EMPLOYEE_TRANSACTION] e 
	Left Outer Join summary s On  e.ID  = s.Transaction_ID
	Inner Join [dbo].[Business_Area_Application_Resource_API] b on s.API_ID = b.API_ID
	Inner Join [dbo].[EMPLOYEE_TRANSACTIONACTIVITY] a On s.Activity_ID = a.[Activity_ID] 
	Left Outer Join @LastFailed l on e.ID = l.Transaction_ID
where s.rk = 1 
Order by OriginTransactionID

--Select * from [dbo].[EMPLOYEE_TRANSACTION]
--Where ID in (Select Distinct transaction_ID from [dbo].[EMPLOYEE_TRANSACTIONACTIVITY])