--Q1: List employee details
SELECT p.emp_no, p.last_name, p.first_name, p.gender,s.salary
FROM salaries as s
FULL JOIN employees as p
ON s.emp_no=p.emp_no;

--Q2: List employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--Q3: List manager of each dept with manager info 
SELECT d.dept_no, d.dept_name, p.first_name, p.last_name, m.emp_no, e.from_date, e.to_date
FROM dept_manager as m
LEFT JOIN employees as p ON m.emp_no = p.emp_no
RIGHT JOIN dept_emp as e ON e.emp_no = m.emp_no
FULL JOIN departments as d ON d.dept_no = e.dept_no;

--Q4: List employee dept and info
SELECT e.dept_no, d.dept_name, p.emp_no, p.last_name, p.first_name
FROM employees as p
JOIN dept_emp as e ON p.emp_no = e.emp_no
JOIN departments as d ON e.dept_no = d.dept_no;

--Q5: List employees whose first name is Hercules and last name begins with B
SELECT first_name, last_name
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--Q6: List all employees in the Sales department
SELECT p.emp_no, p.last_name, p.first_name, d.dept_no
FROM employees as p
JOIN dept_emp as e ON p.emp_no = e.emp_no
JOIN departments as d ON e.dept_no = d.dept_no
WHERE d.dept_name='Sales';

--Q7: List all employees in Sales and Development depts
SELECT p.emp_no, p.last_name, p.first_name, d.dept_no
FROM employees as p
JOIN dept_emp as e ON p.emp_no = e.emp_no
JOIN departments as d ON e.dept_no = d.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--Q8: List count of employee last names in descending order
SELECT last_name, COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name 
ORDER BY "Last Name Frequency" DESC;