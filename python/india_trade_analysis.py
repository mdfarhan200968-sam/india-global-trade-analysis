import os
import pandas as pd
import matplotlib.pyplot as plt

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA = os.path.join(BASE, "data", "india_trade_last_5_completed_years.csv")
OUT = os.path.join(BASE, "python", "output")
os.makedirs(OUT, exist_ok=True)

df = pd.read_csv(DATA).drop_duplicates()
print(df.info())
print("\nMissing values:\n", df.isna().sum())
print("\nSummary:\n", df.select_dtypes(include="number").describe())

plt.figure(figsize=(10,5))
plt.plot(df["financial_year"],df["exports_usd_billion"],marker="o",label="Exports")
plt.plot(df["financial_year"],df["imports_usd_billion"],marker="o",label="Imports")
plt.title("India Merchandise Exports vs Imports")
plt.xlabel("Financial Year"); plt.ylabel("US$ Billion"); plt.legend()
plt.tight_layout(); plt.savefig(os.path.join(OUT,"exports_vs_imports.png"),dpi=200); plt.close()

plt.figure(figsize=(10,5))
plt.bar(df["financial_year"],df["trade_balance_usd_billion"])
plt.title("India Merchandise Trade Balance")
plt.xlabel("Financial Year"); plt.ylabel("US$ Billion")
plt.tight_layout(); plt.savefig(os.path.join(OUT,"trade_balance.png"),dpi=200); plt.close()

plt.figure(figsize=(10,5))
plt.plot(df["financial_year"],df["export_growth_pct"],marker="o",label="Export growth")
plt.plot(df["financial_year"],df["import_growth_pct"],marker="o",label="Import growth")
plt.axhline(0,linewidth=0.8)
plt.title("Export and Import Growth")
plt.xlabel("Financial Year"); plt.ylabel("Growth (%)"); plt.legend()
plt.tight_layout(); plt.savefig(os.path.join(OUT,"growth_comparison.png"),dpi=200); plt.close()

df.to_csv(os.path.join(OUT,"clean_trade_analysis.csv"),index=False)
print("Charts written to",OUT)
