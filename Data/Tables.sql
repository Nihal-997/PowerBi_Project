CREATE TABLE co2_emissions (
    country VARCHAR,
    year INT,
    co2_emissions_mt FLOAT
);

CREATE TABLE pm25_air_pollution (
    country VARCHAR,
    year INT,
    pm25_air_pollution REAL
);

CREATE TABLE greenhouse_emissions (
    country VARCHAR,
    year INT,
    greenhouse_emissions_mt FLOAT
);


select * from co2_emissions
select * from pm25_air_pollution
select * from greenhouse_emissions


CREATE TABLE AIR_Pollution_Data AS
SELECT
    co2.country,
    co2.year,
    co2.co2_emissions_mt,
    pm.pm25_air_pollution,
    ghg.greenhouse_emissions_mt
FROM co2_emissions co2
LEFT JOIN pm25_air_pollution pm
    ON co2.country = pm.country AND co2.year = pm.year
LEFT JOIN greenhouse_emissions ghg
    ON co2.country = ghg.country AND co2.year = ghg.year;


select * from AIR_Pollution_Data

