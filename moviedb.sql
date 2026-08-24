use tmdb;


SELECT COUNT(*) AS movie_count
FROM movies
WHERE title LIKE '%Spider%';

SELECT genre, AVG(popularity) AS avg_popularity
FROM movies
GROUP BY genre
ORDER BY avg_popularity ASC;


SELECT *
FROM movies
WHERE release_date IS NOT NULL
ORDER BY release_date ASC
LIMIT 10;

SELECT g.genre_name, AVG(m.popularity) AS avg_popularity
FROM movies m
JOIN genremap gm ON m.movie_id = gm.movie_id
JOIN genres g ON gm.genre_id = g.genre_id
GROUP BY g.genre_name
ORDER BY avg_popularity ASC;

SELECT pc.production_company_name,
       AVG(m.popularity) AS avg_popularity
FROM movies m
JOIN productioncompanymap pcm
    ON m.movie_id = pcm.movie_id
JOIN productioncompanies pc
    ON pcm.production_company_id = pc.production_company_id
GROUP BY pc.production_company_name
ORDER BY avg_popularity DESC
LIMIT 3;

SELECT COUNT(DISTINCT c.characters) AS unique_characters
FROM casts c
JOIN actors a
    ON c.actor_id = a.actor_id
WHERE a.actor_name = 'Vin Diesel';

SELECT name, film
FROM oscars
WHERE year = '2015'
  AND award = 'Actor in a Leading Role'
  AND winner = '1.0';
  
SELECT award, COUNT(name) AS actor_nominations
FROM oscars
WHERE name IS NOT NULL
GROUP BY award
ORDER BY actor_nominations DESC
LIMIT 1;  

SELECT award, COUNT(name) AS actor_nominations
FROM oscars
WHERE name IS NOT NULL
GROUP BY award
ORDER BY actor_nominations DESC
LIMIT 1;

SELECT g.genre_name
FROM movies m
JOIN genremap gm ON m.movie_id = gm.movie_id
JOIN genres g ON gm.genre_id = g.genre_id
WHERE m.title = 'The Royal Tenenbaums';

SELECT COUNT(*) AS female_actors
FROM actors
WHERE gender = 1
  AND actor_name LIKE 'N%';  
  
SELECT COUNT(*) AS movie_count
FROM movies
WHERE release_date BETWEEN '2006-08-01' AND '2009-10-01'
  AND popularity > 40
  AND budget < 50000000;
  
SELECT COUNT(*) AS movie_count
FROM movies
WHERE release_date BETWEEN '2006-08-01' AND '2009-10-01'
  AND popularity > 40
  AND budget < 50000000;
  
  
SELECT COUNT(DISTINCT m.movie_id) AS movie_count
FROM movies m
JOIN genremap gm
    ON m.movie_id = gm.movie_id
JOIN genres g
    ON gm.genre_id = g.genre_id
JOIN keywordmap km
    ON m.movie_id = km.movie_id
JOIN keywords k
    ON km.keyword_id = k.keyword_id
WHERE g.genre_name = 'Thriller'
  AND k.keyword_name LIKE '%love%';  
  
  