-- CLEAN SOFR DATA, CREATE VIEW WITH AGGREGATE AVG SOFR BY YEAR-MONTH

-- view shows year, month, and monthly avg SOFR
CREATE	VIEW SOFR_monthly AS
WITH
SOFR_year_months AS (
	-- extract year and month as integers
	SELECT	20 || CAST(SUBSTR(observation_date, LENGTH(observation_date) - 1, 2) AS INTEGER) AS year,
			CAST(substr(observation_date, 1, instr(observation_date, '/') - 1) AS INTEGER) AS month,
			SOFR_data AS interest_rate
	FROM	SOFR
	WHERE	NOT SOFR_data IS NULL
)

-- get monthly average interest_rate
SELECT	year, month,
		ROUND(AVG(interest_rate), 2) AS monthly_interest_rate
FROM	SOFR_year_months
GROUP	BY year, month;


SELECT	*
FROM	SOFR_monthly;