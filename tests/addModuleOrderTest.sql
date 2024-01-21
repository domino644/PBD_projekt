USE [u_tzmuda]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[addModuleOrder]
		@student_id = 100,
		@module_id = 8,
		@discount = 0,
		@initial_fee_paid = 0,
		@paid = 0,
		@payment_link = 'abc.com',
		@pay_deadline = '2024-02-21'

SELECT	'Return Value' = @return_value

GO
