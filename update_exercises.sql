USE codeup_test_db;

SELECT name AS 'All Albums'
FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT name AS 'All Albums', sales
FROM albums;
--
SELECT name AS 'Pre-1980 Albums', artist AS 'Artist', release_date AS 'Year'
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name AS 'Pre-1980 Albums', artist AS 'Artist', release_date AS 'Year'
FROM albums
WHERE release_date < 1980;
--
SELECT artist AS 'Artist', name AS 'Album Name'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist AS 'Artist', name AS 'Album Name'
FROM albums
WHERE artist = 'Peter Jackson';

-- mysql -u codeup_test_user -p < select_exercises.sql