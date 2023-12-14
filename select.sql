SELECT name, duration FROM song
ORDER BY duration DESC 
LIMIT 1;

SELECT name FROM song
WHERE duration >= 210;

SELECT name FROM collection
WHERE year_of_issue BETWEEN '2018-01-01' AND '2021-01-01';

SELECT name FROM performer  
WHERE name NOT LIKE '% %';

SELECT name FROM song
WHERE name LIKE '%my%' OR name LIKE '%мой%';

SELECT count(performer_id) FROM performermusical_genre
GROUP BY musical_genre_id;

SELECT count(song_id)  FROM song s  
LEFT JOIN album a ON s.album_id = a.album_id
WHERE a.year_of_issue BETWEEN '2019-01-01' AND '2020-12-31';

SELECT avg(duration), a.name  FROM song s 
LEFT JOIN album a ON s.album_id = a.album_id
GROUP BY a.name; 

SELECT p.name FROM performer p 
JOIN albumperformer ap ON p.performer_id = ap.performer_id 
JOIN album a ON a.album_id = ap.album_id 
WHERE a.year_of_issue NOT BETWEEN '2020-01-01' AND '2020-12-31';

SELECT c.name FROM collection c 
JOIN songcollection sc ON c.collection_id = sc.collection_id 
JOIN song s ON sc.song_id  = s.song_id 
JOIN albumperformer a ON s.album_id = a.album_id 
JOIN performer p ON a.performer_id = p.performer_id 
WHERE p.name LIKE 'Ace of Base';

SELECT s.name FROM song s 
LEFT JOIN songcollection sc ON s.song_id = sc.song_id 
WHERE sc.collection_id NOTNULL = FALSE;

SELECT p.name FROM performer p 

