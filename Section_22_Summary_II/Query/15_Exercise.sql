/*
Exercise No. 15

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - movie
    - movie_genres
    - genre

Using the movie_id and genre_id columns, respectively. Display all columns in the output table.
*/
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