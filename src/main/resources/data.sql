-- CREATE TABLE User(
--                      id INT primary key,
--                      username VARCHAR(255),
--                      email VARCHAR (255),
--                      password VARCHAR(255)
-- );

INSERT INTO Music(id, song_Name, artist, album, price, description, release_Date, genre)
VALUES
       (1, 'Song1', 'Artist1', 'Album1', 9.99, 'This is a really good song', '2020-02-03', 'Rap'),
       (2, 'Song2', 'Artist2', 'Album2', 12.99, 'This is a really bad song', '2019-10-15', 'R&B'),
       (3, 'Song3', 'Artist3', 'Album2', 12.99, 'Really good song from the 2000s', '2001-01-12', ''),
       (4, 'Song4', 'Artist4', 'Album1', 12.99, 'This is a really bad song', '2019-10-15', 'R&B'),
       (5, 'Song5', 'Artist1', 'Album3', 12.99, 'This is a really bad song', '2019-10-15', 'R&B');
-- CREATE TABLE Music(
--                       id int primary key,
--                       songName VARCHAR (255),
--                       artist VARCHAR (255),
--                       album VARCHAR (255),
--                       price double,
--                       description VARCHAR (255),
--                       releaseDate date,
--                       genre VARCHAR (255)
-- );
--
