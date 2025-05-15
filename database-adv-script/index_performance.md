# Index Performance Optimization Report

## Objective

To improve SQL query performance by identifying high-usage columns and applying proper indexes on the `users`, `bookings`, and `properties` tables.

---

## High-Usage Columns and Justification

| Table     | Column         | Usage in Queries                      | Index Name               |
|-----------|----------------|----------------------------------------|--------------------------|
| bookings  | user_id        | JOIN, WHERE, GROUP BY                  | idx_bookings_user_id     |
| bookings  | property_id    | JOIN, WHERE, GROUP BY, ORDER BY        | idx_bookings_property_id |
| users     | email          | WHERE, unique lookups                  | idx_users_email          |
| reviews   | property_id    | JOIN, WHERE                            | idx_reviews_property_id  |
| bookings  | start_date     | WHERE, ORDER BY                        | idx_bookings_start_date  |

---

## Performance Evaluation

### Query Example – Before Index:

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 5;
