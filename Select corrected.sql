SELECT name FROM collection
WHERE year_of_issue BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name FROM song
WHERE string_to_array(lower(name), ' ') && ARRAY ['my', 'мой'];


SELECT p.name FROM performer p 
WHERE p.name NOT IN (
    SELECT p.name 
    FROM performer p  
    JOIN albumperformer ap  ON  p.performer_id = ap.performer_id 
    JOIN album a ON a.album_id = ap.album_id
    WHERE a.year_of_issue BETWEEN '2020-01-01' AND '2020-12-31'
);