# Partitioning Performance Report

## Objective

Improve performance on a large `bookings` table by implementing partitioning based on `start_date`.

---

## Before Partitioning

### Query Tested:

```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
