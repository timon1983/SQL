CREATE TABLE Employee(Id INT, Salary INT);
TRUNCATE TABLE Employee;
INSERT INTO Employee (Id, Salary) VALUES ('1', '100');
INSERT INTO Employee (Id, Salary) VALUES ('2', '200');
INSERT INTO Employee (Id, Salary) VALUES ('3', '300');
SELECT 
    MAX(Salary) AS SecondHighestSalary
FROM
    Employee
WHERE
    Salary NOT IN (SELECT 
            MAX(Salary)
        FROM
            Employee
        );
