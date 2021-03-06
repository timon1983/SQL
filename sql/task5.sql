Create table Customers (Id int, Name varchar(255));
Create table Orders (Id int, CustomerId int);
insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');
insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');
select * from customers;
select * from orders;
SELECT 
    Name AS Customers
FROM
    Customers
        LEFT JOIN
    Orders ON Customers.Id = Orders.CustomerId
WHERE
    Orders.Id IS NULL;