-- Drop the database if it already exists
DROP DATABASE IF EXISTS cities_db;

-- Create the database
CREATE DATABASE cities_db;

-- Use the database
USE cities_db;

DROP TABLE IF EXISTS cities;
-- Create the 'cities' table
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT,             -- Automatically generated ID for each city
    city_name VARCHAR(255) NOT NULL,  
    country VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    PRIMARY KEY (city_id)                   -- Primary key to uniquely identify each city
);

 
# Population  Table


DROP TABLE IF EXISTS population;

-- Create the 'population' table
CREATE TABLE population (
    city_id INT NOT NULL,
    population INT NOT NULL,                          -- Population
    area FLOAT,
    timestamp_population DATE NOT NULL,               -- Year or full date
    PRIMARY KEY (city_id, timestamp_population),      -- Composite primary key
    FOREIGN KEY (city_id) REFERENCES cities(city_id)  -- Foreign key constraint
);


 # Weather Table

DROP TABLE IF EXISTS weather;


CREATE TABLE weather (
    city_id INT NOT NULL,
    forecast_time DATETIME NOT NULL,
    outlook VARCHAR(100),
    temperature FLOAT,
    feels_like FLOAT,
    forecast VARCHAR(255),
    rain_in_last_3h FLOAT,
    wind_speed FLOAT,
    data_retrieved_at DATETIME NOT NULL,

    PRIMARY KEY (city_id, forecast_time, data_retrieved_at),

    FOREIGN KEY (city_id)
        REFERENCES cities(city_id)
);

# Airport Table

DROP TABLE IF EXISTS airports;

CREATE TABLE airports (
    icao VARCHAR(4) NOT NULL,
	iata VARCHAR(5),
    airport_name VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    PRIMARY KEY (icao)
);

# Airport Table

DROP TABLE IF EXISTS cities_airports;

CREATE TABLE cities_airports (
    city_id INT NOT NULL,
    icao VARCHAR(4) NOT NULL,
    PRIMARY KEY (city_id, icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id),
    FOREIGN KEY (icao) REFERENCES airports(icao)
);

# Flight Table

DROP TABLE IF EXISTS flights;

CREATE TABLE flights (
    icao VARCHAR(4) NOT NULL,
    flight_number VARCHAR(15) NOT NULL,
    scheduled_arrival_time DATETIME NOT NULL,
    updated_arrival_time DATETIME,
    departure_airport VARCHAR(255),
    PRIMARY KEY (icao, flight_number, scheduled_arrival_time),
    FOREIGN KEY (icao) REFERENCES airports(icao)
);


SELECT * FROM cities;

SELECT * FROM population;

SELECT * FROM weather;

SELECT * FROM airports;

SELECT * FROM cities_airports;

SELECT * FROM flights;