-- Q: What is the average nightly price in Lincoln Park?
SELECT ROUND(AVG(price), 2) AS average_nightly_price
FROM listings
WHERE neighborhood = 'Lincoln Park';

-- Verdict: Don't trust - query outputted $0 even though there's a ton of listings from this neighborhood
-- Debug: price is text field so better query
SELECT ROUND(
    AVG(CAST(REPLACE(REPLACE(price, '$', ''), ',', '') AS REAL)),
    2
) AS average_nightly_price
FROM listings
WHERE neighborhood = 'Lincoln Park';