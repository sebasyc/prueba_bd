-- CREACION DE BASE DE DATOS
CREATE DATABASE prueba;

-- CREACION DE BASE DE TABLAS
CREATE TABLE cliente (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
rut VARCHAR(20) NOT NULL,
direccion VARCHAR(50) NOT NULL);

CREATE TABLE factura (
num_factura SERIAL PRIMARY KEY NOT NULL,
id_cliente INTEGER NOT NULL,
fecha DATE NOT NULL,
subtotal INTEGER NOT NULL,
iva INTEGER NOT NULL,
total INTEGER NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES cliente(id));

CREATE TABLE categoria (
id SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(20) NOT NULL,
descripcion VARCHAR(50) NOT NULL);

CREATE TABLE producto(
id SERIAL PRIMARY KEY NOT NULL,
id_categoria INTEGER NOT NULL,
nombre VARCHAR(20) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
precio INTEGER NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES categoria(id));

CREATE TABLE detalle (
id SERIAL PRIMARY KEY NOT NULL,
id_factura INTEGER NOT NULL,
id_producto INTEGER NOT NULL,
cantidad INTEGER NOT NULL,
valor_total INTEGER NOT NULL,
FOREIGN KEY (id_factura) REFERENCES factura(num_factura),
FOREIGN KEY (id_producto) REFERENCES producto(id));

-- INSERCIONES
INSERT INTO cliente (nombre, rut, direccion) 
VALUES ('Sebastian', '23520610-2', 'Melipilla');
INSERT INTO cliente (nombre, rut, direccion) 
VALUES ('Franco', '19893054-7', 'Buin');
INSERT INTO cliente (nombre, rut, direccion) 
VALUES ('Raymundo', '17918856-2', 'San Bernardo');
INSERT INTO cliente (nombre, rut, direccion) 
VALUES ('Carolina', '24665777-7', 'Talagante');
INSERT INTO cliente (nombre, rut, direccion) 
VALUES ('Pablo', '23330495-6', 'Santiago');

INSERT INTO categoria (nombre, descripcion) 
VALUES ('Cocina', 'Elementos de cocina');
INSERT INTO categoria (nombre, descripcion) 
VALUES ('Refrigeracion', 'Productos de refrigeracion');
INSERT INTO categoria (nombre, descripcion) 
VALUES ('Lavado', 'Productos de lavado');

INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (1, 'Campana', 'Disfruta de tu cocina sin olores', 60);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (1, 'Horno Design', 'El horno Design combina calidad y bajo precio', 199);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (1, 'Horno Microondas', '25 litros de capacidad', 132);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (2, 'Refrigerador Chef', 'La mejor calidad en refrigeracion', 679);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (2, 'Congelador 2.0', 'Tecnologia No Frost', 900);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (3, 'Lavaplatos Acqua', 'El tamaño ideal para una gran cantidad de loza', 109);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (3, 'Griferia Smart 2.0', 'Elaborada para cualquier cocina', 40);
INSERT INTO producto (id_categoria, nombre, descripcion, precio) 
VALUES (3, 'Lavavajillas Semi IT', 'presenta un diseño simple y elegante', 399);

INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (1, now(), 100, 19, 119);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (1, now(), 920, 19, 1094);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (2, now(), 348, 19, 414);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (2, now(), 531, 19, 631);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (2, now(), 848, 19, 1009);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (3, now(), 80, 19, 95);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (4, now(), 331, 19, 393);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (4, now(), 1000, 19, 1190);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (4, now(), 1227, 19, 1460);
INSERT INTO factura (id_cliente, fecha, subtotal, iva, total) 
VALUES (4, now(), 80, 19, 95);

INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (1, 1, 1, 60);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (1, 7, 1, 40);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (2, 4, 1, 679);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (2, 3, 1, 132);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (2, 6, 1, 109);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (3, 7, 1, 40);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (3, 6, 1, 109);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (3, 2, 1, 199);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (4, 8, 1, 399);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (4, 3, 1, 132);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (5, 6, 1, 109);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (5, 1, 1, 60);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (5, 4, 1, 679);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (6, 7, 2, 80);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (7, 2, 1, 199);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (7, 3, 1, 132);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (8, 7, 1, 40);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (8, 5, 1, 900);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (8, 1, 1, 60);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (9, 4, 1, 679);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (9, 7, 1, 40);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (9, 6, 1, 109);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (9, 8, 1, 399);
INSERT INTO detalle (id_factura, id_producto, cantidad, valor_total) 
VALUES (10, 7, 2, 80);

-- CONSULTA 1: ¿Que cliente realizó la compra más cara?

-- CONSULTA 2: ¿Que cliente pagó sobre 100 de monto?

-- CONSULTA 3: ¿Cuantos clientes han comprado el producto 6
SELECT count(*) cantidad FROM factura AS a INNER JOIN cliente AS b ON a.id_cliente = b.id INNER JOIN detalle AS c ON a.num_factura = c.id_factura WHERE c.id_producto = 6;