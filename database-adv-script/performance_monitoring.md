# Monitor and Refine Database Performance

```sql
EXPLAIN ANALYZE
SELECT b.booking_id, u.name, p.title, b.start_date, b.end_date
FROM booking b
JOIN users u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
WHERE b.start_date BETWEEN '2023-01-01' AND '2023-12-31';


# Bottlenecks Identified

Full table scan on booking, users, and property tables.
No index used on start_date, user_id, or property_id.
Join buffer is used — a sign of inefficient join performance.
