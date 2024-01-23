USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[createApprenticeship]
   	 @apprenticeship_name = N'Embbeded engineer',
   	 @start_date = N'2024-03-10',
   	 @end_date = N'2024-04-10'

SELECT    'Return Value' = @return_value

GO
