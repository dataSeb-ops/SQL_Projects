WITH
layoffs_month_year AS (
	SELECT	CAST(SUBSTR(reported_date, LENGTH(reported_date) - 3, 4) AS INTEGER) AS year,
			CAST(substr(reported_date, 1, instr(reported_date, '/') - 1) AS INTEGER) AS month,
			SUM(total_layoffs) AS monthly_layoffs
	FROM	cleaned_table
	GROUP	BY year, month
	ORDER	BY monthly_layoffs DESC
),

layoffs_quarter AS (
	SELECT	year, month,
			CASE
			WHEN month BETWEEN 1 AND 3 THEN 'Q1'
			WHEN month BETWEEN 4 AND 6 THEN 'Q2'
			WHEN month BETWEEN 7 AND 9 THEN 'Q3'
			WHEN month BETWEEN 10 AND 12 THEN 'Q4'
			END AS quarter,
			monthly_layoffs
	FROM	layoffs_month_year
)	

SELECT	year, quarter, SUM(monthly_layoffs) AS quarter_layoffs
FROM	layoffs_quarter
GROUP	BY quarter
ORDER	BY quarter_layoffs DESC;