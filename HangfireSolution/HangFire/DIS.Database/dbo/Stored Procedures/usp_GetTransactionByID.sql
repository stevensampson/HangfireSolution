
CREATE Procedure [dbo].[usp_GetTransactionByID]
@transactionID varchar(50)
as
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM            CLIENT_TRANSACTION AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM            EMPLOYEE_TRANSACTION AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM          [dbo].[SECONDARYASSIGNMENT_TRANSACTION]   AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM          [dbo].[SUPPLIERASSOCIATE_TRANSACTION]   AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM          [dbo].[UK_TRANSACTION]   AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM          [dbo].[ADP_FileProcess_TRANSACTION]   AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
Union
SELECT        CT.Id AS Transaction_ID, BAA.ApplicationName, CT.APIMethod, CT.TransactionDate, CT.TransactionStatus, CT.OriginTransactionID
FROM          [dbo].[ADPMAINTENANCE_TRANSACTION]   AS CT INNER JOIN
                         Business_Area_Application AS BAA ON CT.ApplicationID = BAA.Id
WHERE        (CT.Id = @transactionID)
