USE northwind;

-- Productos más baratos y caros de nuestra la bases de datos:
-- Desde la división de productos nos piden conocer el precio de los productos que tienen el precio más alto y más bajo. Dales el alias lowestPrice y highestPrice.

SELECT 
	MIN(UnitPrice) AS lowestPrice,
    MAX(UnitPrice) AS highestPrice
FROM products;

-- Conociendo el numero de productos y su precio medio:
-- Adicionalmente nos piden que diseñemos otra consulta para conocer el número de productos y el precio medio de todos ellos (en general, no por cada producto)

SELECT
	COUNT(ProductID),
    AVG(UnitPrice) AS precio_medio
    FROM products;
    
-- Sacad la máxima y mínima carga de los pedidos de UK:
-- Nuestro siguiente encargo consiste en preparar una consulta que devuelva la máxima y mínima cantidad de carga para un pedido (freight) enviado a Reino Unido (United Kingdom).

SELECT
	MIN(Freight) AS Freight_min,
    MAX(Freight) AS Freight_max
FROM orders
WHERE ShipCountry = "UK";

-- Qué productos se venden por encima del precio medio:

SELECT ProductName,UnitPrice
    FROM products
    WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM products)
    ORDER BY UnitPrice DESC;

-- Qué productos se han descontinuado:


SELECT ProductName,Discontinued,
	CASE WHEN Discontinued = 1 THEN "Descontinuado"
    ELSE "Continuado"
    END AS "Disponibilidad"
    FROM products;

-- Detalles de los productos de la query anterior:


SELECT ProductName,Discontinued,
	CASE WHEN Discontinued = 1 THEN "Descontinuado"
		ELSE "Continuado"
		END AS "Disponibilidad"
	FROM products
    WHERE Discontinued = 1;
    
-- Relación entre número de pedidos y máxima carga:



