-- Drop tables if they exist
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS departments;

-- departments table
CREATE TABLE departments (
    dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50) NOT NULL
);

-- titles table
CREATE TABLE titles (
    title_id VARCHAR(30) PRIMARY KEY NOT NULL,
    title VARCHAR(30) NOT NULL
);

-- Employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(30),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) ON DELETE CASCADE
);

-- dept_emp table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(20) NOT NULL,
	primary key (dept_no,emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);


-- dept_manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) ON DELETE CASCADE
);

-- salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) ON DELETE CASCADE
);

