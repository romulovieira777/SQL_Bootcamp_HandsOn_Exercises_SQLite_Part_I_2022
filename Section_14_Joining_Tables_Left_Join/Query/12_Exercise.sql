/*
Exercise No. 12

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - location
    - country

Using the country_id column.

In the output table, display the following columns:
    - location_id
    - street_address
    - city
    - country_name

Sort the output table in ascending order by country_name.
*/
SELECT
    location.location_id
  , location.street_address
  , location.city
  , country.country_name
FROM
    location
LEFT JOIN
    country
ON
    location.country_id = country.country_id
ORDER BY
    country.country_name ASC;