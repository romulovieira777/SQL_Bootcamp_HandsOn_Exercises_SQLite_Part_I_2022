/*
Exercise No. 17

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Using the given query display all information about the movie titled 'Roadside'.
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
    movie_genres.genre_id = genre.genre_id
WHERE
    movie.title = 'Roadside';