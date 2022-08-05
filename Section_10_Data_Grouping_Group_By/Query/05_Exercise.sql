/*
Exercise No. 05

The SQL code that creates the tables for this exercise is in the file create.sql.

Group data from the employees table at the job_id level. Calculate the average salary for each position and assign the
alias avg_salary. Sort the result by descending avg_salary.
*/
SELECT
    job_id
  , AVG(salary) AS avg_salary
FROM
    employee
GROUP BY
    job_id
ORDER BY
    avg_salary DESC;