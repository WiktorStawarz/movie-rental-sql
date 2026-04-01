DELIMITER //

CREATE TRIGGER return_movie_trigger
AFTER UPDATE ON rentals
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL THEN
        UPDATE movies
        SET available_copies = available_copies + 1
        WHERE movie_id = NEW.movie_id;
    END IF;
END //

DELIMITER ;