/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Configs]
      ,[SKU]
      ,[SKU_desc]
      ,[Qty]
      ,[Matching_Code]
      ,[Product]
      ,[Product_Line]
      ,[Vendor]
      ,[date_valid_from]
      ,[date_valid_to]
  FROM [storage_matching_app].[dbo].[MC_V2_SKU_Vendors]
    WHERE Matching_Code = 'HPE_148_E'