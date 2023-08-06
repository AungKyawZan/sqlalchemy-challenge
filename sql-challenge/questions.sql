-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT employees.emp_no, employees.last_name, employees.first_name, Employees.sex, salaries.salary
FROM employees
WHERE salaries ON employees.emp_no=salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT departments.dept_no,departments.dept_name,dept_manager.emp_no,Employees.first_name,Employees.last_name
FROM dept_manager
JOIN departments ON departments.dept_no=dept_manager.dept_no
JOIN Employees ON dept_manager.emp_no=Employees.emp_no;

-- List each employee's department number, employee number, last name, first name and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de, employees AS e, departments AS d
WHERE de.emp_no = e.emp_no AND de.dept_no = d.dept_number
ORDER BY e.emp_no;

--List first name, last name and sex of employees named Hercules B%
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List employee number, last name and first name for all Sales employees
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments
--I couldnt figure it out 

--List employee number, last name, first name and department name for all Sales and Development employees
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_number AND (departments.dept_name = 'Sales' OR departments.dept_name = 'Development');

--List the frequency counts of all employee last names (descending order)
SELECT last_name, COUNT(last_name) AS "Count of Last Name"
FROM employees
ORDER BY "Count of Last Name" DESC
GROUP BY last_name;
