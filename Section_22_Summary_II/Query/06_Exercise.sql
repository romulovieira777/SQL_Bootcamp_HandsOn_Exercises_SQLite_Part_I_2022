/*
Exercise No. 06

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that extracts all the countries from the country table that have exactly five characters long.
*/
SELECT
    *
FROM
    country
WHERE
    LENGTH(country_name) = 5;