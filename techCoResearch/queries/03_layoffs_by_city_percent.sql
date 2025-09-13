-- PERCENT OF TECH LAYOFFS BY CITY
SELECT	headquarter_city, SUM(total_layoffs) AS city_total_layoffs, SUM(impacted_workforce_percentage) AS city_percent_layoffs
FROM	cleaned_table
GROUP	BY headquarter_city
ORDER	BY city_percent_layoffs DESC
LIMIT	5;