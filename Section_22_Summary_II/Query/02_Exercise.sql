/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that extracts the columns from the movie table:
    - movie_id
    - title
    - popularity
    - vote_average
    - vote_count

Sort the result in descending order by vote_average
*/
SELECT
    movie_id,
    title,
    popularity,
    vote_average,
    vote_count
FROM
    movie
ORDER BY
    vote_average DESC;