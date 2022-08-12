/*
Exercise No. 07

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that extracts all the countries from the country table with the following country_id values:
    - 150
    - 161
    - 200
*/
SELECT
    *
FROM
    country
WHERE
    country_id IN (150, 161, 200);