/*INNER JOIN between booking and user tables*/
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
FROM Booking b
INNER JOIN Users u ON b.user_id = u.user_id;


/*LEFT JOIN PROPERTY and REVIEWS tables*/
SELECT 
  p.property_id,
  p.name,
  p.location,
  r.review_id,
  r.rating,
  r.comment
FROM property p
LEFT JOIN reviews r ON p.property_id = r.property_id;


/*FULL OUTER JOIN between booking and user*/
-- FULL OUTER JOIN simulation
SELECT 
  u.user_id,
  u.first_name,
  b.booking_id,
  b.start_date
FROM users u
LEFT JOIN booking b ON u.user_id = b.user_id

UNION

SELECT 
  u.user_id,
  u.first_name,
  b.booking_id,
  b.start_date
FROM users u
RIGHT JOIN booking b ON u.user_id = b.user_id;
