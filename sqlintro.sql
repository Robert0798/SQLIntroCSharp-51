-- this is a comment

-- using select

SELECT * FROM products;

SELECT Name, Price FROM products
WHERE Price > 500.00;

SELECT * FROM employees
WHERE MiddleInitial IS NULL
AND Title = "Stocker";

Select FirstName, LastName, Title FROM employees
WHERE Title LIKE "%vice%";

SELECT SUM(Price) AS TotalPrice from products;

-- using insert

INSERT INTO products (Name, Price, CategoryID, OnSale, StockLevel)
VALUES ("Speaker", 250.00, 4, 0, 500);

-- using update

UPDATE products SET Name = "Video Game", Price = 60.00, CategoryID = 8, OnSale = 1, StockLevel = 80
WHERE ProductID = 940;

-- using delete

DELETE FROM products
WHERE ProductID = 940;