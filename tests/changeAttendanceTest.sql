USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[changeAttendance]
		@student_id = 1,
		@module_id = 42,
		@attended = 1

SELECT	'Return Value' = @return_value

GO
