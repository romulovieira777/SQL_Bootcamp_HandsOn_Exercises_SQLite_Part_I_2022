/*
Exercise No. 12

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays all of the dta from the job table. Additionally, add a column that calculates the
difference between the maximum and minimum salary for a given position and assign the alias diff_salary. Sort the result
by decreasing diff_salary.
*/
SELECT
    job_id
  , job_title
  , min_salary
  , max_salary
  , max_salary - min_salary AS diff_salary
FROM
    job
ORDER BY
    diff_salary DESC;