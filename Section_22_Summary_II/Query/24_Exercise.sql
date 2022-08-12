/*
Exercise No. 24

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Modify this query to extract all movies with no missing value in the country_name column.
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
    production_country.country_id = country.country_id
WHERE
    country.country_name IS NOT NULL;