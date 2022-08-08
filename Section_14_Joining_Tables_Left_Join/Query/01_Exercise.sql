/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - department
    - location

Using the location_id column. Display all columns in the result.
*/
SELECT
    department.department_id
  , department.department_name
  , department.location_id
FROM
    department
LEFT JOIN
    location
ON
    department.location_id = location.location_id;