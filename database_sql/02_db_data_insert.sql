INSERT INTO baltika.ports (Name, Address, Lat, Long)
VALUES ('Seafarer Bay Port', '123 Nautical Blvd, Ocean City, Atlantis', 45.678901, -56.789012),
       ('Skyhaven Harbor', '456 Cloud Pier, Aether City, Skyland', 34.567890, -78.901234),
       ('Lunar Gateway Port', '789 Moonlight Lane, Celestia, Cosmos', 12.345678, -90.123456),
       ('Dragon''s Roost Harbor', '321 Dragon Dock St, Mythos City, Eldoria', -23.456789, 45.678901),
       ('Mystic Cove Port', '654 Enchanted Quay, Eldritch City, Fantasia', -67.890123, 23.456789),
       ('Starlight Marina', '987 Nebula Blvd, Starhaven, Galaxy', 56.789012, -34.567890),
       ('Aqua Vista Harbor', '210 Oceanview Ln, Aquaopolis, Oceanica', -89.012345, 67.890123),
       ('Phoenix Anchorage', '543 Ember St, Pyropolis, Volcania', 0.123456, -12.345678),
       ('Wanderlust Wharf', '876 Nomad Rd, Roamington, Wanderland', -45.678901, 78.901234),
       ('Eternal Echo Port', '109 Echo Dr, Serenity Bay, Tranquilis', 78.901234, -0.123456);


INSERT INTO baltika.ships_type (type)
VALUES ('tanker'),
       ('bulk-carrier');

INSERT INTO baltika.ships (RegNumber, Name, Skipper, Type, Capacity, Year, Picture, Dockyard)
VALUES (12345, 'Sea Voyager', 'Captain Johnson', 2, 200, 2015, ARRAY ['ship1.jpg'], 1),
       (56789, 'Ocean Explorer', 'Captain Smith', 1, 500, 2010, ARRAY ['ship2.jpg'], 2),
       (98765, 'Fisherman''s Pride', 'Captain Anderson', 1, 50, 2020, ARRAY ['ship3.jpg'], 3),
       (23456, 'Serenity Yacht', 'Captain Davis', 2, 10, 2018, ARRAY ['ship4.jpg'], 4),
       (87654, 'Black Gold', 'Captain Roberts', 1, 800, 2012, ARRAY ['ship5.jpg'], 5),
       (34567, 'Container Express', 'Captain Miller', 2, 300, 2014, ARRAY ['ship6.jpg'], 6),
       (65432, 'Luxury Liner', 'Captain Wilson', 1, 1000, 2019, ARRAY ['ship7.jpg'], 7),
       (78601, 'Sailor''s Dream', 'Captain Taylor', 2, 8, 2021, ARRAY ['ship8.jpg'], 8),
       (21198, 'Tug Master', 'Captain Brown', 1, 30, 2017, ARRAY ['ship9.jpg'], 9),
       (12309, 'Ocean Researcher', 'Captain Evans', 2, 50, 2016, ARRAY ['ship10.jpg'], 10),
       (45678, 'Cargo Carrier', 'Captain Harris', 1, 600, 2013, ARRAY ['ship11.jpg'], 1),
       (56233, 'Island Hopper', 'Captain White', 2, 15, 2022, ARRAY ['ship12.jpg'], 2),
       (78901, 'Fisherman''s Bounty', 'Captain Green', 1, 40, 2011, ARRAY ['ship13.jpg'], 3),
       (55236, 'Windcatcher Yacht', 'Captain Turner', 2, 12, 2019, ARRAY ['ship14.jpg'], 4),
       (10987, 'Petroleum Titan', 'Captain Lee', 1, 1000, 2015, ARRAY ['ship15.jpg'], 5),
       (62353, 'Swift Cargo', 'Captain Murphy', 2, 400, 2018, ARRAY ['ship16.jpg'], 6),
       (16845, 'Grand Voyage Liner', 'Captain Hall', 1, 1200, 2020, ARRAY ['ship17.jpg'], 7),
       (84567, 'Sailor''s Delight', 'Captain King', 2, 6, 2014, ARRAY ['ship18.jpg'], 8),
       (17345, 'Mighty Tug', 'Captain Allen', 1, 25, 2016, ARRAY ['ship19.jpg'], 9),
       (56389, 'Ocean Explorer II', 'Captain Turner', 2, 80, 2017, ARRAY ['ship20.jpg'], 10),
       (53456, 'Eco Cargo Ship', 'Captain Green', 1, 500, 2011, ARRAY ['ship21.jpg'], 1),
       (28246, 'Luxe Cruiser', 'Captain White', 2, 18, 2013, ARRAY ['ship22.jpg'], 2),
       (72345, 'Deep Sea Fisher', 'Captain Brown', 1, 35, 2019, ARRAY ['ship23.jpg'], 3),
       (73463, 'Harbor Master', 'Captain Murphy', 1, 20, 2014, ARRAY ['ship24.jpg'], 4),
       (24373, 'Marine Researcher', 'Captain Turner', 2, 30, 2012, ARRAY ['ship25.jpg'], 5),
       (72458, 'Whale Watcher', 'Captain Green', 2, 40, 2018, ARRAY ['ship26.jpg'], 6),
       (74523, 'Mega Cargo Carrier', 'Captain White', 1, 800, 2015, ARRAY ['ship27.jpg'], 7),
       (24574, 'Ocean Traveler', 'Captain Brown', 2, 900, 2016, ARRAY ['ship28.jpg'], 8),
       (45238, 'Island Hopper II', 'Captain Murphy', 2, 14, 2020, ARRAY ['ship29.jpg'], 9),
       (56189, 'Sailor''s Haven', 'Captain Turner', 1, 5, 2017, ARRAY ['ship30.jpg'], 10);

