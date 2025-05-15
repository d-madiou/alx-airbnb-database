# Partitioning Optimization Report

## Objective
To improve query performance on the `booking` table by implementing partitioning based on the `start_date` column.

## Implementation
We recreated the `booking` table using `RANGE` partitioning, dividing the table into yearly partitions using `YEAR(start_date)`.

## Query Performance Test
We executed the following query to fetch bookings from the year 2023:

```sql
SELECT * FROM booking
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
