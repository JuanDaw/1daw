INSERT INTO "ClienteVIP"
VALUES (40,
        'Alonso',
        'Fernández',
        'Vidal',
            (SELECT min(credito)
             FROM cliente));