DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS job;
 
CREATE TABLE country (
	country_id   TEXT    NOT NULL,
	country_name TEXT    NOT NULL,
	PRIMARY KEY (country_id)
);
 
CREATE TABLE location (
	location_id    INTEGER NOT NULL,
	street_address TEXT,
	postal_code    TEXT,
	city           TEXT    NOT NULL,
	state_province TEXT,
	country_id     INTEGER NOT NULL,
	PRIMARY KEY (location_id),
	FOREIGN KEY (country_id) REFERENCES country (country_id)
);
 
CREATE TABLE department (
	department_id   INTEGER NOT NULL,
	department_name TEXT    NOT NULL,
	location_id     INTEGER NOT NULL,
	PRIMARY KEY (department_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id)
);
 
CREATE TABLE job (
	job_id     INTEGER NOT NULL,
	job_title  TEXT    NOT NULL,
	min_salary REAL    NOT NULL,
	max_salary REAL    NOT NULL,
	PRIMARY KEY (job_id)
);
 
CREATE TABLE employee (
	employee_id   INTEGER NOT NULL,
	first_name    TEXT,
	last_name     TEXT    NOT NULL,
	email         TEXT    NOT NULL,
	phone_number  TEXT,
	hire_date     TEXT    NOT NULL,
	job_id        INTEGER NOT NULL,
	salary        REAL    NOT NULL,
	department_id INTEGER NOT NULL,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (job_id) REFERENCES job (job_id),
	FOREIGN KEY (department_id) REFERENCES department (department_id)
);
 
-- country
INSERT INTO country(country_id, country_name) VALUES ('AR', 'Argentina');
INSERT INTO country(country_id, country_name) VALUES ('AU', 'Australia');
INSERT INTO country(country_id, country_name) VALUES ('BE', 'Belgium');
INSERT INTO country(country_id, country_name) VALUES ('BR', 'Brazil');
INSERT INTO country(country_id, country_name) VALUES ('CA', 'Canada');
INSERT INTO country(country_id, country_name) VALUES ('CH', 'Switzerland');
INSERT INTO country(country_id, country_name) VALUES ('CN', 'China');
INSERT INTO country(country_id, country_name) VALUES ('DE', 'Germany');
INSERT INTO country(country_id, country_name) VALUES ('DK', 'Denmark');
INSERT INTO country(country_id, country_name) VALUES ('EG', 'Egypt');
INSERT INTO country(country_id, country_name) VALUES ('FR', 'France');
INSERT INTO country(country_id, country_name) VALUES ('HK', 'HongKong');
INSERT INTO country(country_id, country_name) VALUES ('IL', 'Israel');
INSERT INTO country(country_id, country_name) VALUES ('IN', 'India');
INSERT INTO country(country_id, country_name) VALUES ('IT', 'Italy');
INSERT INTO country(country_id, country_name) VALUES ('JP', 'Japan');
INSERT INTO country(country_id, country_name) VALUES ('KW', 'Kuwait');
INSERT INTO country(country_id, country_name) VALUES ('MX', 'Mexico');
INSERT INTO country(country_id, country_name) VALUES ('NG', 'Nigeria');
INSERT INTO country(country_id, country_name) VALUES ('NL', 'Netherlands');
INSERT INTO country(country_id, country_name) VALUES ('SG', 'Singapore');
INSERT INTO country(country_id, country_name) VALUES ('UK', 'United Kingdom');
INSERT INTO country(country_id, country_name) VALUES ('US', 'United States of America');
INSERT INTO country(country_id, country_name) VALUES ('ZM', 'Zambia');
INSERT INTO country(country_id, country_name) VALUES ('ZW', 'Zimbabwe');
 
-- location
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2500, 'Magdalen Centre,  The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO location(location_id, street_address, postal_code, city, state_province, country_id) VALUES (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
 
