INSERT INTO Songs (id, trackname, artist)
SELECT (SELECT MAX(id) + 1
		FROM Songs), 
        'Let Me Kiss You', 'Morrissey'