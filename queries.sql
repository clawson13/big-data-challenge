SELECT vine AS "Vine", 
	COUNT(review_id) AS "Total Reviews", 
	AVG(star_rating) AS "Average Rating", 
	SUM(helpful_votes) AS "Total Helpful Votes"
FROM vine_table
GROUP BY vine;

SELECT vine AS "Vine", 
	COUNT(review_id) AS "Total Reviews", 
	AVG(star_rating) AS "Average Rating", 
	SUM(helpful_votes) AS "Total Helpful Votes"
FROM vine_table
WHERE helpful_votes >=10 
GROUP BY vine;

SELECT vine AS "Vine", 
	COUNT(review_id) AS "Total 5* Reviews"
FROM vine_table
WHERE star_rating = 5
GROUP BY vine;