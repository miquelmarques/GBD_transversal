ALTER TABLE segueix DROP CONSTRAINT segueix_ID_criteri_fk;
ALTER TABLE segueix DROP CONSTRAINT segueix_codi_avaluacio_fk;
ALTER TABLE assignacio DROP CONSTRAINT assignacio_DNI_alumne_fk;
ALTER TABLE assignacio DROP CONSTRAINT assignacio_CIFNIF_empresa_fk;
ALTER TABLE avaluacio DROP CONSTRAINT avaluacio_DNI_alumne_fk;
DROP TABLE IF exists alumne;
DROP TABLE IF exists cv;
DROP TABLE IF exists empresa;
DROP TABLE IF exists avaluacio;
DROP TABLE IF exists criteri;
DROP TABLE IF exists segueix;
DROP TABLE IF exists enviament;
DROP TABLE IF exists assignacio;
DROP DATABASE IF exists practiques_tic;
CREATE DATABASE practiques_tic;
\c practiques_tic
CREATE TABLE alumne (
    DNI CHAR(9) PRIMARY KEY,
    nom_cognoms VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefon VARCHAR(15) NOT NULL,
    IDALU numeric(25) UNIQUE NOT NULL,
    NASS numeric (15) NOT NULL,
    municipi VARCHAR(50) NOT NULL,
    CP CHAR(5) NOT NULL,
    promocio VARCHAR(40) NOT NULL,
    cicle_matricula VARCHAR(100) NOT NULL,
    actiu boolean DEFAULT true, --Establint que per defecte el alumne es troba actiu en el centre
    ISO boolean,
    PAX boolean,
    RA2_IPO boolean NOT NULL,
    tecnologies VARCHAR(150),
    CONSTRAINT alumne_email_check CHECK (email LIKE ('%@%.%')) -- Comprovació de que el email esta ben configurat.
);

CREATE TABLE cv (
    codicv INT PRIMARY KEY,
    DNI_alumne CHAR(9) NOT NULL REFERENCES alumne(dni) ON DELETE CASCADE, -- Establim una constraint que permeti 
    data_creacio date NOT NULL,
    data_actualitzacio date NOT NULL,
    enllaç VARCHAR NOT NULL,
    estat VARCHAR(50),
    resum VARCHAR(500)
);

CREATE TABLE empresa (
    CIFNIF CHAR(9) PRIMARY KEY,
    nom VARCHAR (100) UNIQUE NOT NULL,
    email VARCHAR(100)  UNIQUE NOT NULL,
    telf VARCHAR(15) NOT NULL,
    dual_general boolean,
    dual_intensiva boolean,
    ubicacio VARCHAR (50) NOT NULL,
    sector VARCHAR (50)
    CONSTRAINT empresa_email_check CHECK (email LIKE ('%@%.%')) -- Comprovació de que el email esta ben configurat.
);

CREATE TABLE avaluacio(
    codi_avaluacio INT PRIMARY KEY,
    DNI_alumne CHAR(9) REFERENCES alumne(DNI) ON DELETE RESTRICT,
    nota_global NUMERIC(2,1),
    observacions VARCHAR (100)
);
CREATE TABLE criteri(
    ID INT PRIMARY KEY,
    descrip varchar(150) NOT NULL
);

CREATE TABLE segueix (
    ID_criteri INT REFERENCES criteri(ID) ON DELETE RESTRICT,
    codi_avaluacio INT REFERENCES avaluacio(codi_avaluacio) ON DELETE CASCADE,
    nota numeric(2,1) NOT NULL,
    PRIMARY KEY (ID_criteri, codi_avaluacio) --Afegeix les dues claus primaries.
);

CREATE TABLE enviament(
    codicv  INT REFERENCES cv(codicv) ON DELETE CASCADE,--Comprovar restringuir que si s'elimina el alumne es pugui borrar.
    CIFNIF_empresa CHAR(9) REFERENCES empresa(CIFNIF) ON UPDATE RESTRICT, -- Restringir updates perque hem de guardar tot el historicu del alumne
    data_contacte date,
    data_resposta date,
    data_entrevista date,
    estat VARCHAR(50) NOT NULL,
    note VARCHAR(500),
    PRIMARY KEY (codicv, CIFNIF_empresa, data_contacte)
);

CREATE TABLE assignacio (
    DNI_alumne CHAR(9) REFERENCES alumne(DNI) ON UPDATE RESTRICT, --No permet ni cambiar el DNI del alumne ja que no podem cnviar el alumne
    CIFNIF_empresa CHAR(9) REFERENCES empresa(CIFNIF) ON DELETE RESTRICT, --Permetem que no puguem perdre l'empresa ja que necessitem el historic dels alumnes
    data_inici date NOT NULL,
    data_fi date,
    horari VARCHAR(150) NOT NULL,
    tutor VARCHAR(100) NOT NULL,
    estat VARCHAR(50),
    tipus VARCHAR(100) NOT NULL,
    especialitzacio VARCHAR(100),
    PRIMARY KEY (DNI_alumne, CIFNIF_empresa)
);