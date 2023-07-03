CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  City VARCHAR(50)
);



INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES (1, 'John Doe', 'New York'),
       (2, 'Jane Smith', 'Los Angeles'),
       (3, 'Robert Johnson', 'Chicago');



CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ProductName VARCHAR(50),
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);



INSERT INTO Orders (OrderID, CustomerID, ProductName, OrderDate)
VALUES (1001, 1, 'Product A', '2023-01-15'),
       (1002, 2, 'Product B', '2023-02-20'),
       (1003, 3, 'Product C', '2023-03-10');


db.users.insertMany([
  { name: 'John', age: 30, city: 'New York' },
  { name: 'Jane', age: 25, city: 'Los Angeles' },
  { name: 'Robert', age: 35, city: 'Chicago' }
]);

db.users.updateOne({ name: 'John' }, { $set: { age: 32 } });



db.users.deleteOne({ name: 'Robert' });
