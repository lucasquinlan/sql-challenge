drop table titles;
drop table departments;
drop table employees;
drop table dept_manager;
drop table dept_emp;
drop table salaries;

create table titles (
	title_id varchar,
	title varchar,
	primary key (title_id)
);

create table departments (
	dept_no varchar,
	dept_name varchar,
	primary key (dept_no)
);

create table employees (
	emp_no varchar,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

create table dept_manager (
	dept_no varchar,
	emp_no varchar,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);


create table dept_emp (
	emp_no varchar,
	dept_no varchar,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table salaries (
	emp_no varchar,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
