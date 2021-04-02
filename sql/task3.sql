CREATE TABLE Employee1 (Id INT, Name VARCHAR(255), Salary INT, ManagerId INT );
TRUNCATE TABLE Employee1;
INSERT INTO Employee1 (Id, Name, Salary, ManagerId) VALUES ('1', 'Joe', '70000', '3');
INSERT INTO Employee1 (Id, Name, Salary, ManagerId) VALUES ('2', 'Henry', '80000', '4');
INSERT INTO Employee1 (Id, Name, Salary, ManagerId) VALUES ('3', 'Sam', '60000', Null);
INSERT INTO Employee1 (Id, Name, Salary, ManagerId) VALUES ('4', 'Max', '90000', Null);
SELECT e1.Name FROM Employee1 e1 JOIN Employee1 e2 ON e1.ManagerId = e2.Id WHERE e1.Salary > e2.Salary;