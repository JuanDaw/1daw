SELECT cod_cliente,
       nombre,
       apellido1,
       apellido2
FROM "ClienteVIP"
WHERE cod_cliente IN
        (SELECT cod_cliente
         FROM "ClienteNoVIP");