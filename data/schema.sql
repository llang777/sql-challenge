CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);
CREATE TABLE dept_emp (
    emp_no INT PRIMARY KEY,
    dept_no VARCHAR(4) REFERENCES departments(dept_no)
);
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) REFERENCES departments(dept_no),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no)
);
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE
);
CREATE TABLE salaries (
    emp_no INT REFERENCES employees(emp_no),
    salary INT,
    PRIMARY KEY (emp_no, salary)
);
CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(255)
);
