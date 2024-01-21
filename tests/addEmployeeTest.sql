USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addEmployee]
		@role = N'wykladowca',
		@name = N'Keanu',
		@second_name = N'Jan',
		@surname = N'Reeves',
		@birth_date = '1999-01-21',
		@country = N'USA',
		@city = N'New York',
		@adress = N'12 Sweet Ave',
		@postal_code = NULL,
		@phone = N'+111-222-333-4444',
		@email = N'keanureeves@gmail.com',
		@password = N'password1',
		@title_of_courtesy = N'Mr',
		@hire_date = '2024-01-21'

SELECT	'Return Value' = @return_value

GO
