# Tech Layoffs SQL Analysis (2022–2023)

This project analyzes technology sector layoffs during 2022–2023 using SQL.  
The analysis focuses on geographic trends, time-based trends, and correlations with macroeconomic factors like interest rates.  
Additionally, it explores differences between private and public companies.

---

## 📊 Dataset Sources

- **Tech Layoffs Data (Kaggle):**  
  [Technology Company Layoffs 2022–2023](https://www.kaggle.com/datasets/salimwid/technology-company-layoffs-20222023-data)  
  Includes company names, headquarters, total layoffs, workforce size, dates, and IPO status.

- **Interest Rate Data (FRED):**  
  [Secured Overnight Financing Rate (SOFR)](https://fred.stlouisfed.org/series/SOFR)  
  Added to the database for comparing layoffs to interest rate changes.

---

## 🗂 Project Structure

```
tech-layoffs-sql/
│
├── data/
│ └── tech_layoffs.sqlite # SQLite database with cleaned layoffs + SOFR data
│
├── queries/ # SQL scripts
│ ├── 01_clean_headquarters.sql
│ ├── 02_result_layoffs_by_city.sql
│ ├── 03_result_avg_layoffs_by_city.sql
│ ├── 04_result_percent_impact_by_city.sql
│ ├── 05_layoffs_by_quarter.sql
│ ├── 06_layoffs_vs_interest.sql
│ └── 07_layoffs_by_ipo_status.sql
│
├── results/
│ ├── layoffs_by_city.csv
│ ├── layoffs_by_quarter.csv
│ ├── layoffs_vs_interest.csv
│ └── layoffs_by_ipo.csv
│
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

- **Geography:** Layoffs were heavily concentrated in major hubs like San Francisco, New York, and Seattle.  
- **Time Trends:** Layoffs spiked in late 2022 and remained high through 2023 Q1.  
- **Interest Rates:** Increases in SOFR rates appeared to coincide with higher layoff activity, though causation cannot be proven without more data.  
- **IPO Status:** Both private and public companies were affected, but public companies tended to report larger layoffs in absolute numbers.  

---

## 🔮 Future Work

If additional data were available, future analysis could explore:  
- Layoffs by job role or department.  
- Layoffs as a percentage of company workforce vs. headcount growth.  
- Regional differences adjusted for tech workforce size.  
- Correlations with macroeconomic indicators like inflation or stock performance.  

---

## ▶️ How to Reproduce

1. Download SQLite and DB Browser (or any SQL client).  
2. Clone this repo:  
   ```bash
   git clone https://github.com/<your-username>/tech-layoffs-sql.git
3. Open tech_layoffs.sqlite in DB Browser.
4. Run scripts from the queries/ folder to reproduce results.

---

📎 License
Dataset is provided by Kaggle and FRED. Analysis scripts © 2025 Briana Bryant.

