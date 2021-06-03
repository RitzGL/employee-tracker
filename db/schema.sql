-- drop DATABASE create TABLE column names, input type etc
DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;
USE employees_db;

-- create tables 
-- DO: department, role, employee
-- in that order

-- 3 tables:
-- department
    -- id PRIMARY KEY AUTO INCREMENT INTEGER 
    -- name VARCHAR(30)
CREATE TABLE department(
    id INT AUTO_INCREMENT NOT NULL,
    dpt_name VARCHAR(30),
    PRIMARY KEY(id)
);
-- role
    -- id PRIMARY KEY AUTO INCREMENT INTEGER
    -- title VARCHAR(30)
    -- salary DECIMAL 
    -- department_id INTEGER FOREIGN KEY
CREATE TABLE emp_role(
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(department_id) REFERENCES department(id)
);
-- employee
    -- id PRIMARY KEY AUTO INCREMENT INTEGER
    -- first_name VARCHAR(30)
    -- last_name VARCHAR(30)
    -- role_id INTEGER FOREIGN KEY
    -- manager_id INTEGER FOREIGN KEY
CREATE TABLE employee(
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(role_id) REFERENCES emp_role(id),
    FOREIGN KEY(manager_id) REFERENCES emp_role(id)
);