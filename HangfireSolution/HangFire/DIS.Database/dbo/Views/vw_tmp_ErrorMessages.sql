
Create View vw_tmp_ErrorMessages
As

Select Distinct [EventLevel], EventMessage from [dbo].[Finance_Clients_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[Finance_Transaction_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[Security_Authentication_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[Staffing_Clients_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[Staffing_Employee_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[Staffing_Transaction_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[UKFinance_Logs] Union All
Select Distinct [EventLevel], EventMessage from [dbo].[UKStaffing_Logs]