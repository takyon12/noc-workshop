/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
SUM([Avg_monthly_price]) [Avg_monthly_price_sum]
      ,Date_PriceMonth
	  ,'NTP_1276_E' Matching_Code
  FROM [storage_sources].[dbo].[TimeSeries_US_DellEMC_SP_V2]
  WHERE item_code IN ('210-AHTX',
'340-BJPP',
'403-BBOS',
'450-AFMD',
'450-AADY',
'634-BHJJ',
'634-BHJL',
'634-BHMI',
'449-BBKS',
'770-BBJE',
'709-14111',
'565-BBDL',
'865-51439',
'400-AIXX',
'400-AEPR',
'634-BHJM',
'821-17986')
	AND
	Date_PriceMonth >= CONVERT(datetime, '2018-01-01')
GROUP BY Date_PriceMonth