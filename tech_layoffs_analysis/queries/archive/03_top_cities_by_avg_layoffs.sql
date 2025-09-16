-- AVG NUMBER OF LAYOFFS PER COMPANY BY CITY
SELECT	headquarter_city,
		SUM(total_layoffs)/COUNT(total_layoffs) AS city_avg_layoffs
FROM	cleaned_table
GROUP	BY headquarter_city
ORDER	BY city_avg_layoffs DESC
LIMIT	5;