USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[assignApprenticeshipToStudies]
		@studies_id = 18,
		@apprenticeship_id = 10

SELECT	'Return Value' = @return_value

GO
