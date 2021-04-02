CREATE TABLE Person ( PersonId INT, FirstName VARCHAR(255), LastName VARCHAR(255));
CREATE TABLE Address ( AddressId INT, PersonId INT, City VARCHAR(255), State VARCHAR(255));
TRUNCATE TABLE Person;
INSERT INTO Person(PersonId, FirstName, LastName) VALUES ('1', 'Wang', 'Allen');
TRUNCATE TABLE Address;
INSERT INTO Address(AddressId, PersonId, City, State) VALUES ('1', '2', 'New York City', 'New York');
SELECT FirstName, LastName, City, State FROM Person , Address;