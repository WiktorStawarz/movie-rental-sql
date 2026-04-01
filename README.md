# Movie Rental SQL Project

This is a relational database project for a **Movie Rental System**, designed to demonstrate advanced SQL skills including schema design, data analysis, stored procedures, triggers, and views.

## Features

- **Database Schema**: 7+ tables including users, movies, genres, actors, rentals, payments.
- **Relationships**: Many-to-many (movies-actors), foreign keys, constraints, indexes.
- **Data Analysis**:
  - Top rented movies
  - Most active users
  - Monthly revenue
  - Genre popularity
- **Advanced SQL**:
  - JOINs, GROUP BY, HAVING
  - CTEs (WITH)
  - Window functions (RANK, ROW_NUMBER)
- **Stored Procedures & Triggers**:
  - Procedure to rent a movie
  - Trigger to update available copies when a movie is returned
- **Views**:
  - Active rentals
  - Top users

## Files

- `schema.sql` – Database schema
- `data.sql` – Sample data (20+ records per table)
- `queries.sql` – Example queries and analyses
- `procedures.sql` – Stored procedures
- `triggers.sql` – Database triggers
- `views.sql` – Views for analytics
- `README.md` – Project description

## 1.How to Use

1.1. Create and select the database:
```sql
CREATE DATABASE movie_rental;
USE movie_rental;

-- 1.2. Create tables
SOURCE schema.sql;

-- 1.3. Insert sample data
SOURCE data.sql;

-- 1.4. Run example queries and analyses
SOURCE queries.sql;

-- 1.5. Add stored procedures
SOURCE procedures.sql;

-- 1.6. Enable triggers
SOURCE triggers.sql;

-- 1.7. Create views for analytics
SOURCE views.sql;

2.Example Queries:

1.1. Top 5 rented movies:
SELECT m.title, COUNT(r.rental_id) AS rentals
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY rentals DESC
LIMIT 5;

1.2. Most active users:
SELECT u.name, COUNT(r.rental_id) AS rentals
FROM rentals r
JOIN users u ON r.user_id = u.user_id
GROUP BY u.name
ORDER BY rentals DESC
LIMIT 5;

1.3. Monthly revenue:
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, SUM(amount) AS revenue
FROM payments
GROUP BY month
ORDER BY month;

1.4. Genre popularity:
SELECT g.name AS genre, COUNT(r.rental_id) AS rentals
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
JOIN movie_genres mg ON m.movie_id = mg.movie_id
JOIN genres g ON mg.genre_id = g.genre_id
GROUP BY g.name
ORDER BY rentals DESC;
