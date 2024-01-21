USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addDiscountForModule]
		@student_id = 1,
		@module_id = 9,
		@discount = 0.03

SELECT	'Return Value' = @return_value

GO
