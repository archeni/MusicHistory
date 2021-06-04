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
--SELECT
--    Id,
--    Title,
--    Label,
--    ReleaseDate,
--    AlbumLength,
--    GenreId,
--    ArtistId
--FROM Album
--WHERE AlbumLength IS NULL

--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;



--INSERT INTO Album(TITLE, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('PAX Vesania', 2013, 13, 'Lantis' , 29, 5);

--SELECT * FROM Album;

--INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Mischievous of Alice', 200, 2011, 5, 29, 23);

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id WHERE a.Id = 23;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id WHERE a.Id = 23;

--SELECT COUNT(Song.Id), Album.Title
--FROM Song
--JOIN Album on Song.AlbumId = Album.Id
--GROUP BY Album.Title

--SELECT COUNT(Song.Id), Artist.ArtistName
--FROM Song
--JOIN Artist on Song.ArtistId =	Artist.Id
--GROUP BY Artist.ArtistName

--SELECT COUNT(Song.Id), Genre.Name
--FROM Song
--JOIN Genre on Song.GenreId = Genre.Id
--GROUP BY Genre.Name

--Select Artist.ArtistName
--FROM Artist
--JOIN Album on Album.ArtistId = Artist.Id
--group by Artist.ArtistName
--having COUNT(distinct Album.Label) > 1

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT Top 1 MAX(AlbumLength) as AlbumLength, Title
--FROM Album
--GROUP BY Title order by AlbumLength DESC
--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--Modify the previous query to also display the title of the album.

--SELECT Song.SongLength as SongLength, song.Title as song, Album.Title as album

--FROM Song
--Join Album on Song.AlbumId = Album.Id
--Where Song.SongLength = (Select MAX(Song.SongLength)
--From Song)

--order by SongLength DESC