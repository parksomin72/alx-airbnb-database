# Database Performance Monitoring Report

## Objective

Monitor and refine performance of frequently used queries using profiling tools like `EXPLAIN ANALYZE` and `SHOW PROFILE`. Identify inefficiencies and apply schema/indexing improvements.

---

## 1. Monitoring Queries

### Example Query 1: Fetch Bookings by User

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;
