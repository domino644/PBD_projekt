SELECT TOP (1000) [product_id]
      ,[product_name]
      ,[start_date]
      ,[end_date]
      ,[type]
      ,[price]
      ,[initial_fee]
      ,[supervisor_id]
      ,[language]
      ,[students_limit]
      ,[remaining_spots]
  FROM [u_tzmuda].[dbo].[showNotFullProducts]
