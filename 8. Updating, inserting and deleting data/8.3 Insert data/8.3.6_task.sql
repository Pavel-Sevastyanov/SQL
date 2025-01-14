INSERT INTO NewSongs (id, trackname, artist)
SELECT (SELECT MAX(id) FROM NewSongs) + Songs.id, trackname, artist
FROM Songs