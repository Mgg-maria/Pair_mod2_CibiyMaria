USE Northwind;

-- Extraed los pedidos con el máximo "order_date" para cada empleado.

SELECT OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate
	FROM orders as o
	WHERE o.OrderDate =
    
    (SELECT MAX(OrderDate)
    FROM orders as o2
    WHERE o.EmployeeID = o2.EmployeeID);
    
-- comprobaciones
SELECT *
FROM orders;

SELECT *
FROM employees;

-- Extraed información de los productos "Beverages"

SELECT ProductID,ProductName,CategoryID
	FROM products as p
    WHERE p.CategoryID =
    
	(SELECT CategoryID
		FROM Categories as c
		WHERE c.CategoryName = "Beverages");
        
        
-- comprobaciones

SELECT *
FROM products;

SELECT *
FROM Categories;

-- Extraed la lista de países donde viven los clientes, pero no tiene suppliers en su pais.


SELECT DISTINCT c. Country
FROM customers as c
WHERE c. Country NOT IN 
(SELECT s.Country
FROM suppliers AS s);


-- comprobaciones
SELECT *
FROM customers;

SELECT *
FROM suppliers;


