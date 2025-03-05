USE Northwind;

-- EJERCICIO 1 

SELECT 
		c.CompanyName AS NombreEmpresa,
		c.CustomerID AS identificador,
		COUNT(o.OrderID) AS NumeroPedidos
        
	FROM customers AS c
	INNER JOIN orders AS o
    
	ON  c.CustomerID = O.CustomerID AND C.country = 'UK'
    GROUP BY c.CompanyName, c.CustomerID;

-- EJERCICIO 2

SELECT 
		c.CompanyName AS NombreEmpresa,
        YEAR(o.OrderDate) AS Ano,
        COUNT(o.OrderID) AS NumObjetos
        
		FROM customers AS c
		INNER JOIN orders AS o
    
		ON  c.CustomerID = O.CustomerID AND C.country = 'UK'
		GROUP BY YEAR(o.OrderDate), NombreEmpresa;
        
-- EJERCICIO 3
    
SELECT 
		o.OrderID,
        c.CompanyName,
        o.OrderDate       
        
        FROM customers AS c
		INNER JOIN orders AS o
	
		ON c.CustomerID = O.CustomerID AND c.country = 'UK';
        
-- EJERCICIO 4
SELECT * from Orderdetails;
SELECT 
		c.CategoryID,
        c.CategoryName
        p. ProductName
        
        SUM(od.Quantity
		FROM categories AS c
        
		INNER JOIN orders AS o

        ON od.productID =
        GROUP BY 
        
