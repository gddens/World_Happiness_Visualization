# final_group_project

**Population_by_country_worldbank 1960 - 2020**
https://data.worldbank.org/indicator/SP.POP.TOTL
![Population_world_bank](https://user-images.githubusercontent.com/85839235/140621692-48d6e6bc-82bf-4dcb-91a3-848204cf9eef.png)


**Life_ladder_by_country**
https://worldhappiness.report/ed/2021/#appendices-and-data
![Life_ladder](https://user-images.githubusercontent.com/85839235/140621693-465df65b-a2e8-49fe-907c-1e273fd1a5e6.png)


**Depression_by_country**
https://ourworldindata.org/grapher/number-with-depression-by-country?tab=table
![Depression](https://user-images.githubusercontent.com/85839235/140621694-7afc42fe-8cfd-4911-a043-dc75f777e1c8.png)


**Mortality_data**
![Mortality_data](https://user-images.githubusercontent.com/85839235/140624246-cc5269ce-d8d8-41ae-b945-9a965930e108.png)



# Project Overview
Perform statistical analysis using various socio-economical data in order to find relations between perceived satisfaction and quality of life between invididuals of different countries. Compare how COVID death has impacted the life satisfaction across the world.  

## Methodology
#### Life Ladder ####
  - Using the Life Ladder dataset, use the most recent year data for each country in order to perform statistical analysis. Visualize each country perceived life satisfaction score using Leaflet or Tableau. 
  - Using the Life Ladder dataset, use the most recent year data for each country in order to perform a Linear Regression Supervised Machine Learning and train a model with some of the data with the goal of finding an equation that would predict life satisfaction. **If a reliable equation for Life Satisfaction is achieved, build a visualizations regarding what each country biggest opportunity could be in order to improve the life satisfaction of their citizens would be (based on feature importance).**
  - Using the Life Ladder dataset, use the most recent year data for each country and train a Random Forrest Classifier in order to identify which variables seem to have the most impact in the decisions for life satisfaction of those interviewed. Compared each features impact on the Life Ladder variable. 
  - Analize the Life Ladder dataset. Prepared the data using StandardScaler, reduce the dimensions (maybe using the RandomForrestClassifier amount of most impactful variables), train a model and do a 3D-Scatter plot.  
  
#### Population, Depression and Happiness ####
  - Manage the 3 datasets (Population_by_country_worldbank, Life_ladder_by_country, Depression_by_country) using SQL and combine the 3 tables by country using each respective table data for the year 2017. (The year 2017 was selected due to being the most recent year that had available data in all 3 datasets). Merge Life Ladder column, Depression Column, and Population Column assigned to each country. 
  - Adjust the cases of Depression by country with their population in order to find a Depression Score for each country. 
  - Compare the Life Ladder and Depression scores. Perform Linear Regression with the two variables in order to look into possible relations between them. 
  - 


#### COVID impact ####
  - Using the Life Ladder dataset, compare the Life Ladder sentiment score between the years 2019 and 2020. Look for proportional increases or decreases between the 2 years. 
  - With the Mortality dataset, create a Covid deaths index by finding the death ratio of COVID 19 deaths with the population of each country for the year 2020. 
  - Comapre the changes of sentiment of Life Ladder between the years 2019 and 2020 with the COVID death ratio. 

## Visualizations
  - Plot each country most recent Life Ladder data and color code it by their Life Ladder Score. Create another layer with their Depression Score. 
  - If a satisfactory Life Ladder equation is created, look into plotting a map of the world with each country 1 or 2 main variables that could improve their citizen life ladder sentiment. 
  - Use Tableau for visualizations found from statistical analysis. 
  - Create a website to showcase results using previous website code as leverage. 
