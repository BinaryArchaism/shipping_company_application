CREATE DATABASE baltika;

CREATE SCHEMA IF NOT EXISTS baltika;

CREATE TABLE IF NOT EXISTS baltika.ports(
    ID SERIAL PRIMARY KEY,
    Name varchar(200) NOT NULL,
    Address varchar(500) NOT NULL,
    Lat NUMERIC(6, 6) NOT NULL,
    Long NUMERIC(6, 6) NOT NULL
);

CREATE TABLE IF NOT EXISTS baltika.ships_type(
    ID SERIAL PRIMARY KEY,
    Type VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS baltika.ships(
    ID SERIAL PRIMARY KEY,
    RegNumber INT NOT NULL UNIQUE,
    Name VARCHAR(60) NOT NULL,
    Skipper VARCHAR(60) NOT NULL,
    Type INT NOT NULL,
    Capacity INT NOT NULL,
    Year INT NOT NULL,
--     Picture ,
    Dockyard INT NOT NULL,
    CONSTRAINT fk_type
      FOREIGN KEY(Type)
	  REFERENCES baltika.ships_type(ID),
	CONSTRAINT fk_dockyard
      FOREIGN KEY(Dockyard)
      REFERENCES baltika.ports(ID)
);

CREATE TABLE IF NOT EXISTS baltika.cargo();