/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN (in the given order) of tables:
    - department
    - location
    - country

Using the location_id and country_id columns respectively. Display all columns in the output table.
*/
SELECT
    *
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