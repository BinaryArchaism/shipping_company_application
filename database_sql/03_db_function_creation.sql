CREATE OR REPLACE FUNCTION baltika.add_ship(ship_data json)
    RETURNS INTEGER AS
$$
DECLARE
    ship_id         INT;
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