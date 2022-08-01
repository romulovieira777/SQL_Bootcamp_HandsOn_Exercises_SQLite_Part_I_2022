/*
Exercise No. 11

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the columns from the employee table:
    - first_name
    - last_name
    - email
    - salary

Sort the result in ascending order by the following columns:
    - first_name
    - last_name
*/
SELECT
    first_name
  , last_name
  , email
  , salary
FROM
    employee
ORDER BY
    first_name ASC
  , last_name ASC;