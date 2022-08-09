/*
Exercise No. 09

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

Modify the above query. Group the data at the department_name level and calculate the number of employees for each
department. Assign the alias number_of_employees to the result. Sort the output table by decreasing number_of_employees.

The output table should contain two columns:
    - department_name
    - number_of_employees
*/
SELECT
    department.department_name
  , COUNT(employee.employee_id) AS number_of_employees
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
    department.department_name
ORDER BY
    number_of_employees DESC;