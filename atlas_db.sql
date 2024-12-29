CREATE TABLE Regions(
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL,
    wikiDataId VARCHAR(20)
);

CREATE TABLE Subregions(
    subregion_id INT PRIMARY KEY,
    subregion_name VARCHAR(100) NOT NULL,
    region_id INT NOT NULL,
    wikiDataID VARCHAR(20),
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    iso_code3 CHAR(3) NOT NULL,
    iso_code2 CHAR(2) NOT NULL,
    numeric_code INT NOT NULL,
    phone_code INT NOT NULL,
    capital VARCHAR(100),
    currency_code VARCHAR(10),
    currency_name VARCHAR(100),
    currency_symbol VARCHAR(10),
    tld VARCHAR(10),
    native_name VARCHAR(100),
    region_id INT NOT NULL,
    subregion_id INT,
    nationality VARCHAR(100),
    timezones VARCHAR(4060),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    FOREIGN KEY (region_id) REFERENCES Regions(region_id),
    FOREIGN KEY (subregion_id) REFERENCES Subregions(subregion_id)
);

CREATE TABLE States (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    state_code CHAR(5),
    state_type VARCHAR(45),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);

CREATE TABLE Cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    state_id INT NOT NULL,
    country_id INT NOT NULL,
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    wikiDataID VARCHAR(20),
    FOREIGN KEY (state_id) REFERENCES States(state_id),
    FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);
