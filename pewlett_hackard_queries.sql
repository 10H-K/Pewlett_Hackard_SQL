-- Query: Employee Number, Last Name, First Name, Sex, And Salary Of Each Employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no
ORDER BY employees.emp_no;


-- Query: First Name, Last Name, And Hire Date For The Employees Hired In 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986';


-- Query: Manager Of Each Department Along With Their Department Number, Department Name, Employee Number, Last Name, And First Name
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no=departments.dept_no
JOIN employees ON dept_manager.emp_no=employees.emp_no
ORDER BY dept_no;


-- Query: Department Number For Each Employee Along With That Employee’s Employee Number, Last Name, First Name, And Department Name
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
ORDER BY emp_no;


-- Query: First Name, Last Name, And Sex Of Each Employee Whose First Name Is Hercules And Whose Last Name Begins With The Letter B
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name LIKE 'Hercules' AND employees.last_name LIKE 'B%'
ORDER BY employees.last_name;


-- Query: Each Employee In The Sales Department, Including Their Employee Number, Last Name, And First Name
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no;


-- Query: Each Employee In The Sales And Development Departments, Including Their Employee Number, Last Name, First Name, And Department Name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY employees.emp_no;


-- Query: Frequency Counts, In Descending Order, Of All The Employee Last Names (That Is, How Many Employees Share Each Last Name)
SELECT employees.last_name, COUNT(*) AS frequency
FROM employees
GROUP BY employees.last_name
ORDER BY frequency DESC;

