/*
Exercise No. 08

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - employee
    - job
    - department

Using the job_id and department_id columns respectively. In the output table, display the following columns:
    - employee_id
    - email
    - salary
    - job_title
    - department_name
*/
SELECT
    employee.employee_id
  , employee.email
  , employee.salary
  , job.job_title
  , department.department_name
FROM
    employee
LEFT JOIN
    job
ON
    employee.job_id = job.job_id
LEFT JOIN
    department
ON
    employee.department_id = department.department_id;