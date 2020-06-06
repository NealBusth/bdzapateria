CREATE DATABASE dbzapateria;

USE dbzapateria;

CREATE TABLE producto (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
	presentacion VARCHAR(100),
	precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE pais (
	id INT PRIMARY KEY AUTO_INCREMENT,
	sigla CHAR(3) NOT NULL,
	nombre VARCHAR(40) NOT NULL
);

CREATE TABLE cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	id_pais INT NOT NULL
);

CREATE TABLE factura (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT NOT NULL,
	fecha DATETIME NOT NULL,
	estado CHAR(1) NOT NULL
);

CREATE TABLE factura_detalle (
	id_factura INT NOT NULL,
	id_producto INT NOT NULL,
	impuesto DECIMAL(10,2) NOT NULL,
	descuento DECIMAL(10,2),
	precio DECIMAL(10,2) NOT NULL,
	estado CHAR(1) NOT NULL
);

CREATE TABLE inventario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT NOT NULL,
	tipo_movimiento CHAR(1) NOT NULL,
	fecha DATE NOT NULL,
	cantidad SMALLINT NOT NULL
);

/*------------------- LLAVES FORANEAS ---------------- */

-- CLIENTE
ALTER TABLE cliente ADD CONSTRAINT FOREIGN KEY fk_Cliente_Pais (id_pais) REFERENCES pais (id);

-- FACTURA
ALTER TABLE factura ADD CONSTRAINT FOREIGN KEY fk_Factura_Cliente (id_cliente) REFERENCES cliente (id);

-- FACTURA_DETALLE
ALTER TABLE factura_detalle ADD CONSTRAINT FOREIGN KEY fk_FacturaDetalle_Factura (id_factura) REFERENCES factura (id);
ALTER TABLE factura_detalle ADD CONSTRAINT FOREIGN KEY fk_FacturaDetalle_Producto (id_producto) REFERENCES producto (id);

-- INVENTARIO
ALTER TABLE inventario ADD CONSTRAINT FOREIGN KEY fk_Inventario_Producto (id_producto) REFERENCES producto (id);






