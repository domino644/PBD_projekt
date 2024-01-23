USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[deleteWebinar]
   	 @webinar_id = 18

SELECT    'Return Value' = @return_value

GO
