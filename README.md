## Sqlalchemy-Challenge
This project consists of multiple SQL queries and table creation statements used to manage and analyze employee data. The database schema includes tables for employees, departments, salaries, job titles, and department management, with foreign key relationships to maintain data integrity.

### Database Schema

The database Schema consists of the following:

departments - Stores department numbers and names.

titles - Stores job titles with unique identifiers.

employees - Stores employee details including name, title, and hire date.

dept_emp - Links employees to their respective departments.

dept_manager - Links department managers to their departments.

salaries - Stores employee salaries.

### SQL Queries

The SQL queries included in this challenge:

List Employee Details: Retrieves employee number, name, sex, and salary.

Employees Hired in 1986: Fetches first name, last name, and hire date of employees hired in 1986.

Department Managers: Lists department managers along with department and employee details.

Employee Department Information: Retrieves department number, employee details, and department name.

Search for Specific Employees: Finds employees named 'Hercules B%'.

Sales Employees: (Query under development) Aims to list all sales employees.

Sales and Development Employees: Retrieves details of employees in Sales and Development departments.

Employee Last Name Frequency: Counts occurrences of last names in descending order.

