DECLARE @RC int
DECLARE @student_id int = 5
DECLARE @product_id int = 10 
DECLARE @initial_fee_paid_status bit = 1
DECLARE @normal_price_paid_status bit = 1

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[changeProductPaidStatus] 
   @student_id
  ,@product_id
  ,@initial_fee_paid_status
  ,@normal_price_paid_status
GO