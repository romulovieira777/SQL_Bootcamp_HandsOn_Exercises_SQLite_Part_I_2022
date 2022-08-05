/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

Group data from the employees table at the department_id level and calculate the number of employees for each
department. Assign the alias number_of_employees to this column. Sort the result in descending order by
number_of_employees.
*/
SELECT
    department_id
  , COUNT(department_id) AS number_of_employees
FROM
    employee
GROUP BY
    department_id
ORDER BY
    number_of_employees DESC;