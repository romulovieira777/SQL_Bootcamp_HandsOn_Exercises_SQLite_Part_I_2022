/*
Exercise No. 11

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - movie_genres
    - genre

Using the genre_id column. Display all columns in the output table.
*/
SELECT
    *
FROM
    movie_genres
LEFT JOIN
    genre
ON
    movie_genres.genre_id = genre.genre_id;