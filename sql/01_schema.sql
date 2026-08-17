CREATE DATABASE india_global_trade;
USE india_global_trade;

CREATE TABLE annual_trade (
 financial_year VARCHAR(9) PRIMARY KEY,
 exports_usd_million DECIMAL(15,2) NOT NULL,
 imports_usd_million DECIMAL(15,2) NOT NULL,
 trade_balance_usd_million DECIMAL(15,2) NOT NULL,
 export_growth_pct DECIMAL(8,2),
 import_growth_pct DECIMAL(8,2),
 total_trade_usd_million DECIMAL(15,2)
);

-- Import data/india_trade_last_5_completed_years.csv using your SQL client.
