-- Q: How many listings do not have any reviews?
SELECT COUNT(*) AS listings_without_reviews
FROM listings l
LEFT JOIN reviews r
    ON l.id = r.listing_id
WHERE r.listing_id IS NULL;

-- VERDICT: Trust - Tested with randoly sampled IDs where no reviews were found with associated listings