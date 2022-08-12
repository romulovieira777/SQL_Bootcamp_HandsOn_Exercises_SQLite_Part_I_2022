/*
Exercise No. 23

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        *
    FROM
        movie
    LEFT JOIN
        production_country
    ON
        movie.movie_id = production_country.movie_id
    LEFT JOIN
        country
    ON
        production_country.country_id = country.country_id;

Modify this query to extract only columns:
    - movie_id
    - title
    - country_name
*/
SELECT
    movie.movie_id
  , movie.title
  , country.country_name
FROM
    movie
LEFT JOIN
    production_country
ON
    movie.movie_id = production_country.movie_id
LEFT JOIN
    country
ON
    production_country.country_id = country.country_id;