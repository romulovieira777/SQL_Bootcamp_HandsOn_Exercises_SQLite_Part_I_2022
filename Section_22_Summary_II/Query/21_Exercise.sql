/*
Exercise No. 21

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        movie.movie_id
      , movie.title
      , language.language_name
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

Display information about movies with the following movie_id values:
    - 306745
    - 309503
*/
SELECT
    movie.movie_id
  , movie.title
  , language.language_name
FROM
    movie
LEFT JOIN
    movie_languages
ON
    movie.movie_id = movie_languages.movie_id
LEFT JOIN
    language
ON
    movie_languages.language_id = language.language_id
WHERE
    movie.movie_id IN (306745, 309503);