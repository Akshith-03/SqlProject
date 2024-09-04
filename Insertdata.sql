
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 1000.00),
(2, 'Smartphone', 'Electronics', 700.00),
(3, 'Tablet', 'Electronics', 300.00);


INSERT INTO Customers (CustomerID, CustomerName, Email, PhoneNumber, Address) VALUES
(1, 'Akshith', 'Akshith@1234.com', '7823190873', 'Jangoan'),
(2, 'Raviteja', 'Ravi@1918.com', '985463217', 'karminagar');


INSERT INTO SalesReps (SalesRepID, SalesRepName, Region, Email) VALUES
(1, 'Vishnu', 'West', 'Vishnu@12F1.com'),
(2, 'Vivek', 'East', 'vivek@0786.com');


INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, SalesRepID, Quantity, TransactionDate, TotalAmount) VALUES
(1, 1, 1, 1, 2, '2023-08-15', 2000.00),
(2, 2, 2, 2, 1, '2023-09-01', 700.00),
(3, 3, 1, 1, 3, '2023-09-05', 900.00);
