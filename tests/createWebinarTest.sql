USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[createWebinar]
   	 @product_name = N'NFT for keeping money safe',
   	 @start_date = N'2024-02-25',
   	 @end_date = N'2024-02-27',
   	 @price = 100,
   	 @initial_fee = 20,
   	 @supervisor_id = 15,
   	 @language = N'english',
   	 @students_limit = NULL,
   	 @link = N'https://www.webex.com/8'

SELECT    'Return Value' = @return_value

GO
