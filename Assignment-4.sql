USE sqlDatabase;

CREATE TABLE manager
(managerId int NOT NULL PRIMARY KEY, firstName varchar(15), lastName varchar(15))

CREATE TABLE department
(depId int NOT NULL PRIMARY KEY, depName varchar(15) NOT NULL UNIQUE, depHeadId int REFERENCES manager(managerId))

CREATE TABLE employee
(empId int NOT NULL PRIMARY KEY, fname varchar(15), lname varchar(15), deptment varchar(15) REFERENCES department(depName), joiningDate date)

INSERT INTO manager
VALUES (101, 'Bala', 'Raju'),
(102, 'Soumya', 'Manavi'),
(103, 'Sreeja', 'Tabla'),
(104, 'Ramesh', 'Pati');

INSERT INTO department
VALUES (201, 'HR', 101),
(202, 'IT', 102),
(203, 'Marketing', 103),
(204, 'Finance', 104)

INSERT INTO employee
VALUES (301, 'Sandhya', 'Rani', 'HR', '2022-01-05'),
(302, 'Shristi', 'Shri', 'IT', '2022-06-23'),
(303, 'Karthik', 'Raju', 'Finance', '2022-01-11'),
(304, 'Keerthika', 'Sai', 'Marketing', '2023-01-03'),
(305, 'Uday', 'Kiran', 'IT', '2022-12-12'),
(306, 'Ishan', 'Sharma', 'HR', '2023-01-10')


