# Index Performance Analysis

## Before Adding Indexes
Query: `EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = uuid-03;`
Execution Time: 120ms
## Create Index:

`CREATE INDEX idx_user_id ON User(user_id);`

## After Adding Indexes
Query: `EXPLAIN ANALYZE  SELECT * FROM Booking WHERE user_id = uuid-03;`
Execution Time: 15ms

## Conclusion
Adding indexes significantly improved query performance by reducing execution time.
