/*
Exercise No. 16

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        *
    FROM
        movie
    LEFT JOIN
        movie_genres
    ON
        movie.movie_id = movie_genres.movie_id
    LEFT JOIN
        genre
    ON
        movie_genres.genre_id = genre.genre_id;

Using the given query, display the columns:
    - movie_id
    - title
*/
SELECT
    movie.movie_id
  , movie.title
  , genre.genre_name
FROM
    movie
LEFT JOIN
    movie_genres
ON
    movie.movie_id = movie_genres.movie_id
LEFT JOIN
    genre
ON
    movie_genres.genre_id = genre.genre_id;