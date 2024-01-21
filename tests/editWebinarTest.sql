USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[editWebinar]
		@webinar_id = 21,
		@new_product_name = NULL,
		@new_start_date = NULL,
		@new_end_date = NULL,
		@new_price = NULL,
		@new_initial_fee = NULL,
		@new_supervisor_id = NULL,
		@new_language = NULL,
		@new_students_limit = NULL,
		@new_link = N'italianomariano.it/10'

SELECT	'Return Value' = @return_value

GO
