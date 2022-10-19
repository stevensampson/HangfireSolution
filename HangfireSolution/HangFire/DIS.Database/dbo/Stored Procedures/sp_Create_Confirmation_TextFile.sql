CREATE Procedure [dbo].[sp_Create_Confirmation_TextFile]
@startingemployee numeric
AS


DECLARE @timestampvalue VARCHAR(50) 
DECLARE @EmployeeID VARCHAR(20) 
DECLARE @CandidateID VARCHAR(20) 
DECLARE @FDBName VARCHAR(50) 
DECLARE @TransactionID VARCHAR(20) 
DECLARE @ActionCode VARCHAR(5) 
DECLARE @UpdateStatus VARCHAR(1) 
DECLARE @EmpId numeric
DECLARE @RCounter numeric

DECLARE db_cursor CURSOR FOR  
SELECT       
	N'06-NOV-2014_10:35:03:30800_PM' AS timestampvalue, 
	dataholding_ADP.EmployeeID AS EmployeeID,
	dataholding_ADP.ActionCode AS ActionCode, 
	dataholding_ADP.CandidateID, 
	N'GreatPlains-US' AS FDBName, 
	dataholding_ADP.TransactionID, 
	N'U' AS UpdateStatus
FROM            
	dataholding_ADP 
WHERE        
	dataholding_ADP.Status = 'Transferred To ADP'
or	dataholding_ADP.Status = 'Ready'

SET @EmpId = @startingemployee
SET @RCounter = 0

PRINT N'HDR|06-NOV-2014_10:35:03:30800_PM'

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @timestampvalue,  @EmployeeID,  @ActionCode,   @CandidateID,  @FDBName, @TransactionID, @UpdateStatus

WHILE @@FETCH_STATUS = 0   
BEGIN   

		IF @ActionCode ='HIR' 
		BEGIN
			SET @EmpId = @EmpId + 1
		END
		ELSE
		BEGIN
			SET @EmpId = @EmployeeID
		END

		SET @RCounter = @RCounter + 1

		PRINT CONCAT(@timestampvalue , N'|', @EmpId , N'|' , @ActionCode , N'|' , RTrim(@CandidateID) , N'|' , @FDBName , N'|' , @TransactionID , N'|' , @UpdateStatus)    

		FETCH NEXT FROM db_cursor INTO @timestampvalue,   @EmployeeID,  @ActionCode,   @CandidateID,  @FDBName, @TransactionID, @UpdateStatus
END   

CLOSE db_cursor   
DEALLOCATE db_cursor
PRINT  CONCAT( N'TLR|',@RCounter )