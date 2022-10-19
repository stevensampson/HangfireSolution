
CREATE Procedure [dbo].[sp_Create_Confirmation_File]
@startingemployee numeric

as

Declare @employee numeric
set @employee = @startingemployee

Create table #EPOPTable 
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	TimeStampValue varchar(50) NOT NULL, 
	ActionCode varchar(5) NOT NULL, 
	CandidateID varchar(20) NOT NULL,
	SystemName varchar(20) NOT NULL, 
	TransactionID varchar(50) NOT NULL, 
	Status char(1) NOT NULL
)

Insert into #EPOPTable
SELECT       '06-NOV-2014_10:35:03:30800_PM' AS timestamp, dataholding_ADP.ActionCode, dataholding_ADP.CandidateID, 'GreatPlains-US' AS System, dataholding_ADP.TransactionID, 
                         'U' AS Expr1
FROM            dataholding_ADP
 --INNER JOIN
                         --EMPLOYEE_TRANSACTION ON dataholding_ADP.TransactionID = EMPLOYEE_TRANSACTION.OriginTransactionID
WHERE        
--(EMPLOYEE_TRANSACTION.TransactionStatus = N'In Progress') 
--AND 
(dataholding_ADP.Status = 'Transferred To ADP')
or 
dataholding_ADP.Status = 'Ready'

Select 
	TimeStampValue,
	@employee + Id as EmployeeID, 
	ActionCode, 
	RTrim(CandidateID),
	SystemName, 
	TransactionID , 
	Status
 from #EPOPTable

Drop table #EPOPTable