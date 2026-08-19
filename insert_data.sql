INSERT INTO genre (name) VALUES
    ('Rock'),
    ('Pop'),
    ('Hip-hop');

INSERT INTO artist (name) VALUES
    ('The Beatles'),
    ('Michael Jackson'),
    ('Eminem'),
    ('Queen');

INSERT INTO album (title, release_year) VALUES
    ('Abbey Road', 1969),
    ('Thriller', 1982),
    ('The Marshall Mathers LP', 2000),
    ('A Night at the Opera', 1975),
    ('Let It Be 2020', 2020);

INSERT INTO track (title, duration, album_id) VALUES
    ('Come Together', 259, 1),
    ('Something', 182, 1),
    ('Billie Jean', 294, 2),
    ('Beat It', 258, 2),
    ('Stan', 404, 3),
    ('The Real Slim Shady', 284, 3),
    ('Bohemian Rhapsody', 354, 4),
    ('My Love', 240, 2),
    ('Get Back', 230, 5),
    ('Let It Be', 243, 5);

INSERT INTO compilation (title, release_year) VALUES
    ('Greatest Hits 80s', 2018),
    ('Rock Classics', 2019),
    ('Pop Legends', 2020),
    ('Hip-Hop Essentials', 2021),
    ('Best of Queen', 2022);

INSERT INTO artist_genre (artist_id, genre_id) VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 3),
    (4, 1),
    (4, 2);

INSERT INTO album_artist (album_id, artist_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 1);

INSERT INTO compilation_track (compilation_id, track_id) VALUES
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 7),
    (3, 3),
    (3, 4),
    (4, 5),
    (4, 6),
    (5, 7);
