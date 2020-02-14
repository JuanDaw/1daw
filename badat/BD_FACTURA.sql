
DROP TABLE if exists detalle;
DROP TABLE if exists factura;
DROP TABLE if exists cliente;
DROP TABLE if exists producto;


--********** TABLA PRODUCTOS ***********
CREATE TABLE producto(
	cod_producto 	int NOT NULL,
	nproducto		character varying(50) NOT NULL,
	descproducto	character varying(150) NOT NULL,
	precio		numeric,
CONSTRAINT PK_producto PRIMARY KEY (cod_producto));


--********** TABLA CLIENTES ***********
CREATE TABLE cliente (
	cod_cliente	int NOT NULL,
	dni_cliente	character varying(50) NOT NULL UNIQUE,
	nombre  		character varying(50) NOT NULL,
	ciudad  		character varying(50) NULL,
	telefono		character varying(15) NULL,
	fecha_nac		date NOT NULL,
CONSTRAINT PK_cliente PRIMARY KEY (cod_cliente));


--********** TABLA FACTURA ***********
CREATE TABLE factura(
	nfactura		int NOT NULL,
	cod_cliente	int,
	fecha			date NOT NULL,
CONSTRAINT PK_factura PRIMARY KEY (nfactura));


--********** TABLA DETALLE ***********
CREATE TABLE detalle(
	nfactura		int NOT NULL,
	cod_producto	int NOT NULL,
	cantidad		int NOT NULL,
	descuento		int,
CONSTRAINT PK_detalle PRIMARY KEY (nfactura, cod_producto));

insert into producto values(1,'Leche entera','Leche entera Ecológica', 1.15 );
insert into producto values(2,'Leche desnatada','Leche desnatada Ecológica', 1.05 );
insert into producto values(3,'Galletas','Galletas BIO', 2.50 );
insert into producto values(4,'Patatas Fritas','Patatas Fritas en aceite de oliva', 1.75 );
insert into producto values(5,'Café soluble','25 cápsulas', 5.35 );
insert into producto values(6,'Cerveza 0.0','Litro', 1.15 );
insert into producto values(7,'Cerveza','Litro', 1.45);
insert into producto values(8,'Huevos frescos M','Docena', 1.65 );
insert into producto values(9,'Huevos frescos XL','Docena', 1.95 );
insert into producto values(10,'Refresco Naranja','2L', 1.20 );
insert into producto values(11,'Refresco Limón','2L', 1.15 );
insert into producto values(12,'Pasta dientes','Sabor menta', 1.10 );
insert into producto values(13,'Detergente Ropa','Color 60 lavados', 3.80 );
insert into producto values(14,'Detergente Ropa','Blanca 45 lavados', 4.20 );
insert into producto values(15,'Lavavajillas','750ml', 2.35 );
insert into producto values(16,'Ambientador','Lavanda', 3.50 );


-- ----


insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (1, '52341784S', 'Dolores Fuertes de Barriga', 'Cádiz', '8565484258', '1998-05-23');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (2, '25431871T', 'Elena Nito del Bosque', 'Sevilla', '744124755', '2001-07-25');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (3, '11992482R', 'Armando Bronca Segura', 'Sevilla', '722446548', '1995-11-23');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (4, '12872683T', 'María Luisa Brazo Izquierdo', 'Jerez', '854954787', '1987-01-17');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (5, '23655680H', 'Igor Dito Delgado', 'Cádiz', '856475444', '2003-07-03');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (6, '34439888L', 'Silvia Silba Fuerte', 'Jerez', NULL, '2005-08-12');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (7, '45215586J', 'Mónica Galindo', 'Sevilla', '609665874', '1993-09-15');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (8, '56004582K', 'Alan Brito Dorado', 'Sanlúcar', '607322215', '2000-05-23');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (9, '67121287Z', 'Elba Lazo Duro', 'Sanlúcar', '954544469', '1995-08-07');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (10, '58343589S', 'Esteban Quito', 'Cádiz', NULL, '1993-09-3');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (11, '49566880T', 'Rosa Melo Suerte', 'El Puerto', '956124755', '2003-04-1');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (12, '38789889A', 'Milagros de Dios Caido', 'El Puerto', '602124755', '1999-2-8');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (13, '17901987B', 'Jesica Galindo', 'Cádiz', '609556894', '2000-01-23');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (14, '48021685B', 'Edgar Gajo', 'Sevilla', NULL, '1996-06-12');
insert into cliente(cod_cliente,dni_cliente,nombre,ciudad,telefono, fecha_nac) values (15, '45248482R', 'Elsa Pato Blanco', 'Sanlúcar', NULL, '1997-03-18');



