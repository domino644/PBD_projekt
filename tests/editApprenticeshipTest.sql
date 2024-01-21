USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[editApprenticeship]
		@apprenticeship_id = 11,
		@new_apprenticeship_name = N'Helicopter Pilot',
		@new_start_date = NULL,
		@new_end_date = NULL

SELECT	'Return Value' = @return_value

GO
