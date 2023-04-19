USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist       VARCHAR(50)  NOT NULL,
    name         VARCHAR(50)  NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales        DOUBLE(5, 2) NOT NULL,
    genre        VARCHAR(25)  NOT NULL
);

--  mysql -u codeup_test_user -p < albums_migration.sql