-- performance.sql

-- Initial query (before optimization)
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM booking b
JOIN users u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
JOIN payment pay ON b.booking_id = pay.booking_id;

-- EXPLAIN analysis (run in SQL console)
EXPLAIN SELECT ...

-- Suggested indexes
CREATE INDEX idx_user_id ON booking(user_id);
CREATE INDEX idx_property_id ON booking(property_id);
CREATE INDEX idx_booking_id ON payment(booking_id);

-- Refactored final query
SELECT 
  b.booking_id,
  u.first_name,
  u.email,
  p.name AS property_name,
  pay.amount,
  pay.payment_method
FROM booking b
JOIN users u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
JOIN payment pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= CURDATE() 
  AND pay.payment_method = 'credit_card';

