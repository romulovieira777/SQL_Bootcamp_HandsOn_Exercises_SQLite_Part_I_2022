/*
Exercise No. 10

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Modify the above query. Group the data on the job_title level and calculate the number of employees for each position.
Assign the alias number_of_employees to the result. Also, find the average salary for the position and assign the alias
avg_salary. Sort the result by descending avg_salary.

The output table should contain three columns:
    - job_title
    - number_of_employees
    - avg_salary
*/
SELECT
    job.job_title
  , COUNT(employee.employee_id) AS number_of_employees
  , AVG(employee.salary)        AS avg_salary
FROM
    employee
LEFT JOIN
    job
ON
    employee.job_id = job.job_id
LEFT JOIN
    department
ON
    employee.department_id = department.department_id
GROUP BY
    job.job_title
ORDER BY
    avg_salary DESC;