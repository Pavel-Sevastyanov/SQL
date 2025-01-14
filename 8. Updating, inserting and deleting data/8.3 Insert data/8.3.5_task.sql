INSERT INTO NewSongs (id, trackname, artist)
SELECT id, trackname, artist
FROM Songs
ORDER BY id
LIMIT 1;

INSERT INTO NewSongs (id, trackname, artist)
SELECT id, trackname, artist
FROM Songs
ORDER BY id DESC
LIMIT 1
