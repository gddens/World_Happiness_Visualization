
# 1. Project Overview:
The aim of this project is to create a machine learning model to predict one's happiness score (Life_Ladder) based on 8 features. 

# 2. Data
The datasets used is taken from <a> https://worldhappiness.report </a> and is DataPanelWHR2021C2.xls. This file has been saved as a .csv file DataPanelWHR2021C2.csv
Since the dataset had missging column values, it was decided to drop those rows, where we had missing values. The data sorting and cleaning was done using <ins>python</ins>
`Data_Sorting.ipynb`. The resulting files are shown in the `Data_sorting` file. Further data sorting was carried out using python for inserting data into <ins> Tableau </ins> 


# 3.Machine Learning
## 3.1 Scikit-Learn
Looking at the descriptions in <a> https://worldhappiness.report </a> website, it is clear that the Life Ladder score is connected to 8 indicators of nation's economic and social developments. For this reason, it was decided to use Multi Linear Regression Model, to build a supervised machine learning model for prediction of the life Ladder.
For this, the LinearRegression module from `Scikit-Learn` (Sklearn) Python library was used.
The linear equation is as follows:

<ins>Regression Equation:</ins>
Happiness_Ladder = -2.92 +(0.41Log_GDP_percapita)+(1.86Social_support)+(0.02Healthy _life_expectancy_at_birth)+ (0.4Freedom_to_make_life_choices)+(0.28Generosity)+(-0.6.78Perceptions_of_corruption)+(2.23Positive_affect)+(0.36Negative_affect) + e

<ins>Model Evaluation:</ins>
R-squared: (R2) 76.993
Mean Absolute Error: 0.424
Mean Square Error:(MSE) 0.308
Root Mean Square Error:0.555
Model Intercept:-2.918
Model coefficients:[ 0.40974578  1.85602309  0.02493523  0.39578739  0.28164724 -0.67809136 2.22537653  0.35983117]

Looking at the model evaluation, <b>R=77% </b>, we can assume that the model is a good fit in this instance.

## 3.2 Hierarchical Clustering
Furthermore, we wanted to explore the data using unsupervised machine learning.  
We wanted to see if there were any similarities between the data points. We used Hierarchical Clustering and Scientific Python `scipy` for this to group together the data points with similar characteristics.
The results and plots are shown in `static/images/Dendrograms` folder. The higher the horizontal lines, the less similarity there is between the clusters. 










The data set was converted to JSON file using <ins>https://www.convertcsv.com/csv-to-json.htm</ins> website.


`Data` : consists of all the data used. Data has been sorted by years, and also converted to .csv files for each year. This is done using python code.

`Happiness`: contains the files needed to deploy local website for this project.

`app.py` is used for the userinput interactions 

`data.js` is the dataset converted to JSON file in order to be used.

`app.js` is used to build the datatable in the html page. It is also used for the filtering function in the website.

Any images used and CSS are in the subfolders in Happiness folder

`Machine_Learning`: correlation, hierarchical clustering, multi linear regression models files are in this folder. 

`static` subfolder contains images and plots for latest analysis

