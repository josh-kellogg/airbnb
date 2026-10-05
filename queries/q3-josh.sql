-- Q: What is the most recent review?
SELECT *
FROM reviews
ORDER BY date_reviewed DESC
LIMIT 1;

-- VERDICT: Don't trust - Since date_reviewed is identified by date, might have multiple reviews from 10-18-2021.