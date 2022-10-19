
--exec ups_GetTransactionActivityByID_AllTables 'fd2f08b0-5996-4c0b-b739-e06f4bda3b4c'

CREATE Procedure ups_GetTransactionActivityByID_AllTables
@transactionID varchar(200)
As


SELECT        'ADP_FILEPROCESS_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate,Status, 
                         TransactionData
FROM            ADP_FILEPROCESS_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON ADP_FILEPROCESS_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID
union all
SELECT        'ADPMAINTENANCE_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            ADPMAINTENANCE_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON ADPMAINTENANCE_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID
 union all
SELECT        'CLIENT_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            CLIENT_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON CLIENT_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID 
union all
SELECT        'EMPLOYEE_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            EMPLOYEE_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON EMPLOYEE_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID 
union all
SELECT        'SECONDARYASSIGNMENT_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            SECONDARYASSIGNMENT_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON SECONDARYASSIGNMENT_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID 
union all
SELECT        'SUPPLIERASSOCIATE_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            SUPPLIERASSOCIATE_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON SUPPLIERASSOCIATE_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID 
union all
SELECT        'UK_TRANSACTIONACTIVITY' AS Table_Name, Transaction_ID, Business_Area_Application_Resource_API.API_Name, 
                         Activity_ID, Business_Area_Application_Resource_API.API_ID, 
                         TransactionDate, Status, 
                         TransactionData
FROM            UK_TRANSACTIONACTIVITY INNER JOIN
                         Business_Area_Application_Resource_API ON UK_TRANSACTIONACTIVITY.API_ID = Business_Area_Application_Resource_API.API_ID
where Transaction_ID = @transactionID