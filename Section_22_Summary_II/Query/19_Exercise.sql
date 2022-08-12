/*
Exercise No. 19

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - movie
    - movie_languages
    - language

Using movie_id and language_id columns respectively. Display all columns in the output table.
*
-- Method 1
SELECT
    movie.movie_id
  , movie.title
  , movie.budget
  ,	movie.homepage
  , movie.overview
  , movie.popularity
  , movie.release_date
  , movie.revenue
  , movie.runtime
  , movie.movie_status
  , movie.tagline
  , movie.vote_average
  , movie.vote_count
  , movie_languages.movie_id
  ,	movie_languages.language_id
  ,	language.language_code
  ,	language.language_name
FROM
    movie
LEFT JOIN
    movie_languages
ON
    movie.movie_id = movie_languages.movie_id
LEFT JOIN
    language
ON
    movie_languages.language_id = language.language_id;


-- Method 2
SELECT
    *
FROM
    movie
LEFT JOIN
    movie_languages
ON
    movie.movie_id = movie_languages.movie_id
LEFT JOIN
    language
ON
    movie_languages.language_id = language.language_id;