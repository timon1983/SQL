CREATE TABLE Person1 (Id INT, Email VARCHAR(255));
TRUNCATE TABLE Person1;
INSERT INTO Person1 (Id, Email) VALUES ('1', 'a@b.com');
INSERT INTO Person1 (Id, Email) VALUES ('2', 'c@d.com');
INSERT INTO Person1 (Id, Email) VALUES ('3', 'a@b.com');
SELECT 
    Email
FROM
    Person1
GROUP BY Email
HAVING COUNT(Email) > 1; 