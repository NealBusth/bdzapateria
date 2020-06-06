USE dbzapateria;

/* Consulta de Facturacion de un Cliente en específico */
SELECT c.nombre as cliente, SUM(fd.precio - (fd.impuesto * fd.precio)) as precio_final
FROM factura f 
	INNER JOIN factura_detalle fd ON f.id = fd.id_factura
	INNER JOIN cliente c ON f.id_cliente = c.id
WHERE f.id_cliente = 5;

/* Consulta de Facturacion de un Producto en específico */
SELECT p.nombre, SUM(fd.precio - (fd.impuesto * fd.precio)) as precio_final
FROM factura_detalle fd
	INNER JOIN producto p ON fd.id_producto = p.id
WHERE fd.id_producto = 6;

/* Consulta de Facturacion de un rango de fechas */
SELECT SUM(fd.precio - (fd.impuesto * fd.precio)) as precio_final
FROM factura_detalle fd
	INNER JOIN factura f ON fd.id_factura = f.id
WHERE f.fecha BETWEEN '20200515' AND '20200531';

/* De todas las facturaciones, consultar los clientes únicos, sin repetidos */
SELECT DISTINCT c.nombre as cliente
FROM factura f INNER JOIN cliente c ON f.id_cliente = c.id
ORDER BY c.nombre;
