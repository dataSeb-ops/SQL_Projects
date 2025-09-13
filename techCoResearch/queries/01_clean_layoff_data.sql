/*Examine headquarter_location to identify any distinctions between identical locations
due to abbreviations, etc.*/
SELECT	DISTINCT headquarter_location
FROM	tech_layoffs
ORDER	BY headquarter_location;

-- CLEANING
CREATE	VIEW cleaned_table AS
SELECT	company, CAST(total_layoffs AS INTEGER) AS total_layoffs,
		impacted_workforce_percentage, reported_date, industry,
		CASE
		-- if there is a comma, extract only city
        WHEN INSTR(headquarter_location, ',') > 0 THEN TRIM(SUBSTR(headquarter_location, 1, INSTR(headquarter_location, ',') - 1))
		-- get rid of "greater New York area" etc.
		WHEN headquarter_location LIKE '% New York%' THEN 'New York' 
		-- misspelling
		WHEN headquarter_location LIKE '%Franicsco%' THEN 'San Fancisco'
		-- if no comma or other issues
		ELSE headquarter_location
		END AS headquarter_city,
		sources, status, additional_notes
FROM	tech_layoffs
-- get rid of entries where data is unclear
WHERE	NOT (total_layoffs = 'Unclear' OR impacted_workforce_percentage = 'Unclear');

