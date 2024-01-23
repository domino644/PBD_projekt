USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[createStudies]
   	 @product_name = N'Second World War in pictures',
   	 @start_date = N'2024-03-30',
   	 @end_date = N'2024-07-05',
   	 @price = 70,
   	 @initial_fee = 10,
   	 @supervisor_id = 11,
   	 @language = N'polish',
   	 @students_limit = 30,
   	 @syllabus_link = N'https://sylabusy.agh.edu.pl/pl/1/2/19/5/4/4'

SELECT    'Return Value' = @return_value

GO
