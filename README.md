
# Project Overview:
The aim of this project is to create a machine learning model to predict one's happiness score (Life_Ladder) based on 8 features. 

# Data
The datasets used is taken from <a> https://worldhappiness.report </a> and is DataPanelWHR2021C2.xls. This file has been saved as a .csv file DataPanelWHR2021C2.csv
Since the dataset had missging column values, it was decided to drop those rows, where we had missing values. The data sorting and cleaning was done using <ins>python</ins>
`Data_Sorting.ipynb`. The resulting files are shown in the `Data_sorting` file. Further data sorting was carried out using python for inserting data into <ins> Tableau </ins> 


# Machine Learning
Looking at the descriptions in <a> https://worldhappiness.report </a> website, it is clear that the Life Ladder score is connected to 8 indicators of nation's economic and social developments. For this reason, it was decided to use Multi Linear Regression Model, to build a supervised machine learning model for prediction of the life Ladder. 




The data set was converted to JSON file using <ins>https://www.convertcsv.com/csv-to-json.htm</ins> website.


`Data` : consists of all the data used. Data has been sorted by years, and also converted to .csv files for each year. This is done using python code.

`Happiness`: contains the files needed to deploy local website for this project.

`app.py` is used for the userinput interactions 

`data.js` is the dataset converted to JSON file in order to be used.

`app.js` is used to build the datatable in the html page. It is also used for the filtering function in the website.

Any images used and CSS are in the subfolders in Happiness folder

`Machine_Learning`: correlation, hierarchical clustering, multi linear regression models files are in this folder. 

`static` subfolder contains images and plots for latest analysis

