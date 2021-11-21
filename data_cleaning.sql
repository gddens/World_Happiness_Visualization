-- Create a table to import Life Ladder for years 2005 - 2019
CREATE TABLE life_ladder (
	Country_name VARCHAR(35),
	year INT,
	Life_Ladder DEC,
	GDP_per_capita DEC,
	social_support DEC,
	life_expectancy DEC,
	life_choices DEC,
	generosity DEC,
	corruption DEC,
	positive_affect DEC,
	negative_affect DEC
);

-- Import csv file life_ladder_by_country

-- Verify table
SELECT * FROM life_ladder;

-- Create table to import Life Ladder for 2020
CREATE TABLE life_ladder_2021 (
	Country_name VARCHAR(35),
	Life_Ladder DEC,
	GDP_per_capita DEC,
	social_support DEC,
	life_expectancy DEC,
	life_choices DEC,
	generosity DEC,
	corruption DEC
	);
	
-- Import csv file life_ladder_by_country

-- Verify table
SELECT * FROM life_ladder_2021;

-- Create final table to be exported
CREATE TABLE life_ladder_complete(
	Country_name VARCHAR(35),
	year INT,
	Life_Ladder DEC,
	GDP_per_capita DEC,
	social_support DEC,
	life_expectancy DEC,
	life_choices DEC,
	generosity DEC,
	corruption DEC,
	positive_affect DEC,
	negative_affect DEC
);

-- Insert data from life_ladder into life_ladder_complete
INSERT INTO life_ladder_complete
SELECT *
FROM life_ladder;

-- Verify table
SELECT * FROM life_ladder_complete;

-- Insert data from life_ladder_2021 into life_ladder_complete
INSERT INTO life_ladder_complete (country_name, life_ladder, gdp_per_capita, social_support,
								 life_expectancy, life_choices, generosity, corruption)
SELECT country_name, life_ladder, gdp_per_capita, social_support,
								 life_expectancy, life_choices, generosity, corruption
FROM life_ladder_2021;

-- Verify table
SELECT * FROM life_ladder_complete;

-- Drop nulls
    DELETE FROM life_ladder_complete 
    where life_ladder IS NULL 
    OR gdp_per_capita IS NULL 
    OR social_support IS NULL
	OR life_expectancy IS NULL 
    OR life_choices IS NULL
	OR generosity IS NULL 
    OR corruption IS NULL;

-- Export table to Life_ladder_All_Years_csv

-- Verify available years for analysis
SELECT DISTINCT year
FROM life_ladder_complete
ORDER BY year;

-- Create population table
CREATE TABLE population (
	country_name VARCHAR(75),
	country_code VARCHAR (5),
	year_2019 BIGINT,
	year_2020 BIGINT
);

-- Import csv Population_by_country_worldbank_light

-- Verify Table
SELECT * FROM population 
SELECT * FROM life_ladder_complete;
SELECT * FROM mortality;


-- Create mortality table
CREATE TABLE mortality (
	country VARCHAR (75),
	population_2020 BIGINT,
	population_2019 BIGINT,
	covid_death_ratio DECIMAL(8,4),
	covid_deaths INT
);

-- Insert Mortality_data_with_Covid_light into mortality table

-- Left Join life_ladder_complete with mortality by country for the year 2020
SELECT l.country_name, l.life_ladder, l.gdp_per_capita, l.social_support, l.life_expectancy, l.life_choices,
	l.generosity, l.corruption, l.positive_affect, l.negative_affect, m.population_2020, m.covid_deaths
FROM life_ladder_complete AS l
JOIN mortality AS m
ON l.country_name = m.country
WHERE l.year = '2020';

-- Create new table with Left Join life_ladder_complete with mortality by country for the year 2020
CREATE TABLE lifel_covid_2020 AS
SELECT l.country_name, l.life_ladder, l.gdp_per_capita, l.social_support, l.life_expectancy, l.life_choices,
	l.generosity, l.corruption, l.positive_affect, l.negative_affect, m.population_2020, m.covid_deaths
FROM life_ladder_complete AS l
JOIN mortality AS m
ON l.country_name = m.country
WHERE l.year = '2020';

-- Verify table
SELECT * FROM lifel_covid_2020;

-- Export table lifel_covid_2020




