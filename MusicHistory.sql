--SELECT
--    Id,
--    Title,
--    ReleaseDate,
--    SongLength,
--    GenreId,
--    ArtistId,
--    AlbumId
--FROM Song;

--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;


--SELECT
--    Id,
--    Title,
--    Label,
--    ReleaseDate,
--    AlbumLength,
--    GenreId,
--    ArtistId
--FROM Album;

--SELECT
--    Id,
--    Name
--FROM Genre;

--SELECT
--    Id,
--    ArtistName,
--    YearEstablished
--FROM Artist
--ORDER BY ArtistName;

--Write a SELECT query that lists all the Artists that have a Pop Album
--SELECT
--	ArtistName
--FROM Artist
--LEFT JOIN Album on Artist.Id = Album.ArtistId
--LEFT JOIN Genre on Genre.Id = Album.GenreId
--WHERE Genre.Id = 7

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album


--SELECT DISTINCT
--	ArtistName
--FROM Artist
--LEFT JOIN Album on Artist.Id = Album.ArtistId
--LEFT JOIN Genre on Genre.Id = Album.GenreId
--WHERE Genre.Id = 4 or Genre.Id = 2

--Write a SELECT statement that lists the Albums with no songs
SELECT
    Id,
    Title,
    Label,
    ReleaseDate,
    AlbumLength,
    GenreId,
    ArtistId
FROM Album
WHERE AlbumLength IS NULL

--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;