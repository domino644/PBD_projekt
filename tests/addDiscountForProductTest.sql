USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addDiscountForProduct]
		@student_id = 2,
		@product_id = 8,
		@discount = 0.2

SELECT	'Return Value' = @return_value

GO
