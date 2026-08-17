# 🇮🇳 India Global Trade Analysis

**Industrial Training Mini Project — Python + SQL + Excel + Power BI**

## Scope
This repository analyzes India's merchandise exports, imports and trade balance for the **last five completed financial years: FY2020-21 to FY2024-25**.

## Official source
Government of India, **Economic Survey 2025-26, Statistical Appendix, Table 6.1(B)**, sourced from DGCI&S, Kolkata.

Government TradeStat is the official database for country-wise, commodity-wise and region-wise trade analysis. It currently exposes data from 2017-18 to 2025-26 and was updated on 19 May 2026.

## Data note
FY2024-25 is provisional in the cited Economic Survey table. Do not overwrite source values without documenting the source/version.

## What this project demonstrates
- Excel data preparation
- SQL database design and analytical queries
- Python/Pandas EDA
- Matplotlib/Seaborn visualization
- Power BI dashboard planning
- Git/GitHub repository organization

## Repository structure
```text
india-global-trade-analysis/
├── data/
├── excel/
├── sql/
├── python/
├── powerbi/
├── report/
├── docs/
├── README.md
├── requirements.txt
└── .gitignore
```

## Run locally
```bash
pip install -r requirements.txt
python python/india_trade_analysis.py
```

## Dashboard pages
1. India Trade Overview
2. Export vs Import Trends
3. Trade Balance Analysis
4. Country/Commodity Extension
5. Key Findings

## Important limitation
The five-year annual dataset included here is an official annual summary. Country-wise and commodity-wise tables are **not fabricated**. If detailed partner or commodity analysis is added, use official TradeStat exports and place the resulting source files in `data/`.


## Detailed country & commodity extension
The repository now includes `data/trade_stat_extensions/` with ready CSV templates for:
- country-wise exports/imports
- commodity-wise exports/imports
- commodity × country trade
- source logging

The official TradeStat system provides these report types, including commodity × country annual reports. Populate these templates only with downloaded official TradeStat records; do not invent missing values.
