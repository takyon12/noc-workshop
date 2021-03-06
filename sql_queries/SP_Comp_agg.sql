/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      SUM([Avg_monthly_price]) [Avg_monthly_price_sum]
      ,Date_PriceMonth
	  ,'NTP_1276_E' Matching_Code
  FROM [storage_sources].[dbo].[TimeSeries_US_Comp_SP_V2]
  where item_code in (
  'H6Y97B',
'H6Z26A',
'Q2S14A',
'K2P94B',
'L7E71A',
'H1K92A3 W3K',
'H1K92A3 YTM',
'H1K92A3 YTJ',
'H1K92A3 X84',
'H1K92A5 X8U')
AND
	Date_PriceMonth >= CONVERT(datetime, '2018-01-01')
GROUP BY Date_PriceMonth

