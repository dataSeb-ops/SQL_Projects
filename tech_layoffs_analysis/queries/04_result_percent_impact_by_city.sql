-- AVG PERCENT OF LAYOFFS BY CITY

SELECT	headquarter_city,
		ROUND(AVG(impacted_workforce_percentage),2) AS avg_percent_impacted
FROM	layoffs_cleaned
GROUP	BY headquarter_city
ORDER	BY avg_percent_impacted DESC
LIMIT	5;