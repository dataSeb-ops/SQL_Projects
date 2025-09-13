SELECT	CAST(SUBSTR(reported_date, LENGTH(reported_date) - 3, 4) AS INTEGER) AS year,
		CAST(substr(reported_date, 1, instr(reported_date, '/') - 1) AS INTEGER) AS month,
		SUM(total_layoffs) AS monthly_layoffs
FROM	cleaned_table
GROUP	BY year, month
ORDER	BY monthly_layoffs DESC;