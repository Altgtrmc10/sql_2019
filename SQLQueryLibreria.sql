SELECT * FROM 
(SELECT *
FROM [10.225.35.241\MECATRONICA19B].[BDD Libreria].[dbo].[Proveedores] AS PR
INNER JOIN [10.225.35.241\MECATRONICA19B].[BDD Libreria].[dbo].[Libros_Pedidos] AS LP 
ON PR.NIF = LP.Proveedor
UNION
SELECT *
FROM Proveedores 
INNER JOIN Libros_Pedidos
ON Proveedores.NIF = Libros_Pedidos.Proveedor) AS TABLA
WHERE TABLA.Precio <= 200