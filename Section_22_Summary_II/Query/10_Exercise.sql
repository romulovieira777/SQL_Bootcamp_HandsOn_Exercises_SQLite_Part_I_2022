/*
Exercise No. 10

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the number of movie genres for each movie. To do this, group the data from the movie_genres
table at the movie_id level and calculate the number of genres for each movie (assign the alias number_of_genres). Sort
the result by decreasing number of genres.
*/
SELECT
    movie_id,
    COUNT(genre_id) AS number_of_genres
FROM
    movie_genres
GROUP BY
    movie_id
ORDER BY
    number_of_genres DESC;