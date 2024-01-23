USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[changeModulePaidStatus]
   	 @student_id = 1,
   	 @module_id = 9,
   	 @initial_fee_paid_status = 1,
   	 @normal_price_paid_status = 1

SELECT    'Return Value' = @return_value

GO
