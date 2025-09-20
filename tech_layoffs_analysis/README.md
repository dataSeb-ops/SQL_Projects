# SQL Tech Layoffs Analysis

This project analyzes technology sector layoffs during 2022–2023 using SQL.  
The analysis focuses on geographic trends, time-based trends, and correlations with macroeconomic factors like interest rates.  
Additionally, it explores differences between private and public companies.

---

## 📊 Dataset Sources

The SQL database was generated using the datasets found at these sources:

- **Tech Layoffs Data (Kaggle):**  
  [Technology Company Layoffs 2022–2023](https://www.kaggle.com/datasets/salimwid/technology-company-layoffs-20222023-data)  
  Includes company names, headquarters, total layoffs, workforce size, dates, and IPO status.

- **Interest Rate Data (FRED):**  
  [Secured Overnight Financing Rate (SOFR)](https://fred.stlouisfed.org/series/SOFR)  
  Added to the database for comparing layoffs to interest rate changes.

---

## 🗂 Project Structure

```
SQL_Projects/tech_layoffs_analysis/
│
├── data_raw/ # contains raw CSV files imported into SQL database
│ └── SOFR.csv # SOFR data from FRED
│ └── tech_layoffs.csv # layoff data from Kaggle
│
├── queries/ # SQL scripts
│ ├── 01_prep_layoff_data.sql              # clean layoff data and create view
│ ├── 02_result_layoffs_by_city.sql        # total number of layoffs by city
│ ├── 03_result_avg_layoffs_by_city.sql    # avg number of layoffs per company by city
│ ├── 04_result_percent_impact_by_city.sql # avg percent of company workforce impacted by city
│ ├── 05_prep_layoffs_monthly.sql          # create view to examine montly/quarterly layoffs
│ ├── 06_result_layoffs_by_quarter.sql     # quarterly layoffs
│ ├── 07_prep_SOFR_monthly.sql             # clean SOFR data and create view
│ ├── 08_result_layoffs_vs_interest_rates.sql     # monthly layoffs vs interest rates
│ └── 09_result_layoffs_by_IPOstatus.sql   # number of companies with layoffs by IPO status
│
├── results/ # SQL results
│ ├── avg_layoffs_by_city.csv      # avg number of layoffs per company by city
│ ├── avg_pct_impacted_by_city.csv # avg percent of company workforce impacted by city
│ ├── layoffs_by_city.csv          # total number of layoffs by city
│ ├── layoffs_by_IPOstatus.csv     # number of public vs private companies with layoffs
│ ├── layoffs_by_quarter.csv       # total quarterly layoffs
│ ├── layoffs_vs_interestRate.csv  # comparison of monthly layoffs vs interest rates
│ └── tech_layoffs_results.xlsx    # all results
│
├── visuals/ # data visualizations
│ ├── layoffs_by_city.png
│ ├── layoffs_by_quarter.png
│ └── layoffs_vs_interestRates.png
│
├── tech_layoffs.db     # database file used for analysis
├── tech_layoffs.sqbpro # DB Browser project file
└── README.md


```

---

## ⚙️ Methods

- **Data Cleaning:**  
  - Standardized city/state names.  
  - Extracted year, month, and quarter from `M/D/YYYY` formatted dates.  
  - Joined SOFR interest rate data with monthly layoffs.  

- **Analysis Queries:**  
  - Layoffs by city, average layoffs per company, and % workforce impacted.  
  - Layoffs over time (by month and quarter).  
  - Layoffs compared to SOFR interest rates.  
  - Layoffs by company IPO status (private vs. public).  

---

## 📈 Key Findings

- **Geography:** Layoffs were heavily concentrated in major tech hubs like San Francisco, New York, and Seattle.
  - However, other metrics, such as average percentage of each company workforce impacted by the layoffs, reveal that other parts of the country such as Nashville were also heavily hit.
- **Time Trends:** Layoffs spiked in late 2022 and remained high through 2023 Q1.  
- **Interest Rates:** Increases in SOFR rates appeared to coincide with higher layoff activity, though causation cannot be proven without more data.  
- **IPO Status:** More private companies report layoffs, but public companies tended to report layoffs in larger numbers.  

---

## 🔮 Future Work

If additional data were available, future analysis could explore:  
- Layoffs by job role or department.  
- Layoffs as a percentage of company workforce vs. headcount growth.  
- Regional differences adjusted for tech workforce size.  
- Correlations with macroeconomic indicators like inflation or stock performance.  

---

## ▶️ How to Reproduce

1. Download any SQL client (I use DB Browser for SQLite).  
2. Clone this repo:  
   ```bash
   git clone https://github.com/dataSeb-ops/SQL_Projects.git
   cd tech_layoffs_analysis
   
3. If using DB Browser:
   - Open tech_layoffs.sqbpro
   - This contains the database and all queries
4. Otherwise
   - Load the database tech_layoffs.db
   - Run scripts from the queries/ directory to reproduce results.

---

📎 License
Dataset is provided by Kaggle and FRED. Analysis scripts © 2025 Briana Sebastian.

