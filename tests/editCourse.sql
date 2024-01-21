USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[editCourse]
		@course_id = 20,
		@new_product_name = NULL,
		@new_start_date = NULL,
		@new_end_date = NULL,
		@new_type = NULL,
		@new_price = NULL,
		@new_initial_fee = NULL,
		@new_supervisor_id = NULL,
		@new_language = N'norwegian',
		@new_students_limit = NULL,
		@new_type_id = NULL

SELECT	'Return Value' = @return_value

GO
