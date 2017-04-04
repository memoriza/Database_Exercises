USE codeup_test_db;

DELETE name FROM albums WHERE release_date > '1991-01-01';

DELETE name FROM albums WHERE genre = 'disco';

DELETE name FROM albums WHERE artist LIKE '%Whitney Houston%';