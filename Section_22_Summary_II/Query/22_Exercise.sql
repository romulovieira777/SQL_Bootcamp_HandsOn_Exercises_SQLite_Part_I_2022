/*
Exercise No. 22

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - movie
    - production_country
    - country

Using the movie_id and country_id columns respectively. Display all columns in the output table.
*/
-- Method 1
SELECT
    movie.movie_id
  , movie.title
  , movie.budget
  , movie.homepage
  , movie.overview
  , movie.popularity
  , movie.release_date
  , movie.revenue
  , movie.runtime
  , movie.movie_status
  , movie.tagline
  , movie.vote_average
  , movie.vote_count
  , production_country.country_id
  , country.country_iso_code
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


-- Method 2
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