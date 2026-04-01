-- List all rentals
SELECT u.name, m.title, r.rental_date
FROM rentals r
JOIN users u ON r.user_id = u.user_id
JOIN movies m ON r.movie_id = m.movie_id;

-- Count rentals per movie
SELECT m.title, COUNT(r.rental_id) AS rentals_count
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
HAVING COUNT(r.rental_id) > 1;

-- Top users (by rentals)
SELECT u.name, COUNT(r.rental_id) AS total_rentals
FROM rentals r
JOIN users u ON r.user_id = u.user_id
GROUP BY u.name
ORDER BY total_rentals DESC;

-- Monthly revenue
SELECT YEAR(payment_date) AS year, MONTH(payment_date) AS month, SUM(amount) AS revenue
FROM payments
GROUP BY year, month
ORDER BY year, month;

-- CTE example
WITH rental_counts AS (
    SELECT movie_id, COUNT(*) AS total
    FROM rentals
    GROUP BY movie_id
)
SELECT m.title, rc.total
FROM rental_counts rc
JOIN movies m ON rc.movie_id = m.movie_id
ORDER BY rc.total DESC;

-- Window function
SELECT u.name, COUNT(r.rental_id) AS total_rentals,
RANK() OVER (ORDER BY COUNT(r.rental_id) DESC) AS ranking
FROM users u
JOIN rentals r ON u.user_id = r.user_id
GROUP BY u.name;