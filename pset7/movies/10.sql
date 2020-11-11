-- write a SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.

SELECT DISTINCT name
FROM people
JOIN directors ON directors.person_id = people.id
JOIN ratings ON ratings.MOVIE_ID = directors.movie_id
WHERE rating >= 9.0