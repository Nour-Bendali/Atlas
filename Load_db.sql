
COPY Regions (region_id, region_name, wikiDataId)
FROM '/Users/elyazidbenkhadra/Desktop/ProjectAtlas/Atlas/datacsv/regions.csv'
CSV HEADER;

COPY Subregions (subregion_id, subregion_name, region_id, wikiDataId)
FROM '/Users/elyazidbenkhadra/Desktop/ProjectAtlas/Atlas/datacsv/subregions.csv'
CSV HEADER;

COPY Countries (country_id, country_name, iso_code3, iso_code2, numeric_code, phone_code, capital, currency_code, currency_name, currency_symbol, native_name, region_id, subregion_id, nationality, timezones, latitude, longitude)
FROM '/Users/elyazidbenkhadra/Desktop/ProjectAtlas/Atlas/datacsv/countries.csv'
CSV HEADER;

COPY States (state_id, state_name, country_id, state_code, state_type, latitude, longitude)
FROM '/Users/elyazidbenkhadra/Desktop/ProjectAtlas/Atlas/datacsv/states.csv'
CSV HEADER;

COPY Cities (city_id, city_name, state_id, country_id, latitude, longitude, wikiDataId)
FROM '/Users/elyazidbenkhadra/Desktop/ProjectAtlas/Atlas/datacsv/cities.csv'
CSV HEADER;

---------------------------------------------------------------- LOCAL LOAD
-- Load Regions
\COPY Regions (region_id, region_name, wikiDataId)
FROM './datacsv/regions.csv'
WITH (FORMAT csv, HEADER true);


\COPY Subregions (subregion_id, subregion_name, region_id, wikiDataId)
FROM './datacsv/subregions.csv'
WITH (FORMAT csv, HEADER true);

\COPY Countries (country_id,country_name,iso_code3,iso_code2,numeric_code,phone_code,capital,currency_code,currency_name,currency_symbol,tld,native_name,region_id,subregion_id,nationality,timezones,latitude,longitude)
FROM './datacsv/countries.csv'
WITH (FORMAT csv, HEADER true);

\COPY States (state_id, state_name, country_id, state_code, state_type, latitude, longitude)
FROM './datacsv/states.csv'
WITH (FORMAT csv, HEADER true);


\COPY Cities (city_id, city_name, state_id, country_id, latitude, longitude, wikiDataId)
FROM './datacsv/cities.csv'
WITH (FORMAT csv, HEADER true);