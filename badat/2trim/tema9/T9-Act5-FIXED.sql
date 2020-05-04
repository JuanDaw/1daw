CREATE TABLE socio
(
    socio_id smallint PRIMARY KEY,
    dni VARCHAR(9) NOT NULL UNIQUE,
    soc_nom VARCHAR(25) NOT NULL,
    soc_ap1 VARCHAR(25) NOT NULL,
    soc_ap2 VARCHAR(25),
    f_nac DATE NOT NULL CONSTRAINT chk_SocEdad CHECK (age(f_nac) >= '18year'),
    f_alta TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tipo_Telefono
(
    tipo_id smallint PRIMARY KEY,
    tipo_nom VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE telefono
(
    tel_id smallint PRIMARY KEY,
    tel_num VARCHAR(15) NOT NULL,
    socio_id smallint NOT NULL,
    tipo_id smallint NOT NULL,
    CONSTRAINT  FK_TelSoc FOREIGN KEY (socio_id) REFERENCES socio(socio_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT  FK_TelTipo FOREIGN KEY (tipo_id) REFERENCES Tipo_Telefono
    ON DELETE CASCADE
    ON UPDATE CASCADE
);