/*
Exercise No. 20

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Modify this query to extract only columns:
    - movie_id
    - title
    - language_name
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
    movie_languages.language_id = language.language_id;