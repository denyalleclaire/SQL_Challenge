create table titles ( 
	title_id VARCHAR NOT Null, 
	title VARCHAR Not Null, 
	Primary Key (title_id)); 


create table employees ( 
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR not null, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR Not Null, 
	last_name VARCHAR NOT NULL,
	sex VARCHAR not null,
	hire_date DATE NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),  
	Primary Key (emp_no)); 
	
	
create table departments ( 
	dept_no VARCHAR NOT Null, 
	dept_name VARCHAR Not null, 
	Primary Key (dept_no)); 
	
create table dept_manager ( 
	dept_no VARCHAR not null, 
	emp_no INT not null,
	FOREIGN Key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (dept_no, emp_no)); 
	
	
	
create table dept_emp ( 
	emp_no INT Not null, 
	dept_no VARCHAR not null, 
	foreign key (emp_no) references employees (emp_no), 
	foreign key (dept_no) references departments (dept_no), 
	primary key (emp_no, dept_no)); 
	
	
create table salaries ( 
	emp_no INT not null, 
	salary int not null, 
	foreign key (emp_no) references employees (emp_no), 
	primary key (emp_no)); 

	
