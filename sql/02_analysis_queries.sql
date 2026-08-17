USE india_global_trade;

-- Annual trend
SELECT * FROM annual_trade ORDER BY financial_year;

-- Highest exports
SELECT financial_year, exports_usd_million
FROM annual_trade ORDER BY exports_usd_million DESC LIMIT 1;

-- Highest imports
SELECT financial_year, imports_usd_million
FROM annual_trade ORDER BY imports_usd_million DESC LIMIT 1;

-- Largest trade deficit
SELECT financial_year, trade_balance_usd_million
FROM annual_trade ORDER BY trade_balance_usd_million ASC LIMIT 1;

-- Total trade
SELECT ROUND(SUM(total_trade_usd_million)/1000,2) AS total_trade_usd_billion
FROM annual_trade;

-- Average growth
SELECT ROUND(AVG(export_growth_pct),2) AS avg_export_growth_pct,
       ROUND(AVG(import_growth_pct),2) AS avg_import_growth_pct
FROM annual_trade;

-- Trade balance by year
SELECT financial_year, ROUND(trade_balance_usd_million/1000,2) AS trade_balance_usd_billion
FROM annual_trade ORDER BY financial_year;
