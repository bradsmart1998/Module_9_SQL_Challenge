CREATE TABLE titles (
	PRIMARY KEY(title_id),
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL
);

SELECT * FROM titles;

drop table if exists employees CASCADE;

CREATE TABLE employees (
	PRIMARY KEY(emp_no),
	emp_no INTEGER,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

drop table if exists dept_manager;

CREATE TABLE dept_manager (
	PRIMARY KEY (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(255) NOT NULL,
	emp_no INTEGER
);

SELECT * FROM dept_manager;

CREATE TABLE salaries (
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    emp_no INTEGER,
    salary INTEGER
):

CREATE TABLE dept_emp (
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	emp_no	INTEGER NOT NULL,
	dept_no VARCHAR(255) NOT NULL
);

CREATE TABLE departments (
	PRIMARY KEY(dept_no),
	dept_no VARCHAR(255) NOT NULL,
	dept_name VARCHAR(255) NOT NULL
);
SELECT * FROM departments;

CREATE TABLE salaries (
	PRIMARY KEY (emp_no),
	emp_no INT,
	salary INT
);