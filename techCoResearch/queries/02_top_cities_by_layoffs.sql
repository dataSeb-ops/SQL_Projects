-- TOP CITIES BY TOTAL NUMBER OF LAYOFFS
SELECT	headquarter_city, SUM(total_layoffs) AS city_total_layoffs
FROM	cleaned_table
GROUP	BY headquarter_city
ORDER	BY city_total_layoffs DESC
LIMIT	5;