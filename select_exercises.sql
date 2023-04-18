USE codeup_test_db;

SELECT name AS 'Albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band Release Year'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Nevermind Genre'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums Released in the nineties'
FROM albums
WHERE release_date BETWEEN 1989 AND 2000;

SELECT name AS 'Albums w/ less than 20million sales'
FROM albums
WHERE sales < 20;

SELECT name AS 'Rock Albums'
FROM albums
WHERE genre LIKE '%Rock%';

--  mysql -u codeup_test_user -p < select_exercises.sql
