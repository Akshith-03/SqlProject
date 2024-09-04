
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);

CREATE TABLE SalesReps (
    SalesRepID INT PRIMARY KEY,
    SalesRepName VARCHAR(100),
    Region VARCHAR(50),
    Email VARCHAR(100)
);


CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SalesRepID INT,
    Quantity INT,
    TransactionDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalesRepID) REFERENCES SalesReps(SalesRepID)
);
