INSERT INTO "ClienteVIP"
VALUES (45,
        'Alonso',
        'Fernández',
        'Vidal',
            (SELECT max(credito)
             FROM cliente));