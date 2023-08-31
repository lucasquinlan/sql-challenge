drop table titles;
drop table departments;
drop table employees;
drop table dept_manager;
drop table dept_emp;
drop table salaries;

create table titles (
	title_id varchar primary key,
	title varchar
);

create table departments (
	dept_no varchar primary key,
	dept_name varchar
);

create table employees (
	emp_no varchar primary key,
	emp_title_id varchar references titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

create table dept_manager (
	dept_no varchar references departments(dept_no),
	emp_no varchar
);


create table dept_emp (
	emp_no varchar references employees(emp_no),
	dept_no varchar references departments(dept_no)
);

create table salaries (
	emp_no varchar references employees(emp_no),
	salary int
);

