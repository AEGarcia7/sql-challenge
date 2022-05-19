-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "department_number" VARCHAR(255)   NOT NULL,
    "department_name" VARCHAR(255)   NOT NULL,
   CONSTRAINT "pk_Departments" PRIMARY KEY (
        "department_number"
     )
);

CREATE TABLE "Department_employee" (
    employee_number INT NOT NULL,
    department_number VARCHAR(255) NOT NULL,		
FOREIGN KEY (department_number) REFERENCES "Departments"(department_number),	
FOREIGN KEY (employee_number) REFERENCES "Employees"(employee_number),
	PRIMARY KEY (department_number,employee_number) 
);

CREATE TABLE "Department_manager" (
    "department_number" VARCHAR(255)   NOT NULL,
    "employee_number" INT   NOT NULL,
	FOREIGN KEY (employee_number) REFERENCES "Employees"(employee_number),
    CONSTRAINT "pk_Department_manager" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Employees" (
    "employee_number" INT   NOT NULL,
    "employee_title_id" VARCHAR(255)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(255)   NOT NULL,
    "hire_date" DATE   NOT NULL,
	FOREIGN KEY (employee_title_id) REFERENCES "Titles"(employee_title_id),
    FOREIGN KEY (employee_number) REFERENCES "Salaries"(employee_number),
	
	CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Salaries" (
    "employee_number" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Titles" (
    "employee_title_id" VARCHAR(255)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "employee_title_id"
     )
);

