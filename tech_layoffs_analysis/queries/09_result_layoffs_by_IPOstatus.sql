SELECT	status, COUNT(total_layoffs) AS num_companies, SUM(total_layoffs) AS num_layoffs
FROM	layoffs_cleaned
GROUP	BY status;