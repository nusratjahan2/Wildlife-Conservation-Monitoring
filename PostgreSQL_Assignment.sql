CREATE TABLE rangers(
ranger_id SERIAL PRIMARY KEY,
ranger_name VARCHAR(50),
contact VARCHAR(50),
region VARCHAR(50)
);

CREATE TABLE species(
 species_id SERIAL PRIMARY KEY,
 common_name VARCHAR(30),
 scientific_name VARCHAR(30),
 discovery_date DATE,
 conservation_status VARCHAR(30)
);


CREATE TABLE sightings(
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIMESTAMP without time zone,
    location VARCHAR(30),
    notes TEXT
);


SELECT * FROM rangers;

SELECT * FROM sightings;

SELECT * FROM species;


INSERT INTO rangers(ranger_name, contact, region) VALUES
('Alice Green','alice@green.com','Northern Hills'),
('Bob White','bob@white.com','River Delta'),
('Carol King', 'carol@king.com','Mountain Range');


INSERT INTO species(common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard ','Panthera uncia ',' 1775-01-01','Endangered'),
('Bengal Tiger','Panthera tigris','1758-01-01','Endangered'),
('Red Panda', 'Ailurus fulgens ',' 1825-01-01 ','Vulnerable '),
(' Asiatic Elephant', 'Elephas maximus indicus',' 1758-01-01','Endangered');

SELECT * FROM sightings;

INSERT INTO sightings(sighting_id, species_id, ranger_id, sighting_time, location, notes) VALUES
(1, 1, 1, '2024-05-10 07:45:00','Peak Ridge','Camera trap image captured'),
(2, 2, 2, '2024-05-12 16:20:00','Bankwood Area','Juvenile seen'),
(3, 3, 3, '2024-05-15 09:10:00', 'Bamboo Grove East','Feeding observed'),
(4, 1, 2, '2024-05-18 18:30:00', 'Snowfall Pass', NULL);


-- problem 1
INSERT INTO rangers(ranger_name, region) VALUES
('Derek Fox', 'Coastal Plains');

-- problem 2
INSERT INTO species(common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard ','Panthera uncia ',' 1775-01-01','Endangered'),
('Bengal Tiger','Panthera tigris','1758-01-01','Endangered'),
('Bengal Tiger','Panthera tigris','1758-01-01','Endangered'),
('Red Panda', 'Ailurus fulgens ',' 1825-01-01 ','Vulnerable '),
(' Asiatic Elephant', 'Elephas maximus indicus',' 1758-01-01','Endangered'),
('Red Panda', 'Ailurus fulgens ',' 1825-01-01 ','Vulnerable '),
('Red Panda', 'Ailurus fulgens ',' 1825-01-01 ','Vulnerable ');

SELECT COUNT(*) as unique_species_count
FROM (SELECT DISTINCT common_name FROM species);

-- problem 3
SELECT * FROM sightings
WHERE location LIKE '%Pass';


-- problem 4
SELECT COUNT(*) FROM sightings
WHERE 

-- problem 5
-- problem 6