USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[changeEmployeeContactInfo]
		@id = 1,
		@country = N'Poland',
		@city = N'Warszawa',
		@adress = N'1 Złota',
		@postal_code = NULL,
		@phone = N'+48-987-654-321',
		@email = N'winnie@gmail.com'

SELECT	'Return Value' = @return_value

GO
