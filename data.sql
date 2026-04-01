USE movie_rental;

-- Users
INSERT INTO users (name, email) VALUES
('Jan Kowalski','jan.kowalski@example.com'),
('Anna Nowak','anna.nowak@example.com'),
('Piotr Wiśniewski','piotr.wisniewski@example.com'),
('Katarzyna Zielińska','kasia.zielinska@example.com'),
('Tomasz Lewandowski','tomasz.lewandowski@example.com'),
('Magdalena Kaczmarek','magda.kaczmarek@example.com'),
('Michał Woźniak','michal.wozniak@example.com'),
('Aleksandra Maj','aleksandra.maj@example.com'),
('Mateusz Kamiński','mateusz.kaminski@example.com'),
('Joanna Piotrowska','joanna.piotrowska@example.com'),
('Damian Sokołowski','damian.sokolowski@example.com'),
('Ewa Nowicka','ewa.nowicka@example.com'),
('Krzysztof Wójcik','krzysztof.wojcik@example.com'),
('Monika Grabowska','monika.grabowska@example.com'),
('Łukasz Pawlak','lukasz.pawlak@example.com'),
('Martyna Zawadzka','martyna.zawadzka@example.com'),
('Patryk Michalak','patryk.michalak@example.com'),
('Sylwia Czerwińska','sylwia.czerwinska@example.com'),
('Grzegorz Bąk','grzegorz.bak@example.com'),
('Natalia Olszewska','natalia.olszewska@example.com');

-- Genres
INSERT IGNORE INTO genres (name) VALUES
('Action'),('Comedy'),('Drama'),('Horror'),('Sci-Fi'),('Romance');

-- Movies
INSERT IGNORE INTO movies (title, genre_id, release_year, available_copies) VALUES
('Inception',1,2010,5),
('The Mask',2,1994,4),
('The Godfather',3,1972,3),
('Interstellar',5,2014,6),
('Titanic',6,1997,2),
('Avengers',1,2012,5),
('Joker',3,2019,4),
('Shrek',2,2001,3),
('Parasite',3,2019,2),
('It',4,2017,3);

-- Actors
INSERT INTO actors (name) VALUES
('Leonardo DiCaprio'),('Robert De Niro'),('Morgan Freeman'),
('Brad Pitt'),('Angelina Jolie'),('Tom Hanks'),('Scarlett Johansson'),
('Johnny Depp'),('Natalie Portman'),('Joaquin Phoenix');

-- Movie_Actors
INSERT INTO movie_actors (movie_id, actor_id) VALUES
(1,1),(3,2),(1,4),(4,6),(5,1),(5,6),(7,10),(2,8),(8,7),(9,3);

-- Rentals (multiple rentals per movie)
INSERT INTO rentals (user_id, movie_id) VALUES
(1,1),(2,1),(3,1),(1,2),(2,2),(3,3),(4,3),(5,4),(6,4),(7,5),
(8,5),(9,6),(10,6),(11,7),(12,7),(13,8),(14,8),(15,9),(16,9),(17,10),
(18,10),(19,1),(20,2);

-- Payments
INSERT INTO payments (rental_id, amount) VALUES
(1,19.99),(2,19.99),(3,19.99),(4,14.99),(5,14.99),(6,24.99),(7,24.99),
(8,19.99),(9,19.99),(10,9.99),(11,9.99),(12,19.99),(13,19.99),(14,14.99),
(15,14.99),(16,9.99),(17,9.99),(18,24.99),(19,19.99),(20,14.99),(21,19.99),(22,14.99);