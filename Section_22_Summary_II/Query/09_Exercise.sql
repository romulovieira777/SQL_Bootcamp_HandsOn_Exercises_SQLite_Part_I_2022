/*
Exercise No. 09

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the number of unique movie genres in the movie_genres table. Use the genre_id column for
this. Assign the alias unique_genres to the result.
*/
SELECT
    COUNT(DISTINCT genre_id) AS unique_genres
FROM
    movie_genres;