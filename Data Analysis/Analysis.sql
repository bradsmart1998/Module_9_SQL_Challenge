
-- Question 1 - List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;
-- See CSV file for output

-- Question 2 - List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e
WHERE hire_date like '%1986';
-- See CSV file for output

-- Question 3 - List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d
JOIN dept_manager de
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no;
-- See CSV file for output

-- Question 4 - List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT de.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM dept_emp de
JOIN employees e 
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;
-- See CSV file for output