/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT P.NAME AS ProductName, C.NAME as CategoryName
FROM products as P
INNER JOIN categories AS C 
ON C.CategoryID = P.CategoryID
WHERE C.NAME = 'Computers'; 

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.NAME, p.Price, r.Rating FROM products as p
inner join reviews as r on r.ProductID = p.ProductID
where r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.Quantity) AS Total 
FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.NAME as 'Department Name', c.NAME as 'Category Name' FROM departments as d
INNER JOIN categories as c ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 Select p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
 FROM products as p
 INNER JOIN sales as s on s.ProductID = p.ProductID
 WHERE p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment 
FROM products as p
INNER JOIN reviews as r ON r.ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1; 

/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
