/* Apartado 1 */

INSERT INTO tipo
    (cod_tipo, nom_tipo)
VALUES
    (1, 'fijo');

INSERT INTO tipo
    (cod_tipo, nom_tipo)
VALUES
    (2, 'móvil');

INSERT INTO tipo
    (cod_tipo, nom_tipo)
VALUES
    (3, 'fax');

/* Apartado 2 */

INSERT INTO socio
    (cod_socio, nombre, apellido1, apellido2, dni, fecha_nac)
VALUES
    (1, 'Alonso', 'Fernández', 'Vidal', '52339960X', to_date('06/03/1990', 'DD/MM/YYYY'));

INSERT INTO telefono
    (cod_telf, num_telf, cod_tipo)
VALUES
    (1, '956234567', 1);

INSERT INTO telefono
    (cod_telf, num_telf, cod_tipo)
VALUES
    (2, '661098997', 2);

INSERT INTO telf_socio
    (cod_socio, cod_telf)
VALUES
    (1, 1);

INSERT INTO telf_socio
    (cod_socio, cod_telf)
VALUES
    (1, 2);

/* Apartado 3 */

INSERT INTO socio
    (cod_socio, nombre, apellido1, dni, fecha_nac)
VALUES
    (2, 'Rafael', 'De la Rosa', '41587939Y', to_date('16/04/2010', 'DD/MM/YYYY'));