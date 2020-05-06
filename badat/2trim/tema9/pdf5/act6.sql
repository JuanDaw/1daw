INSERT INTO "ClienteVIP"
VALUES (45,
        'Alonso',
        'Fernández',
        'Vidal',
            (SELECT min(credito)
             FROM cliente));