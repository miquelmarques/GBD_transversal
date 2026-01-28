ALTER TABLE 
DROP TABLE IF exists alumne;
DROP TABLE IF exists cv;
DROP TABLE IF exists empresa;
DROP TABLE IF exists avaluacio;
DROP TABLE IF exists criteri;
DROP TABLE IF exists segueix;
DROP TABLE IF exists enviament;
DROP TABLE IF exists assignacio;

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
    actiu boolean DEFAULT true,
    ISO boolean DEFAULT false,
    PAX boolean DEFAULT false,
    RA2_IPO boolean NOT NULL,
    tecnologies VARCHAR(150),
    CONSTRAINT alumne_email_check CHECK (email LIKE ('%@%.%'))
);

CREATE TABLE cv (
    codicv INT PRIMARY KEY,
    DNI_alumne CHAR(9) NOT NULL REFERENCES alumne(dni) ON DELETE CASCADE,
    data_creacio date NOT NULL,
    data_actualitzacio date NOT NULL,
    enllaç VARCHAR NOT NULL,
    estat VARCHAR(50),
    resum VARCHAR(500),
);

CREATE TABLE empresa (
    CIFNIF VARCHAR (9) PRIMARY KEY,
    nom VARCHAR (100) UNIQUE NOT NULL,
    email VARCHAR (100)  UNIQUE NOT NULL,
    telf numeric(10),
    dual_general boolean,
    dual_intensiva boolean,
    ubicacio VARCHAR (50) NOT NULL,
    sector VARCHAR (50)
);

CREATE TABLE avaluacio(
    codi_avaluacio INT PRIMARY KEY,
    nota_global NUMERIC(2,1),
    observacions VARCHAR (100)
):
CREATE TABLE criteri(
    ID serial PRIMARY KEY,
    descrip varchar(150)
);

CREATE TABLE Segueix (
    ID_criteri serial NOT NULL,
    codi_avaluacio
);

CREATE TABLE enviament(
    
)