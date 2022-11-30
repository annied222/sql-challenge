-- Creating titles table
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
    title VARCHAR);
--Import titles.csv
--Check to make sure imported correctly
SELECT * FROM employees;

--Creating employees table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
--Import employees.csv
--Check to make sure imported correctly
SELECT * FROM employees;

-- Creating salaries table
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
    salaries VARCHAR
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
--Import salaries.csv
--Check to make sure imported correctly
SELECT * FROM salaries;

-- Creating departments table
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR);
--Import departments.csv
--Check to make sure imported correctly
SELECT * FROM departments;


-- Creating dept_emp table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
    PRIMARY KEY (emp_no, dept_no));
--Adding in Forgein Key
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
--Import dept_emp.csv
--Check to make sure imported correctly
SELECT * FROM dept_manager;

-- Creating dept_emp table
CREATE TABLE dept_emp(
	emp_no INT,dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no));
--Adding in Forgein Key
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
--Import dept_emp.csv
--Check to make sure imported correctly
SELECT * FROM dept_emp;