USE india_global_trade;

CREATE TABLE IF NOT EXISTS country_trade (
    financial_year VARCHAR(9),
    trade_type VARCHAR(10),
    country VARCHAR(150),
    trade_value_usd_million DECIMAL(18,2),
    share_pct DECIMAL(8,3),
    PRIMARY KEY(financial_year, trade_type, country)
);

CREATE TABLE IF NOT EXISTS commodity_trade (
    financial_year VARCHAR(9),
    trade_type VARCHAR(10),
    commodity VARCHAR(255),
    hs_code VARCHAR(20),
    trade_value_usd_million DECIMAL(18,2),
    share_pct DECIMAL(8,3)
);

CREATE TABLE IF NOT EXISTS commodity_country_trade (
    financial_year VARCHAR(9),
    trade_type VARCHAR(10),
    country VARCHAR(150),
    commodity VARCHAR(255),
    hs_code VARCHAR(20),
    trade_value_usd_million DECIMAL(18,2)
);

-- Top export destinations
SELECT country, SUM(trade_value_usd_million) AS exports_usd_million
FROM country_trade
WHERE trade_type='EXPORT'
GROUP BY country ORDER BY exports_usd_million DESC LIMIT 10;

-- Top import sources
SELECT country, SUM(trade_value_usd_million) AS imports_usd_million
FROM country_trade
WHERE trade_type='IMPORT'
GROUP BY country ORDER BY imports_usd_million DESC LIMIT 10;

-- Top exported commodities
SELECT commodity, SUM(trade_value_usd_million) AS exports_usd_million
FROM commodity_trade
WHERE trade_type='EXPORT'
GROUP BY commodity ORDER BY exports_usd_million DESC LIMIT 10;

-- Top imported commodities
SELECT commodity, SUM(trade_value_usd_million) AS imports_usd_million
FROM commodity_trade
WHERE trade_type='IMPORT'
GROUP BY commodity ORDER BY imports_usd_million DESC LIMIT 10;
