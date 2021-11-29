# World_Happiness_Visualization

**Life_ladder_by_country**
https://worldhappiness.report/ed/2021/#appendices-and-data
![Life_ladder](https://user-images.githubusercontent.com/85839235/140621693-465df65b-a2e8-49fe-907c-1e273fd1a5e6.png)

## Project Overview
Perform statistical analysis with the Life Ladder metrics that meaure perceived satisfaction and quality of life between the years 2008-2020.

## Links
* Google Slides presentation: https://docs.google.com/presentation/d/1-TAnhkwUNM6IS-IQDcpyB-aw7qAN2UXNCbUCFCnAhDA/edit#slide=id.p
* Heroku App (dashboard): https://happiness-trial.herokuapp.com/
* Tableau Story: https://public.tableau.com/app/profile/isabella.helliwell/viz/Book2_16380679399500/Overview

## Overview of folder setup:

`Data` : consists of all the data used. Data has been sorted by years, and also converted to .csv files for each year. This is done using python code.

`Happiness`: contains the files needed to deploy local website for this project.

`app.py` is used for the userinput interactions 

`data.js` is the dataset converted to JSON file in order to be used.

`app.js` is used to build the datatable in the html page. It is also used for the filtering function in the website.

Any images used and CSS are in the subfolders in Happiness folder

`Machine_Learning`: correlation, hierarchical clustering, multi linear regression models files are in this folder. 

`static` subfolder contains images and plots for latest analysis

