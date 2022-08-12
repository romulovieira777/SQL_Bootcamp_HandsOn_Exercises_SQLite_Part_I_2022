/*
Exercise No. 12

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        *
    FROM
        movie_genres
    LEFT JOIN
        genre
    ON
        movie_genres.genre_id = genre.genre_id;

Modify the given query to display the following columns:
    - movie_id
    - genre_name
*/
SELECT
    movie_id,
    genre_name
FROM
    movie_genres
LEFT JOIN
    genre
ON
    movie_genres.genre_id = genre.genre_id;