/*
Exercise No. 05

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - employee
    - job

Using the job_id column. Display all columns in the result table.
*/
-- Method 1
SELECT
    employee.employee_id
  , employee.first_name
  , employee.last_name
  , employee.email
  , employee.phone_number
  , employee.hire_date
  , employee.job_id
  , employee.salary
  , employee.department_id
  , job.job_id
  , job.job_title
  , job.min_salary
  , job.max_salary
FROM
    employee
LEFT JOIN
    job
ON
    employee.job_id = job.job_id;


-- Method 2
SELECT
    *
FROM
    employee
LEFT JOIN
    job
ON
    employee.job_id = job.job_id;