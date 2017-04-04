USE codeup_test_db;

-- all albums in the table
SELECT sales FROM albums; 

UPDATE albums
SET sales = sales * 10;

SELECT sales FROM albums; 

-- all albums released before 1980
SELECT name FROM albums WHERE release_date < '1980-01-01';

UPDATE albums
SET release_date = DATE_SUB(release_date, INTERVAL 100 YEAR)
WHERE release_date < '1980-01-01';

SELECT * FROM albums WHERE release_date < '1980-01-01';

-- all albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';

