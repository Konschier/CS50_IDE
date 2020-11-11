-- write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.

-- Query where Johnny Depp stared
SELECT title
FROM people JOIN stars ON stars.person_id = people.id
JOIN movies ON movies.id = stars.movie_id
JOIN ratings ON ratings.movie_id
WHERE name = "Johnny Depp"

INTERSECT

-- Query where Helena Bonham Carter  stared
SELECT title
FROM people JOIN stars ON stars.person_id = people.id
JOIN movies ON movies.id = stars.movie_id
JOIN ratings ON ratings.movie_id
WHERE name = "Helena Bonham Carter"

