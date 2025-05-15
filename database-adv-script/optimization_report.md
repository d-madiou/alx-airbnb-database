# Optimization Report

After indexing certain columns in each table, we observed a noticeable improvement in query performance. Most of the tables are now optimized effectively.

However, one table — the **payment** table — still shows poor performance.

- For **three** of the tables involved in the query, only **one row** was scanned, thanks to the use of efficient indexes.
- In contrast, the **payment** table had a scan type of `ALL`, which means a **full table scan** was performed.
- This results in **3 rows being scanned**, and all records being touched, which is inefficient.

### Recommendation:
To improve performance, we should create an index on the `booking_id` column in the **payment** table (if not already present), and ensure that queries are written in a way that allows the database to use that index.
