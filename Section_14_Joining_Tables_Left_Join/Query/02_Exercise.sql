/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - department
    - location

Using the location_id column. Display the following columns in the output table:
    - department_id
    - department_name
    - street_address
    - city
*/
SELECT
    department.department_id
  , department.department_name
  , location.street_address
  , location.city
FROM
    department
LEFT JOIN
    location
ON
    department.location_id = location.location_id;