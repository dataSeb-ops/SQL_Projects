-- NUMBER OF LAYOFFS BY QUARTER
SELECT	year, quarter, SUM(monthly_layoffs) AS quarter_layoffs
FROM	layoffs_YMQ
GROUP	BY quarter
ORDER	BY quarter_layoffs DESC;