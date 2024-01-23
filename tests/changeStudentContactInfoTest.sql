USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[changeStudentContactInfo]
   	 @id = 6,
   	 @country = N'Germany',
   	 @city = N'Berlin',
   	 @adress = N'15 Schue Street',
   	 @postal_code = N'41-878',
   	 @phone = N'+42 548 546 824',
   	 @email = N'bubbleman@gmail.com'

SELECT    'Return Value' = @return_value

GO
