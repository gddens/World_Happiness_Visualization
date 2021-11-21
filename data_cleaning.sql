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

-- Export table to Life_ladder_All_Years_csv



