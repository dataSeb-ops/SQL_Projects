-- VIEW CREATION FOR NUMBER OF LAYOFFS BY QUARTER

-- view contains year, month, and quarter
CREATE	VIEW layoffs_YMQ AS
WITH
layoffs_year_month AS (
	-- extract year and month as integers
	SELECT	CAST(SUBSTR(reported_date, LENGTH(reported_date) - 3, 4) AS INTEGER) AS year,
			CAST(substr(reported_date, 1, instr(reported_date, '/') - 1) AS INTEGER) AS month,
			SUM(total_layoffs) AS monthly_layoffs
	FROM	layoffs_cleaned
	GROUP	BY year, month
	ORDER	BY monthly_layoffs DESC
)


SELECT	year, month,
		CASE
		WHEN month BETWEEN 1 AND 3 THEN 'Q1'
		WHEN month BETWEEN 4 AND 6 THEN 'Q2'
		WHEN month BETWEEN 7 AND 9 THEN 'Q3'
		WHEN month BETWEEN 10 AND 12 THEN 'Q4'
		END AS quarter,
		monthly_layoffs
FROM	layoffs_year_month;