-- Mock data for baltika.sender
INSERT INTO baltika.sender (Sender, INNsender, BankSender, AddressSender)
VALUES ('ABC Trading Co.', 1234567890, 'Ocean Bank', '123 Main Street, City A, Country A'),
       ('XYZ Exporters', 9876543210, 'Harbor Finance', '456 Harbor Drive, City B, Country B'),
       ('Seafarer Supplies Ltd.', 5432167890, 'Marine Bank', '789 Dock Street, City C, Country C'),
       ('Nautical Ventures Inc.', 7890123456, 'Oceanic Trust', '210 Pier Road, City D, Country D'),
       ('Global Shipping Corp.', 3456789012, 'Sea Capital', '654 Quay Avenue, City E, Country E'),
       ('Maritime Merchants', 6789012345, 'Harbor Investments', '987 Marina Boulevard, City F, Country F'),
       ('AquaTrade Logistics', 2345678901, 'Aqua Bank', '321 Harborview Lane, City G, Country G'),
       ('Windward Exports', 8901234567, 'Venture Finance', '543 Anchor Street, City H, Country H'),
       ('Voyager Imports', 4567890123, 'Ocean Ventures', '876 Wharf Road, City I, Country I'),
       ('Blue Horizon Trading', 9012345678, 'Horizon Bank', '109 Pier Drive, City J, Country J'),
       ('Sunset Shipping Ltd.', 3456789011, 'Sunset Finance', '432 Sunset Boulevard, City K, Country K'),
       ('Golden Waves Inc.', 9876543211, 'Golden Bank', '567 Golden Avenue, City L, Country L'),
       ('Coral Shores Ltd.', 2345678902, 'Coral Bank', '678 Coral Lane, City M, Country M'),
       ('TradeWinds Trading Co.', 8765432109, 'Windfall Bank', '789 TradeWinds Street, City N, Country N'),
       ('WaveRider Exports', 1098765432, 'Wave Capital', '890 WaveRider Road, City O, Country O'),
       ('Sailors'' Supply Co.', 9876543210, 'Marine Trust', '123 Sailors'' Street, City P, Country P'),
       ('Anchor Logistics Ltd.', 5678901234, 'Anchor Bank', '234 Anchor Lane, City Q, Country Q'),
       ('DeepBlue Trading', 3456789012, 'DeepBlue Finance', '345 DeepBlue Avenue, City R, Country R'),
       ('Oceanic Ventures Inc.', 9012345678, 'Oceanic Bank', '456 Oceanic Drive, City S, Country S'),
       ('Marine Masters Ltd.', 1234567890, 'Marine Capital', '567 Marine Lane, City T, Country T');

