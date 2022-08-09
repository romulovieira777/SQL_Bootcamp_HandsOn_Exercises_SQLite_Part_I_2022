/*
Exercise No. 07

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        employee.employee_id
      , employee.email
      , employee.salary
      , job.job_title
    FROM
        employee
    LEFT JOIN
        job
    ON
        employee.job_id = job.job_id;

Modify the above query to extract the rows with salary greater than 8000. Sort the result in descending order by salary.
*/
SELECT
    employee.employee_id
  , employee.email
  , employee.salary
  , job.job_title
FROM
    employee
LEFT JOIN
    job
ON
    employee.job_id = job.job_id
WHERE
    employee.salary > 8000
ORDER BY
    employee.salary DESC;