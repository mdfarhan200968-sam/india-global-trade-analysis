# Power BI Dashboard Design

## Page 1 — India Trade Overview
KPI cards:
- Total exports
- Total imports
- Total trade
- Trade balance
- Average export growth
- Average import growth

Visuals:
- Line chart: exports vs imports by financial year
- Column chart: trade balance
- Slicer: financial year

## Page 2 — Growth Analysis
- Export growth line
- Import growth line
- Year-over-year comparison
- Tooltip with exact values

## Page 3 — Trade Balance
- Trade balance by year
- Deficit/surplus indicator
- Total cumulative deficit

## Page 4 — Extension Dashboard
When official TradeStat country/commodity files are added:
- Top export destinations
- Top import sources
- Top export commodities
- Top import commodities
- Country/commodity slicers
- Region map

## Suggested DAX measures
Total Exports = SUM(annual_trade[exports_usd_million])
Total Imports = SUM(annual_trade[imports_usd_million])
Trade Balance = [Total Exports] - [Total Imports]
Total Trade = [Total Exports] + [Total Imports]
