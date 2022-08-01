/*
Exercise No. 12

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the columns from the employee table:
        - department_id
        - email
        - salary

Sort the result by department_id in ascending order, then by salary in descending order.
*/
SELECT
    department_id
  , email
  , salary
FROM
    employee
ORDER BY
    department_id ASC
  , salary DESC;