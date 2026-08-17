# Official TradeStat extension sources

These are the official Government of India TradeStat pages to populate the detailed country/commodity extension.

- Country-wise all commodities (exports):
https://tradestat.commerce.gov.in/eidb/country_wise_all_commodities_export
- Country-wise all commodities (imports):
https://tradestat.commerce.gov.in/eidb/country_wise_all_commodities_import
- Commodity × Country annual exports:
https://tradestat.commerce.gov.in/ftspcc/export_commodity_xcountry_wise_annual
- Commodity × Country annual imports:
https://tradestat.commerce.gov.in/ftspcc/import_commodity_xcountry_wise_annual
- Commodity-wise all countries (exports):
https://tradestat.commerce.gov.in/ftspcc/export_commodity_wise_all_countries
- Region-wise exports:
https://tradestat.commerce.gov.in/ftspcc/export_region_wise
- Region-wise imports:
https://tradestat.commerce.gov.in/ftspcc/import_region_wise

## Five-year scope
Populate FY2020-21, FY2021-22, FY2022-23, FY2023-24 and FY2024-25.

## Why templates are empty
The TradeStat pages are interactive and expose year/country/commodity selectors rather than a static table in the webpage response. No partner or commodity values have been invented in this repository.

## Suggested extraction
For each selected year, export/download the relevant report from TradeStat and append the records to the corresponding CSV. Preserve the original downloaded files and extraction date in a `source_log.csv`.
