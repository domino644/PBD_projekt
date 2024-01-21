USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[getOwnedProducts]
		@studentId = 4

SELECT	'Return Value' = @return_value

GO
