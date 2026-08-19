SELECT title, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT title
FROM track
WHERE duration >= 210;

SELECT title
FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE LOWER(title) LIKE '%my%' OR LOWER(title) LIKE '%мой%';
