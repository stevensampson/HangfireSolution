


Create Procedure sp_MonitorUpdateTransacctions
as
Declare @SU_Count Table
(
	transactionID varchar(50), SU_Count int
)

Declare @dataholdingSU table (transactionID varchar(50), systemupdated varchar(10))

insert into @dataholdingSU
SELECT        a.TransactionID, a.SystemUpdated
FROM            dataholding_ADP_SU AS a INNER JOIN
                         dataholding_ADP AS b ON a.TransactionID = b.DISTransactionID
WHERE        (a.Successful = 1) AND (b.ActionCode <> 'HIR')

SELECT        TransactionID, COUNT(systemupdated) AS Expr1
FROM            @dataholdingSU
GROUP BY TransactionID
HAVING        (COUNT(SystemUpdated) = 2)