/*
Exercise No. 13

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        movie_id,
        genre_name
    FROM
        movie_genres
    LEFT JOIN
        genre
    ON
        movie_genres.genre_id = genre.genre_id;

Modify the given query to display the number of movies for a given genre. Assign the alias number_of_movies to the
result . In the output table, display the columns:
    - genre_name
    - number_of_movies

 Sort the result in descending order by number_of_movies.
*/
SELECT
    genre_name,
    COUNT(movie_id) AS number_of_movies
FROM
    movie_genres
LEFT JOIN
    genre
ON
    movie_genres.genre_id = genre.genre_id
GROUP BY
    genre_name
ORDER BY
    number_of_movies DESC;