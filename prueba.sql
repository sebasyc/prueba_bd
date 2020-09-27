CREATE DATABASE prueba;

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