-- Active rentals
CREATE VIEW active_rentals AS
SELECT u.name, m.title, r.rental_date
FROM rentals r
JOIN users u ON r.user_id = u.user_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE r.return_date IS NULL;

-- Top users
CREATE VIEW top_users AS
SELECT u.name, COUNT(r.rental_id) AS rentals
FROM rentals r
JOIN users u ON r.user_id = u.user_id
GROUP BY u.name
ORDER BY rentals DESC;