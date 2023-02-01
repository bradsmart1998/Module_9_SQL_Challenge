-- Question 1 - List the employee number, last name, first name, sex, 
-- and salary of each employee (2 points)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;
-- See CSV file for output

-- Question 2 - List the first name, last name, 
-- and hire date for the employees who were hired in 1986 (2 points)
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e
WHERE hire_date like '%1986';
-- See CSV file for output

-- Question 3 - List the manager of each department along with their department number,
-- department name, employee number, last name, and first name (2 points)
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d
JOIN dept_manager de
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no;
-- See CSV file for output

-- Question 4 - List the department number for each employee along with that employee’s 
-- employee number, last name, first name, and department name (2 points)
SELECT de.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM dept_emp de
JOIN employees e 
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;
-- See CSV file for output


-- Question 5 - List first name, last name, and sex of each employee whose first name is
-- Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';
-- See CSV file for output


-- Question 6 - List each employee in the Sales department, 
-- including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--  Question 7 List each employee in the Sales and Development departments, 
--including their employee number,
-- last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');
-- See CSV file for output

-- Question 8 - List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
SELECT e.last_name, COUNT (e.last_name)
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT desc
-- See CSV file for output