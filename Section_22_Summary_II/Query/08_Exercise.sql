/*
Exercise No. 08

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that extracts all the languages from the language table that end with 'ish'.
*/
SELECT
    *
FROM
    language
WHERE
    language_name LIKE '%ish';