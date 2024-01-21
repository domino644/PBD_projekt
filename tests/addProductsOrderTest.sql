USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addProductsOrder]
		@student_id = 1,
		@product_id = 18,
		@discount = 0,
		@initial_fee_paid = 0,
		@paid = 0,
		@payment_link = N'abcd.pl',
		@pay_deadline = N'2024-01-21'

SELECT	'Return Value' = @return_value

GO
