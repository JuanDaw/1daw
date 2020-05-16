ALTER TABLE "Socio"
ALTER COLUMN cod_socio TYPE BIGINT;


ALTER TABLE "Socio"
ALTER COLUMN cod_socio
SET DEFAULT nextval('sec_socio');