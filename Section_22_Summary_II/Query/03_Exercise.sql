/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays all movies from the movie table with a rating above 5 (vote_average column).

Display the following columns in the output table:
    - movie_id
    - title
    - popularity
    - vote_average
    - vote_count
*/
SELECT
    movie_id,
    title,
    popularity,
    vote_average,
    vote_count
FROM
    movie
WHERE
    vote_average > 5;