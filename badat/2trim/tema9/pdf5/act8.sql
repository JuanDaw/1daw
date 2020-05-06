CREATE OR REPLACE VIEW "ClienteNoVIP" AS
SELECT *
FROM cliente
WHERE cod_cliente NOT IN
        (SELECT DISTINCT cod_cliente
         FROM factura)
ORDER BY apellido1,
         apellido2,
         nombre WITH CHECK OPTION;