-- job
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (1, 'Public Accountant', 4200.00, 9000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (2, 'Accounting Manager', 8200.00, 16000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (3, 'Administration Assistant', 3000.00, 6000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (4, 'President', 20000.00, 40000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (5, 'Administration Vice President', 15000.00, 30000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (6, 'Accountant', 4200.00, 9000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (7, 'Finance Manager', 8200.00, 16000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (8, 'Human Resources Representative', 4000.00, 9000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (9, 'Programmer', 4000.00, 10000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (10, 'Marketing Manager', 9000.00, 15000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (11, 'Marketing Representative', 4000.00, 9000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (12, 'Public Relations Representative', 4500.00, 10500.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (13, 'Purchasing Clerk', 2500.00, 5500.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (14, 'Purchasing Manager', 8000.00, 15000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (15, 'Sales Manager', 10000.00, 20000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (16, 'Sales Representative', 6000.00, 12000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (17, 'Shipping Clerk', 2500.00, 5500.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (18, 'Stock Clerk', 2000.00, 5000.00);
INSERT INTO job(job_id, job_title, min_salary, max_salary) VALUES (19, 'Stock Manager', 5500.00, 8500.00);
 
-- department
INSERT INTO department(department_id, department_name, location_id) VALUES (1, 'Administration', 1700);
INSERT INTO department(department_id, department_name, location_id) VALUES (2, 'Marketing', 1800);
INSERT INTO department(department_id, department_name, location_id) VALUES (3, 'Purchasing', 1700);
INSERT INTO department(department_id, department_name, location_id) VALUES (4, 'Human Resources', 2400);
INSERT INTO department(department_id, department_name, location_id) VALUES (5, 'Shipping', 1500);
INSERT INTO department(department_id, department_name, location_id) VALUES (6, 'IT', 1400);
INSERT INTO department(department_id, department_name, location_id) VALUES (7, 'Public Relations', 2700);
INSERT INTO department(department_id, department_name, location_id) VALUES (8, 'Sales', 2500);
INSERT INTO department(department_id, department_name, location_id) VALUES (9, 'Executive', 1700);
INSERT INTO department(department_id, department_name, location_id) VALUES (10, 'Finance', 1700);
INSERT INTO department(department_id, department_name, location_id) VALUES (11, 'Accounting', 1700);
 
-- employee
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (100, 'Steven', 'King', 'steven.king@esmartdata.org', '515.123.4567', '1987-06-17', 4, 24000.00, 9);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (101, 'Neena', 'Kochhar', 'neena.kochhar@esmartdata.org', '515.123.4568', '1989-09-21', 5, 17000.00, 9);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (102, 'Lex', 'De Haan', 'lex.de haan@esmartdata.org', '515.123.4569', '1993-01-13', 5, 17000.00, 9);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (103, 'Alexander', 'Hunold', 'alexander.hunold@esmartdata.org', '590.423.4567', '1990-01-03', 9, 9000.00, 6);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (104, 'Bruce', 'Ernst', 'bruce.ernst@esmartdata.org', '590.423.4568', '1991-05-21', 9, 6000.00, 6);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (105, 'David', 'Austin', 'david.austin@esmartdata.org', '590.423.4569', '1997-06-25', 9, 4800.00, 6);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (106, 'Valli', 'Pataballa', 'valli.pataballa@esmartdata.org', '590.423.4560', '1998-02-05', 9, 4800.00, 6);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (107, 'Diana', 'Lorentz', 'diana.lorentz@esmartdata.org', '590.423.5567', '1999-02-07', 9, 4200.00, 6);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (108, 'Nancy', 'Greenberg', 'nancy.greenberg@esmartdata.org', '515.124.4569', '1994-08-17', 7, 12000.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (109, 'Daniel', 'Faviet', 'daniel.faviet@esmartdata.org', '515.124.4169', '1994-08-16', 6, 9000.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (110, 'John', 'Chen', 'john.chen@esmartdata.org', '515.124.4269', '1997-09-28', 6, 8200.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (111, 'Ismael', 'Sciarra', 'ismael.sciarra@esmartdata.org', '515.124.4369', '1997-09-30', 6, 7700.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (112, 'Jose Manuel', 'Urman', 'jose manuel.urman@esmartdata.org', '515.124.4469', '1998-03-07', 6, 7800.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (113, 'Luis', 'Popp', 'luis.popp@esmartdata.org', '515.124.4567', '1999-12-07', 6, 6900.00, 10);
INSERT INTO employee(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES (114, 'Den', 'Raphaely', 'den.raphaely@esmartdata.org', '515.127.4561', '1994-12-07', 14, 11000.00, 3);