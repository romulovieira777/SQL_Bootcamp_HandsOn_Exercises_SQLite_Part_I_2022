/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - department
    - location
    - country

Using the location_id and country_id columns respectively. In the result table, display the columns:
    - department_id
    - department_name
    - street_address
    - city
    - country_name
*/
SELECT
    department.department_id
  , department.department_name
  , location.street_address
  , location.city
  , country.country_name
FROM
    department
LEFT JOIN
    location
ON
    department.location_id = location.location_id
LEFT JOIN
    country
ON
    location.country_id = country.country_id;