/*
Exercise No. 14

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

Modify the given query to display only the names of the top three movie categories in the movie_genres table.
*/
SELECT
    genre_name
FROM
    movie_genres
LEFT JOIN
    genre
ON
    movie_genres.genre_id = genre.genre_id
GROUP BY
    genre_name
ORDER BY
    COUNT(genre_name) DESC
LIMIT 3;