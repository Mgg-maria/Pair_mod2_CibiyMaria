USE Northwind;

-- Empleadas que sean de la misma ciudad:
SELECT

	j.City as city,
    j.FirstName as NombreEmpleado,
	j.LastName as ApellidoEmpleado,
    e.City as city,
    e.FirstName as NombreJefe,
    e.LastName as ApellidoJefe
    
	FROM employees AS j,employees AS e
    WHERE e.EmployeeID = j.ReportsTo;

-- Comprobaciones

SELECT *
FROM employees;


SELECT

	j.City as city,
    j.FirstName as NombreEmpleado,
	j.LastName as ApellidoEmpleado,
    e.City as city,
    e.FirstName as NombreJefe,
    e.LastName as ApellidoJefe
    
	FROM employees AS j
	LEFT JOIN employees as e
	ON e.EmployeeID = j.ReportsTo;
    
    -- Queremos obtener el nombre de la categoría y el nombre de los productos dentro de cada categoría. Podriamos usar un RIGTH JOIN con 'categories'?, usemos tambien la tabla 'products'.
    
SELECT

	c.CategoryName as Nombre_Categoria,	
    p.ProductName as Nombre_Producto
    
	FROM categories AS c
    RIGHT JOIN products AS p
    ON p.CategoryID = c.CategoryID;
    
-- Comprobaciones

    SELECT *
    FROM products;
    
    SELECT *
    FROM categories;
    
    
 -- Obtener una lista de todos los pedidos junto con los datos de las empresas clientes. Sin embargo, hay algunos pedidos que pueden no tener un cliente asignado   

SELECT 
	o.OrderId as ID_pedido,
	c.CompanyName as Compañia
    
	FROM orders as o
	LEFT JOIN customers as c
    ON o.CustomerID = c.CustomerID;
    
-- Comprobaciones

    SELECT * 
    FROM orders;
    
    SELECT *
    FROM customers;
