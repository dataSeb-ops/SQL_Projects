-- COMPARING MONTHLY LAYOFFS TO INTEREST RATES

-- CTEs that combine year and month for SOFR and layoff tables so they can be joined at matching dates
WITH
layoffs_yearmonth AS (
		SELECT	*, year * 100 + month AS year_month
		FROM	layoffs_YMQ
),

interest_yearmonth AS (
		SELECT	*, year * 100 + month AS year_month
		FROM	SOFR_monthly
)

-- comparison 
SELECT	l.year, l.month, l.monthly_layoffs,
		i.monthly_interest_rate
FROM	layoffs_yearmonth AS l
LEFT	JOIN interest_yearmonth AS i
ON		l.year_month = i.year_month
ORDER	BY l.year, l.month;