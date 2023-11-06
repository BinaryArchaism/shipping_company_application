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
    Picture VARCHAR[],
    Dockyard INT NOT NULL,
    CONSTRAINT fk_type
      FOREIGN KEY(Type)
	  REFERENCES baltika.ships_type(ID),
	CONSTRAINT fk_dockyard
      FOREIGN KEY(Dockyard)
      REFERENCES baltika.ports(ID)
);

CREATE TABLE IF NOT EXISTS baltika.sender(
    ID SERIAL PRIMARY KEY,
    Sender VARCHAR(30) NOT NULL,
    INNsender INT NOT NULL,
    BankSender VARCHAR(60) NOT NULL,
    AddressSender VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS baltika.consignee(
    ID SERIAL PRIMARY KEY,
    Consignee VARCHAR(30) NOT NULL,
    INNconsignee VARCHAR(10) NOT NULL,
    BankConsignee VARCHAR(60) NOT NULL,
    AddressConsignee VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS baltika.cargo(
    ID SERIAL PRIMARY KEY,
    CustomValue INT NOT NULL,
    DepartureDate DATE NOT NULL,
    ArriveDate DATE NOT NULL,
    Origin INT NOT NULL,
    Destination INT NOT NULL,
    CustomClearance BOOL NOT NULL,
    Number INT NOT NULL,
    Shipment VARCHAR(30) NOT NULL,
    DeclareValue INT NOT NULL,
    Unit VARCHAR(10) NOT NULL,
    InsureValue INT NOT NULL,
    Sender INT NOT NULL,
    Consignee INT NOT NULL,
    Comment TEXT,
    CONSTRAINT fk_origin
      FOREIGN KEY(Origin)
	  REFERENCES baltika.ports(ID),
	CONSTRAINT fk_destination
      FOREIGN KEY(Destination)
      REFERENCES baltika.ports(ID),
    CONSTRAINT fk_sender
      FOREIGN KEY(Sender)
      REFERENCES baltika.sender(ID),
    CONSTRAINT fk_consignee
      FOREIGN KEY(Consignee)
      REFERENCES baltika.consignee(ID)
);
