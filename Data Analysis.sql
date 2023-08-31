--1. List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
join departments d
on dm.dept_no = d.dept_no
join employees e
on dm.emp_no = e.emp_no
order by d.dept_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no, e.last_name, e.first_name, e.emp_no, d.dept_name
from dept_emp de
join employees e
on de.emp_no = e.emp_no
join departments d
on de.dept_no = d.dept_no
order by dept_no ASC;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name, e.last_name, e.sex
from employees e
where e.first_name = 'Hercules' and e.last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(emp_no) as "name frequency"
from employees
group by last_name
order by "name frequency" desc;
