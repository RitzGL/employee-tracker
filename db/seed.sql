-- INSERT statements with dummy data to test with
-- this is run to fill the database when queries are done

-- INSERT DEPARTMENTS
INSERT INTO department
VALUES(id, "Human Resources");

INSERT INTO department
VALUES(id,"Information Technology");

INSERT INTO department
VALUES(id, "Engineering");

-- INSERT ROLES
-- THESE BELONG TO Human Resources

INSERT INTO emp_role
VALUES (id, "Advisor", 55000.00, 1);

INSERT INTO emp_role
VALUES (id, "Consultant", 62000.00, 1);

INSERT INTO emp_role
VALUES (id, "Occupational Psychologist", 90000.00, 1);

-- THESE BELONG TO Information Technology
INSERT INTO emp_role
VALUES (id, "Consultant", 60000.00, 2);

INSERT INTO emp_role
VALUES (id, "Technician", 75000.00, 2);

INSERT INTO emp_role
VALUES (id, "Analyst", 80000.00, 2);

-- THESE BELONG TO Engineering

INSERT INTO emp_role
VALUES (id, "Mech Engineer", 90000.00, 3);

INSERT INTO emp_role
VALUES (id, "Developer", 67000.00, 3);

INSERT INTO emp_role
VALUES (id, "Electrical Engineer", 84000.00, 3);