-- Mock data for baltika.sender
INSERT INTO baltika.sender (Sender, INNsender, BankSender, AddressSender)
VALUES ('Oceanic Trade Hub', 1234567890, 'Ocean Bank', '123 Atlantis Avenue, Neptune City, Atlantis'),
       ('Skyport Exports', 9876543210, 'Aether Finance', '456 Cloud Pier, Skytopia, Aetherea'),
       ('Mystic Maritime Ltd.', 5432167890, 'Celestial Bank', '789 Moonlight Quay, Starlight City, Cosmos'),
       ('Dragon''s Haven Supplies', 7890123456, 'Mythical Trust', '210 Dragon Dock Street, Eldoria Port, Mythos'),
       ('Enchanted Voyages Inc.', 3456789012, 'Eldritch Capital', '654 Enchanted Lane, Fantasia Harbor, Eldritch'),
       ('Starlight Trading Co.', 6789012345, 'Galactic Investments', '987 Nebula Avenue, Starhaven, Galaxy'),
       ('Aquaopolis Logistics', 2345678901, 'Oceanic Bank', '321 Oceanview Lane, Aquaopolis, Oceanica'),
       ('Phoenix Commerce', 8901234567, 'Volcanic Ventures', '543 Ember Road, Pyropolis, Volcania'),
       ('Wanderlust Ventures', 4567890123, 'Nomad Finance', '876 Nomad Street, Roamington, Wanderland'),
       ('Eternal Echo Exports', 9012345678, 'Serenity Bank', '109 Echo Quay, Tranquilis Bay, Serenity'),
       ('Seafarer''s Bazaar', 3456789011, 'Nautical Finance', '432 Sailor''s Boulevard, Port Mariner, Maritania'),
       ('Skyward Imports Ltd.', 9876543211, 'Aether Trust', '567 Cloudview Lane, Skyland Heights, Aetherea'),
       ('Lunar Gateway Supplies', 2345678902, 'Celestial Capital', '678 Moonlight Drive, Celestia Harbor, Cosmos'),
       ('Mystical Horizons Trading', 8765432109, 'Enchanted Bank', '789 Enchanted Road, Eldritch Haven, Fantasia'),
       ('StellarWave Exports', 1098765432, 'Cosmic Capital', '890 Nebula Street, Galaxyport, Galaxy'),
       ('Sailor''s Dream Logistics', 9876543210, 'Marine Trust', '123 Sailor''s Street, Harbor Vista, Maritania'),
       ('Anchor Logistics Ltd.', 5678901234, 'Anchor Bank', '234 Anchor Lane, Seaside Anchorage, Maritania'),
       ('DeepBlue Trading Co.', 3456789012, 'DeepBlue Finance', '345 DeepBlue Avenue, Oceanus Bay, Oceanica'),
       ('Oceanic Ventures Inc.', 9012345678, 'Oceanic Bank', '456 Oceanic Drive, Horizon Harbor, Horizonia'),
       ('Marine Masters Ltd.', 1234567890, 'Marine Capital', '567 Marine Lane, Coastal Haven, Coastalands');

-- Mock data for baltika.consignee
INSERT INTO baltika.consignee (Consignee, INNconsignee, BankConsignee, AddressConsignee)
VALUES ('AetherTech Innovations', 9876543210, 'SkyBank', '456 Cloud Plaza, Skylantis, Aetheria'),
       ('MystiCore Trading', 1234567890, 'Enigma Finance', '789 Enchanted Street, Mystic Harbor, Fantasia'),
       ('Celestial Imports Ltd.', 5432167890, 'StarTrust', '210 Nebula Avenue, Starlight City, Cosmos'),
       ('Eternal Ventures Inc.', 7890123456, 'Timeless Capital', '654 Infinity Quay, Eternal Haven, Eternia'),
       ('Harbor Horizons Ltd.', 3456789012, 'Port Bank', '987 Dockside Drive, Seaport Vista, Maritania'),
       ('OceanWaves Trading Co.', 6789012345, 'BlueBank', '321 Wave Lane, Oceanfront Oasis, Oceanica'),
       ('AquaTrade Logistics', 2345678901, 'Aqua Finance', '543 Oceanview Street, Aquaopolis, Oceanica'),
       ('Windward Horizons', 8901234567, 'Venture Trust', '876 Breezy Quay, Horizon Bay, Horizonia'),
       ('GoldenHarbor Ltd.', 4567890123, 'Golden Capital', '109 Sunset Boulevard, Goldenshore, Goldenland'),
       ('Mystic Shores Trading', 9012345678, 'Mystic Bank', '432 Enchanted Lane, Mystic Cove, Fantasia'),
       ('StellarCargo Co.', 3456789011, 'Galactic Capital', '567 Celestial Drive, Starport City, Galaxy'),
       ('Eternal Treasures Inc.', 9876543211, 'Eternal Bank', '678 Timeless Street, Everlasting Port, Eternia'),
       ('DeepBlue Horizons', 2345678902, 'DeepBlue Finance', '789 Abyss Lane, Oceanus Bay, Oceanica'),
       ('Oceanic Ventures Ltd.', 8765432109, 'Oceanic Trust', '890 Seafarer Road, Horizon Harbor, Horizonia'),
       ('Marine Masters Co.', 1098765432, 'Marine Capital', '123 Coastal Lane, Wavefront City, Maritania'),
       ('WaveRider Trading', 9876543210, 'WaveBank', '234 Seashore Avenue, Surfscape, Oceanica'),
       ('Anchor Merchants', 5678901234, 'Anchor Finance', '345 Harborview Street, Anchor Bay, Maritania'),
       ('Sailor''s Haven Ltd.', 3456789012, 'Sailor''s Bank', '456 Portside Lane, Seafarer Haven, Maritania'),
       ('Horizon Horizon Ltd.', 9012345678, 'Horizon Bank', '567 Skyline Road, SkyVista, Horizonia'),
       ('Nomad Imports', 1234567890, 'Nomad Trust', '678 Wanderer Lane, Nomad''s Rest, Wanderland');

