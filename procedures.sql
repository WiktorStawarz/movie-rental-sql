DELIMITER //

CREATE PROCEDURE rent_movie(IN p_user_id INT, IN p_movie_id INT)
BEGIN
    INSERT INTO rentals (user_id, movie_id)
    VALUES (p_user_id, p_movie_id);

    UPDATE movies
    SET available_copies = available_copies - 1
    WHERE movie_id = p_movie_id;
END //

DELIMITER ;