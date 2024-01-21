USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[getApprenticeshipsForStudies]
		@studiesId = 6

SELECT	'Return Value' = @return_value

GO