insert into factura values(1, 1, '2017-01-15');
insert into factura values(2, 2, '2017-07-25');
insert into factura values(3, 2, '2017-08-5');
insert into factura values(4, 2, '2017-09-3');
insert into factura values(5, 2, '2017-02-16');
insert into factura values(6, 3, '2017-03-13');
insert into factura values(7, 3, '2017-04-23');
insert into factura values(8, 4, '2017-05-14');
insert into factura values(9, 5, '2017-06-10');
insert into factura values(10, 6, '2017-04-1');
insert into factura values(11, 7, '2017-04-16');
insert into factura values(12, 7, '2017-05-28');
insert into factura values(13, 8, '2017-06-26');
insert into factura values(14, 9, '2017-07-26');
insert into factura values(15, 9, '2017-09-23');
insert into factura values(16, 10, '2017-01-13');
insert into factura values(17, 12, '2018-01-12');
insert into factura values(18, 13, '2018-02-18');
insert into factura values(19, 13, '2018-03-10');
insert into factura values(20, 12, '2017-01-13');
insert into factura values(21, 3, '2018-03-23');
insert into factura values(22, 2, '2018-01-15');
insert into factura values(23, 8, '2018-02-12');



insert into detalle values(1, 1, 5, 10);
insert into detalle values(1, 3, 2, 0);
insert into detalle values(1, 5, 1, 5);
insert into detalle values(1, 6, 3, 4);
insert into detalle values(1, 8, 1, 0);
insert into detalle values(2, 5, 1, 0);
insert into detalle values(2, 10, 2, 0);
insert into detalle values(2, 12, 3, 0);
insert into detalle values(3, 13, 4, 0);
insert into detalle values(3, 15, 6, 0);
insert into detalle values(3, 5, 5, 2);
insert into detalle values(4, 10, 8, 0);
insert into detalle values(5, 1, 2, 0);
insert into detalle values(6, 3, 1, 0);
insert into detalle values(7, 15, 7, 0);
insert into detalle values(8, 5, 3, 0);
insert into detalle values(7, 6, 7, 10);
insert into detalle values(8, 7, 5, 0);
insert into detalle values(9, 9, 4, 0);
insert into detalle values(9, 1, 3, 0);
insert into detalle values(9, 3, 2, 0);
insert into detalle values(10, 10, 1, 0);
insert into detalle values(10, 12, 2, 5);
insert into detalle values(10, 9, 3, 0);
insert into detalle values(11, 8, 9, 0);
insert into detalle values(11, 7, 10, 0);
insert into detalle values(12, 6, 2, 0);
insert into detalle values(13, 5, 5, 0);
insert into detalle values(13, 4, 3, 8);
insert into detalle values(14, 3, 7, 0);
insert into detalle values(15, 2, 3, 0);
insert into detalle values(15, 1, 7, 10);
insert into detalle values(15, 9, 7, 0);
insert into detalle values(16, 8, 4, 15);
insert into detalle values(16, 10, 5, 0);
insert into detalle values(16, 1, 1, 0);
insert into detalle values(17, 2, 2, 20);
insert into detalle values(17, 3, 3, 25);
insert into detalle values(17, 5, 3, 0);
insert into detalle values(18, 6, 3, 0);
insert into detalle values(18, 10, 5, 10);
insert into detalle values(18, 11, 5, 0);
insert into detalle values(18, 12, 2, 0);
insert into detalle values(19, 1, 1, 0);
insert into detalle values(19, 2, 2, 5);
insert into detalle values(19, 3, 3, 0);
insert into detalle values(20, 5, 4, 0);
insert into detalle values(20, 6, 5, 0);
insert into detalle values(21, 7, 6, 0);
insert into detalle values(22, 8, 2, 0);
insert into detalle values(23, 1, 1, 15);



ALTER TABLE factura
ADD CONSTRAINT FK_factura_cliente FOREIGN KEY(cod_cliente)
REFERENCES CLIENTE (cod_cliente)
on delete restrict on update restrict;


ALTER TABLE detalle
ADD CONSTRAINT FK_detalle_factura FOREIGN KEY(nfactura)
REFERENCES factura (nfactura)
on delete restrict on update restrict;

ALTER TABLE detalle
ADD CONSTRAINT FK_detalle_producto FOREIGN KEY(cod_producto)
REFERENCES producto (cod_producto)
on delete restrict on update restrict;











