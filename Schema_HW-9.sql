USE homework_9;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
dept_no VARCHAR(9) NOT NULL,
dept_name VARCHAR(9) NOT NULL
);

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(255) NOT NULL,
from_date DATE,
to_date DATE
);

CREATE TABLE dept_manager (
dept_no VARCHAR(24) NOT NULL,
emp_no INT,
from_date DATE,
to_date DATE
);

CREATE TABLE employees (
emp_no INT,
birth_date VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,  
gender VARCHAR(255) NOT NULL, 
hire_date DATE
);


CREATE TABLE salaries (
emp_no INT,
salary INT,
from_date DATE,
to_date DATE
);

CREATE TABLE titles (
emp_no INT,
title TEXT NOT NULL,
from_date DATE,
to_date DATE
);

SELECT * from dept_emp;
