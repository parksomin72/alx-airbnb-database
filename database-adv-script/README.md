# SQL Joins - Airbnb Advanced Queries

This directory contains SQL scripts demonstrating complex SQL joins used in the `alx-airbnb-database` project.

## Files

- `joins_queries.sql`: SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md`: Description of the queries.

## Queries Overview

1. **INNER JOIN**: Retrieves bookings along with the users who made them.
2. **LEFT JOIN**: Retrieves all properties and their reviews, including those without reviews.
3. **FULL OUTER JOIN**: Retrieves all users and bookings, even those not linked to each other.

# SQL Subqueries - Airbnb Advanced Queries

This directory contains SQL scripts that practice the use of subqueries in the `alx-airbnb-database` project.

## Files

- `subqueries.sql`: SQL queries using correlated and non-correlated subqueries.
- `README.md`: Description of the queries and logic used.

## Queries Overview

1. **Properties with High Ratings**:
   - Retrieves properties where the average review rating is greater than 4.0.
   - Uses a non-correlated subquery with `GROUP BY` and `HAVING`.

2. **Active Users**:
   - Retrieves users who have made more than 3 bookings.
   - Uses a correlated subquery to count bookings per user.

# SQL Aggregations and Window Functions

This file includes SQL queries that demonstrate the use of aggregation and window functions for data analysis in the `alx-airbnb-database` project.

## Files

- `aggregations_and_window_functions.sql`: Contains aggregation and window function queries.
- `README.md`: Description of the queries and logic used.

## Queries Overview

1. **Total Bookings by User**:
   - Uses `COUNT(*)` and `GROUP BY` to compute the total number of bookings per user.

2. **Property Ranking by Bookings**:
   - Uses the `RANK()` window function to rank properties based on how many bookings they’ve received.

