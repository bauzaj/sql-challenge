CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE dept_employee(
	emp_no INT  NOT NULL,
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
	PRIMARY KEY(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no),
	FOREIGN KEY (emp_no) REFERENCES departments(emp_no)
);

CREATE TABLE employees(
	emp_no INT  NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex TEXT NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
    FOREIGN KEY(title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INT  NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY NOT NULL,
	title TEXT NOT NULL
);