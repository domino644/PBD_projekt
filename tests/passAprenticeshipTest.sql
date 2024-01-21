USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[passApprenticeship]
		@student_id = 23,
		@apprenticeship_id = 1,
		@passed = 1

SELECT	'Return Value' = @return_value

GO
