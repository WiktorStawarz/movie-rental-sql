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

## How to Use

1. Create and select the database:
```sql
CREATE DATABASE movie_rental;
USE movie_rental;
