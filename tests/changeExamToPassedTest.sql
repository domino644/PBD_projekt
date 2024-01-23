USE [u_tzmuda]
GO

DECLARE    @return_value int

EXEC    @return_value = [dbo].[changeExamToPassed]
   	 @student_id = 12,
   	 @studies_id = 8,
   	 @passed = 1

SELECT    'Return Value' = @return_value

GO
