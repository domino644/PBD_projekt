USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[createCourse]
   	 @product_name = N'Mastery of baking cakes',
   	 @start_date = N'2024-02-10',
   	 @end_date = N'2024-07-10',
   	 @price = 100,
   	 @initial_fee = 20,
   	 @supervisor_id = 10,
   	 @language = N'polish',
   	 @students_limit = 20,
   	 @type_id = 3

SELECT    'Return Value' = @return_value

GO
