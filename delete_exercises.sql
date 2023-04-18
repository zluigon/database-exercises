USE codeup_test_db;

DELETE
FROM albums
WHERE release_date > 1991;

DELETE
FROM albums
WHERE genre = 'Disco';

DELETE
FROM albums
WHERE artist = 'Whitney Houston';

-- mysql -u codeup_test_user -p < delete_exercises.sql