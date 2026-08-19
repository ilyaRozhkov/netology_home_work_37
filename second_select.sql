SELECT g.name AS genre, COUNT(ag.artist_id) AS artist_count
FROM genre g
LEFT JOIN artist_genre ag ON g.id = ag.genre_id
GROUP BY g.id, g.name
ORDER BY artist_count DESC;

SELECT COUNT(t.id) AS tracks_count
FROM track t
JOIN album a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album_title, AVG(t.duration) AS avg_duration_seconds
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.id, a.title
ORDER BY avg_duration_seconds DESC;

SELECT DISTINCT ar.name
FROM artist ar
WHERE ar.id NOT IN (
    SELECT aa.artist_id
    FROM album_artist aa
    JOIN album a ON aa.album_id = a.id
    WHERE a.release_year = 2020
);

SELECT DISTINCT c.title AS compilation_title
FROM compilation c
JOIN compilation_track ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN album_artist aa ON a.id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Queen';
