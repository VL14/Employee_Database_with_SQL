--Q1: List employee details
SELECT p.emp_no, p.last_name, p.first_name, p.gender,s.salary
FROM salaries as s
FULL JOIN employees as p
ON s.emp_no=p.emp_no;

--Q2: List employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--Q3: List manager of each dept with manager info **Fix Order of Joins (Full Join)
SELECT d.dept_no, d.dept_name, p.first_name, p.last_name, m.emp_no, e.from_date, e.to_date
FROM departments as d
FULL JOIN dept_emp as e ON d.dept_no = e.dept_no;
LEFT JOIN dept_manager as m ON e.emp_no = m.emp_no
	WHERE m.emp_no IS NULL
LEFT JOIN employees as p ON m.emp_no = p.emp_no
	WHERE p.emp_no IS NULL;

--Q4: List employee dept and info **Fix Order of Joins (employees first)
SELECT d.dept_no, d.dept_name, p.emp_no, p.last_name, p.first_name
FROM departments as d
JOIN dept_manager as m ON d.dept_no = m.dept_no
JOIN employees as p ON m.emp_no = p.emp_no
JOIN dept_emp as e ON p.emp_no = e.emp_no;

--Q5: List employees whose first name is Hercules and last name begins with B
SELECT first_name, last_name
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--Q6: List all employees in the Sales department **Fix Code - 2 REsults
SELECT p.first_name, p.last_name, p.emp_no, d.dept_name
FROM employees as p
FULL JOIN dept_manager as m ON m.emp_no = p.emp_no
FULL JOIN departments as d ON d.dept_no = m.dept_no
WHERE dept_name='Sales';

--Q7: List all employees in Sales and Development depts **Fix Code - Only 4 Results
SELECT p.first_name, p.last_name, p.emp_no, d.dept_name
FROM employees as p
FULL JOIN dept_manager as m ON m.emp_no = p.emp_no
FULL JOIN departments as d ON d.dept_no = m.dept_no
WHERE dept_name='Sales' OR dept_name='Development';

--Q8: List count of employee last names in descending order
SELECT last_name, COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name 
ORDER BY "Last Name Frequency" DESC;