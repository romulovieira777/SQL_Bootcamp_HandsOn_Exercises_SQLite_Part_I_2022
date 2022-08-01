/*
Exercise No. 10

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the columns from the employee table:
    - first_name
    - last_name
    - email
    - salary

Sort the result in descending order by the salary column.
*/
SELECT
    first_name
  , last_name
  , email
  , salary
FROM
    employee
ORDER BY
    salary DESC;