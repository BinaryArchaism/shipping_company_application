-- Функция добавления порта
CREATE OR REPLACE FUNCTION baltika.add_port(port_data json)
    RETURNS INTEGER AS
$$
DECLARE
    port_id INT;
BEGIN
    INSERT INTO baltika.ports (name, address, lat, long)
        (SELECT *
         FROM json_to_record(
                      port_data
                  ) AS res(
                           name varchar(200),
                           address varchar(500),
                           lat NUMERIC(9, 6),
                           long NUMERIC(9, 6)
             ))
    RETURNING ID INTO port_id;

    RETURN port_id;
END;
$$ LANGUAGE plpgsql;

-- Функция добавления корабля
CREATE OR REPLACE FUNCTION baltika.add_ship(ship_data json)
    RETURNS INTEGER AS
$$
DECLARE
    ship_id INT;
BEGIN
    INSERT INTO baltika.ships (RegNumber, Name, Skipper, Type, Capacity, Year, Picture, Dockyard)
        (SELECT *
         FROM json_to_record(
                      ship_data
                  ) AS res(
                           reg_number INT,
                           name VARCHAR(60),
                           skipper VARCHAR(60),
                           type INT,
                           capacity INT,
                           year INT,
                           picture VARCHAR[],
                           dockyard INT
             ))
    RETURNING ID INTO ship_id;

    RETURN ship_id;
END;
$$ LANGUAGE plpgsql;

-- Функция создания отправителя
CREATE OR REPLACE FUNCTION baltika.add_sender(sender_data json)
    RETURNS INTEGER AS
$$
DECLARE
    sender_id INT;
BEGIN
    INSERT INTO baltika.sender (sender, innsender, banksender, addresssender)
        (SELECT *
         FROM json_to_record(
                      sender_data
                  ) AS res(
                           sender VARCHAR(30),
                           inn_sender BIGINT,
                           bank_sender VARCHAR(60),
                           address_sender VARCHAR(80)
             ))
    RETURNING ID INTO sender_id;

    RETURN sender_id;
END;
$$ LANGUAGE plpgsql;

-- Функция создания получателя
CREATE OR REPLACE FUNCTION baltika.add_consignee(consignee_data json)
    RETURNS INTEGER AS
$$
DECLARE
    consignee_id INT;
BEGIN
    INSERT INTO baltika.consignee (consignee, innconsignee, bankconsignee, addressconsignee)
        (SELECT *
         FROM json_to_record(
                      consignee_data
                  ) AS res(
                           consignee VARCHAR(30),
                           inn_consignee BIGINT,
                           bank_consignee VARCHAR(60),
                           address_consignee VARCHAR(80)
             ))
    RETURNING ID INTO consignee_id;

    RETURN consignee_id;
END;
$$ LANGUAGE plpgsql;

-- Функция создания груза
CREATE OR REPLACE FUNCTION baltika.add_cargo(cargo_data json)
    RETURNS INTEGER AS
$$
DECLARE
    CargoID         INT;
    CustomValue     INT;
    DepartureDate   DATE;
    ArriveDate      DATE;
    Origin          INT;
    Destination     INT;
    CustomClearance BOOL;
    Number          INT;
    Shipment        VARCHAR(30);
    DeclareValue    INT;
    Unit            VARCHAR(10);
    InsureValue     INT;
    Sender          INT;
    Consignee       INT;
    Comment         TEXT;
BEGIN
    SELECT *
    INTO CustomValue, DepartureDate, ArriveDate, Origin, Destination, CustomClearance, Number, Shipment,
        DeclareValue, Unit, InsureValue, Sender, Consignee, Comment
    FROM json_to_record(
                 cargo_data
             ) AS res(custom_value INT,
                      departure_date DATE,
                      arrive_date DATE,
                      origin INT,
                      destination INT,
                      custom_clearance BOOL,
                      number INT,
                      shipment VARCHAR(30),
                      declare_value INT,
                      unit VARCHAR(10),
                      insure_value INT,
                      sender INT,
                      consignee INT,
                      comment TEXT);

    IF DepartureDate > ArriveDate THEN
        RAISE 'ArriveDate cant be less than DepartureDate';
    END IF;

    IF Origin = Destination THEN
        RAISE 'Can not deliver to the same port as origin';
    END IF;

    INSERT INTO baltika.cargo (customvalue, departuredate, arrivedate, origin, destination, customclearance, number,
                               shipment, declarevalue, unit, insurevalue, sender, consignee, comment)
    VALUES (CustomValue, DepartureDate, ArriveDate, Origin, Destination, CustomClearance, Number, Shipment,
            DeclareValue, Unit, InsureValue, Sender, Consignee, Comment)
    RETURNING ID INTO CargoID;

    RETURN CargoID;
END;
$$ LANGUAGE plpgsql;
