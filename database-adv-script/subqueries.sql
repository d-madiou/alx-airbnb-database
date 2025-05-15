/*all properties where the average rating is greater than 4.0 using a subquery.*/

SELECT * 
FROM property 
WHERE property_id IN (
    SELECT property_id 
    FROM review 
    GROUP BY property_id 
    HAVING AVG(rating) > 4.0
);

/*correlated subquery to find users who have made more than 3 bookings.*/
SELECT DISTINCT user_id 
FROM booking b1
WHERE (
    SELECT COUNT(*)
    FROM booking b2
    WHERE b2.user_id = b1.user_id
) > 3;