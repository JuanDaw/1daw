-- ----------------- BASE DATOS alias-depart

-- ----------------- TABLA DEPART: ---------------
DROP TABLE emple; 
DROP TABLE depart; 


CREATE TABLE depart (
 dept_no  NUMERIC(2) NOT NULL,
 dnombre  VARCHAR(14), 
 loc      VARCHAR(14),
 CONSTRAINT PK_depart PRIMARY KEY (dept_no));

INSERT INTO DEPART VALUES (10,'Contabilidad','Sevilla');
INSERT INTO DEPART VALUES (20,'Investigación','Madrid');
INSERT INTO DEPART VALUES (30,'Ventas','Barcelona');
INSERT INTO DEPART VALUES (40,'Producción','Bilbao');
INSERT INTO DEPART VALUES (50,'Marketing','Cádiz');
INSERT INTO DEPART VALUES (60,'I+D','Navarra');

-- ----------------- TABLA EMPLE: ---------------

CREATE TABLE emple (
 emp_no    NUMERIC(4) NOT NULL,
 nombre  VARCHAR(50)  ,
 oficio    VARCHAR(10)  ,
 dir       NUMERIC(4) ,
 fecha_alt DATE      ,
 salario   money,
 comision  money,
 dept_no  NUMERIC(2) NOT NULL,
 CONSTRAINT PK_emple PRIMARY KEY (emp_no));

INSERT INTO emple VALUES (7369,'Dolores Fuertes de Barriga','Empleado',7902,'17/12/1990', 1040,NULL,20);
INSERT INTO emple VALUES (7499,'Elena Nito del Bosque','Vendedor',7698,'20/02/1990', 1500,390,30);
INSERT INTO emple VALUES (7521,'Armando Bronca Segura','Vendedor',7698,'22/02/1991', 1625,650,30);
INSERT INTO emple VALUES (7566,'María Luisa Brazo Izquierdo','Director',7839,'02/04/1991', 2900,NULL,20);
INSERT INTO emple VALUES (7654,'Igor Dito Delgado','Vendedor',7698,'29/09/1991', 1600,1020,30);
INSERT INTO emple VALUES (7698,'Silvia Silba Fuerte','Director',7839,'01/05/1991', 3005,NULL,30);
INSERT INTO emple VALUES (7782,'Mónica Galindo','Director',7839,'09/06/1991', 2885,NULL,10);
INSERT INTO emple VALUES (7788,'Alan Brito Dorado','Analista',7566,'09/11/1991', 3000,NULL,20);
INSERT INTO emple VALUES (7839,'Elba Lazo Duro','Presidente',NULL,'17/11/1991', 4100,NULL,10);
INSERT INTO emple VALUES (7844,'Esteban Quito','Vendedor',7698,'08/09/1991', 1350,0,30);
INSERT INTO emple VALUES (7876,'Rosa Melo Suerte','Empleado',7788,'23/09/1991', 1430,NULL,20);
INSERT INTO emple VALUES (7900,'Milagros de Dios Caido','Empleado',7698,'03/12/1991', 1335,NULL,30);
INSERT INTO emple VALUES (7902,'Jesica Galindo','Analista',7566,'03/12/1991', 3000,NULL,20);
INSERT INTO emple VALUES (7934,'Edgar Gajo','Empleado',7782,'23/01/1992', 1690,NULL,10);
INSERT INTO emple VALUES (7950,'Rebeca Galindo','Vendedor',7566,'15/07/1978', 4250,750,20);
INSERT INTO emple VALUES (7955,'Elsa Pato Blanco','Director',7698,'15/03/1995', 2150,NULL,60);


ALTER TABLE emple
ADD CONSTRAINT FK_depto_no_emple_depart FOREIGN KEY (dept_no) REFERENCES depart(dept_no) on delete restrict on update restrict;

ALTER TABLE emple
ADD CONSTRAINT FK_dir_emple_emple FOREIGN KEY(dir) REFERENCES emple(emp_no) on delete restrict on update restrict;


