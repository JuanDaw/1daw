CREATE OR REPLACE VIEW "ClienteVIP" AS
SELECT *
FROM cliente
WHERE credito >= 2000
ORDER BY apellido1,
         apellido2,
         nombre;