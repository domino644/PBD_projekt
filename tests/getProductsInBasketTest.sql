USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[getProductsInBasket]
		@studentId = 1

SELECT	'Return Value' = @return_value

GO
