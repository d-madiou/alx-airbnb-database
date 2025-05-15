/* total number of bookings made by each user*/
SELECT user_id, COUNT(*) AS total_booking
FROM booking GROUP BY user_id;

/*uSING Window function TO rank properties based on the total number of bookings they have received.*/
SELECT property_id, COUNT(*) AS total_bookings,
RANK() OVER(ORDER BY COUNT(*) DESC) AS ranking_prop
FROM booking GROUP BY property_id;

SELECT property_id, COUNT(*) AS total_bookings,
ROW_NUMBER() OVER(ORDER BY COUNT(*) DESC) AS ranking_prop
FROM booking GROUP BY property_id;