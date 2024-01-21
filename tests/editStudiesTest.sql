USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[editStudies]
		@studies_id = 18,
		@new_product_name = NULL,
		@new_start_date = NULL,
		@new_end_date = NULL,
		@new_type = NULL,
		@new_price = NULL,
		@new_initial_fee = NULL,
		@new_supervisor_id = NULL,
		@new_language = NULL,
		@new_students_limit = 200,
		@new_syllabus_link = NULL

SELECT	'Return Value' = @return_value

GO
