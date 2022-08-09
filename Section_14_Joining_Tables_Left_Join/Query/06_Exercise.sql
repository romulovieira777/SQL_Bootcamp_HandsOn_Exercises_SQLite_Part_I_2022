/*
Exercise No. 06

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - employee
    - job

Using the job_id column. In the output table, display the following columns:
    - employee_id
    - email
    - salary
    - job_title
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
    employee.job_id = job.job_id;