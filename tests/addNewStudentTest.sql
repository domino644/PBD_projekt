USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addNewStudent]
		@name = N'Tomasz',
		@second_name = N'Maksymilian',
		@surname = N'Zmuda',
		@birth_date = '2003-01-01',
		@country = N'Poland',
		@city = N'Kraków',
		@adress = N'1 Rynek',
		@postal_code = N'11-012',
		@phone = N'+48-123-456-789',
		@email = N'tomekzmuda@gmail.com',
		@password = N'haslo1'

SELECT	'Return Value' = @return_value

GO
