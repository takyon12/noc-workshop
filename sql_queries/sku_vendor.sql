/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Configs]
      ,[SKU]
      ,[SKU_desc]
      ,[Qty]
      ,[Matching_Code]
      ,[Product]
      ,[Product_Line]
      ,[Vendor]
      ,[date_valid_from]
      ,[date_valid_to]
  FROM [storage_matching_app].[dbo].[MC_V2_SKU_DellEMC]
  WHERE Matching_Code = 'NTP_1276_E'