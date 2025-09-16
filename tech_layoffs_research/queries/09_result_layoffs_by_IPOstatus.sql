SELECT	status, COUNT(total_layoffs) AS num_companies
FROM	layoffs_cleaned
GROUP	BY status;