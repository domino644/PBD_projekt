USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[changeProductPaidStatus]
   	 @student_id = 13,
   	 @product_id = 15,
   	 @initial_fee_paid_status = 1,
   	 @normal_price_paid_status = 0

SELECT    'Return Value' = @return_value

GO
