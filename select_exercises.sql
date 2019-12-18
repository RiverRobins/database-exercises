USE codeup_test_db;
-- SELECT * FROM albums;
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT * FROM albums WHERE release_date = 1967;
SELECT * FROM albums WHERE genre LIKE 'Grunge'
    OR genre LIKE 'Alternative Rock';
SELECT * FROM albums WHERE release_date >= 1990
    AND release_date < 2000;
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'Rock';