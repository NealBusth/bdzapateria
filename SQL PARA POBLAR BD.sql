USE dbzapateria;

INSERT INTO pais (sigla, nombre) VALUES 
('PER', 'PERU'),
('COL', 'COLOMBIA'),
('BOL', 'BOLIVIA');

INSERT INTO cliente (nombre, id_pais) VALUES 
('John Alarcon', 1),
('Akemi Inami', 2),
('Rosa Parra', 1),
('Ronaldo Cayetano', 3),
('Sonya Castañeda', 1),
('Carlos Valderrama', 2),
('Andrea Arnau', 2),
('Alejadro Chumacero', 3),
('Marcelo Martins', 3);


INSERT INTO producto (nombre, presentacion, precio) VALUES 
('ZAPATOS DE CUERO PARA HOMBRE', NULL, 149.98),
('TINTE NEGRO PARA ZAPATO DE CUERO', NULL, 24.50),
('CALZADO DEPORTIVO PARA DAMA', NULL, 149.97),
('POLVO PARA GAMUZA', NULL, 4.80),
('ZAPATO DE TACON', NULL, 134.94),
('CALZADO DEPORTIVO NIKE PARA HOMBRE', NULL, 214.20),
('TINTE PARA ZAPATO DE GAMUZA', NULL, 15.87);


INSERT INTO factura (id_cliente, fecha, estado) VALUES
(1, '20200505', 'A'),
(3, '20200508', 'A'),
(5, '20200508', 'A'),
(2, '20200515', 'A'),
(7, '20200522', 'A'),
(6, '20200623', 'A'),
(9, '20200625', 'A'),
(1, '20200602', 'A'),
(8, '20200604', 'A'),
(4, '20200604', 'A');

INSERT INTO factura_detalle (id_factura, id_producto, impuesto, descuento, precio, estado) VALUES 
(1, 1, 0.18, 0.00, 149.98, 'A'),
(1, 2, 0.18, 0.00, 24.50, 'A'),
(2, 3, 0.18, 0.00, 149.97, 'A'),
(3, 5, 0.18, 0.00, 134.94, 'A'),
(3, 3, 0.18, 0.00, 149.97, 'A'),
(4, 4, 0.18, 0.00, 4.80, 'A'),
(4, 3, 0.18, 0.00, 149.97, 'A'),
(5, 5, 0.18, 0.00, 134.94, 'A'),
(6, 6, 0.18, 0.00, 214.20, 'A'),
(7, 1, 0.18, 0.00, 149.98, 'A'),
(7, 6, 0.18, 0.00, 214.20, 'A'),
(8, 6, 0.18, 0.00, 214.20, 'A'),
(8, 7, 0.18, 0.00, 15.87, 'A'),
(9, 1, 0.18, 0.00, 149.98, 'A'),
(9, 6, 0.18, 0.00, 214.20, 'A'),
(10, 1, 0.18, 0.00, 149.98, 'A'),
(10, 2, 0.18, 0.00, 24.50, 'A'),
(10, 6, 0.18, 0.00, 214.20, 'A');