-- Mock data for baltika.cargo
INSERT INTO baltika.cargo (customvalue, departuredate, arrivedate, origin, destination, customclearance, number,
                           shipment, declarevalue, unit, insurevalue, sender, consignee, comment)
VALUES (1000, '2023-12-01', '2023-12-10', 1, 5, true, 12345, 'Electronics', 5000, 'Boxes', 2000, 15, 7,
        'Fragile items'),
       (1500, '2023-12-05', '2023-12-15', 3, 7, false, 67890, 'Clothing', 3000, 'Packs', 1500, 29, 9,
        'Fashion garments'),
       (800, '2023-12-10', '2023-12-20', 2, 6, true, 54321, 'Artwork', 7000, 'Crates', 2500, 8, 18, 'Handle with care'),
       (1200, '2023-12-15', '2023-12-25', 4, 8, false, 98765, 'Books', 4000, 'Pallets', 1800, 37, 5,
        'Educational materials'),
       (900, '2023-12-20', '2023-12-30', 5, 9, true, 23456, 'Furniture', 6000, 'Pieces', 2200, 6, 16,
        'Household items'),
       (2000, '2023-12-25', '2024-01-05', 6, 10, false, 87654, 'Toys', 2500, 'Cartons', 1200, 20, 11,
        'Children''s playthings'),
       (1800, '2023-12-30', '2024-01-10', 7, 1, true, 32109, 'Electrical Appliances', 3500, 'Units', 1600, 10, 3,
        'Home electronics'),
       (3000, '2024-01-05', '2024-01-15', 8, 2, false, 76543, 'Sporting Goods', 4500, 'Sets', 2000, 26, 13,
        'Outdoor equipment'),
       (500, '2024-01-10', '2024-01-20', 9, 3, true, 21098, 'Cosmetics', 2000, 'Packages', 800, 4, 2,
        'Beauty products'),
       (2500, '2024-01-15', '2024-01-25', 10, 4, false, 65432, 'Automotive Parts', 5500, 'Crates', 2400, 34, 20,
        'Vehicle components'),
       (1200, '2024-01-20', '2024-01-30', 1, 5, true, 54321, 'Jewelry', 3000, 'Boxes', 1200, 12, 6, 'Valuable items'),
       (800, '2024-01-25', '2024-02-05', 3, 7, false, 98765, 'Perfumes', 1800, 'Bottles', 700, 39, 15,
        'Fragrance products'),
       (1600, '2024-02-01', '2024-02-10', 2, 6, true, 32109, 'Food Products', 4000, 'Cartons', 1600, 7, 1,
        'Perishable goods'),
       (2200, '2024-02-05', '2024-02-15', 4, 8, false, 76543, 'Musical Instruments', 6000, 'Cases', 2800, 22, 17,
        'Melodic instruments'),
       (700, '2024-02-10', '2024-02-20', 5, 9, true, 21098, 'Tools', 2500, 'Toolboxes', 1000, 17, 14,
        'Construction tools'),
       (1300, '2024-02-15', '2024-02-25', 6, 10, false, 65432, 'Home Decor', 3500, 'Pieces', 1400, 31, 8,
        'Interior furnishings'),
       (1800, '2024-02-20', '2024-03-01', 7, 1, true, 54321, 'Fitness Equipment', 5000, 'Sets', 2200, 3, 10,
        'Exercise gear'),
       (900, '2024-02-25', '2024-03-05', 8, 2, false, 98765, 'Pet Supplies', 2000, 'Packages', 900, 35, 4,
        'Animal care products'),
       (2400, '2024-03-01', '2024-03-10', 9, 3, true, 32109, 'Tech Gadgets', 4000, 'Units', 1800, 13, 12,
        'Electronic devices'),
       (1600, '2024-03-05', '2024-03-15', 10, 4, false, 76543, 'Outdoor Gear', 3000, 'Kits', 1200, 40, 19,
        'Adventure equipment'),
       (1100, '2024-03-10', '2024-03-20', 1, 5, true, 21098, 'Gourmet Foods', 4500, 'Baskets', 2000, 9, 5,
        'Delicacies'),
       (3000, '2024-03-15', '2024-03-25', 3, 7, false, 65432, 'Art Supplies', 5500, 'Crates', 2400, 25, 2,
        'Creative materials'),
       (800, '2024-03-20', '2024-03-30', 2, 6, true, 54321, 'Fashion Accessories', 2000, 'Boxes', 800, 2, 20,
        'Stylish items'),
       (1700, '2024-03-25', '2024-04-04', 4, 8, false, 98765, 'Educational Toys', 3500, 'Packages', 1500, 38, 16,
        'Learning tools');
