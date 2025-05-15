# Query Optimization Report

## Objective

Optimize a complex SQL query that retrieves bookings along with user, property, and payment details.

---

## Initial Query

Located in: `perfomance.sql`  
Description: Joins four tables (`bookings`, `users`, `properties`, and `payments`) to display comprehensive booking data.

---

## Performance Analysis (Before Optimization)

### Execution Plan Sample:

```sql
EXPLAIN ANALYZE
SELECT ...
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id;
