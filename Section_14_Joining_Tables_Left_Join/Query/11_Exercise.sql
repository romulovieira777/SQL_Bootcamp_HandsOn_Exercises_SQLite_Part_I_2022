/*
Exercise No. 11

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - location
    - country

Using the country_id column. Display all columns in the output table.
*/
-- Method 1
SELECT
    location.location_id
  , location.street_address
  , location.postal_code
  , location.city
  , location.state_province
  , location.country_id
  , country.country_name
FROM
    location
LEFT JOIN
    country
ON
    location.country_id = country.country_id;


-- Method 2
SELECT
    *
FROM
    location
LEFT JOIN
    country
ON
    location.country_id = country.country_id;