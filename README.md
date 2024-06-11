# US Household Income Data Analysis

### Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools Used](#tools-used)
- [Data Processing](#data-processing)
- [Data Visualization](#data-visualization)
- [Result](#result)
- [References](#references)

### Project Overview: 

To analyze US household income, utilizing a database containing 32,000 records on US Household Income Statistics and Geo Locations. 

### Data Sources:

The primary datasets used for this analysis are "USHouseholdIncome.csv" and "USHouseholdIncome_Statistics.csv," sourced from Golden Oak Research Group, LLC,and made available via the “U.S. Income Database Kaggle".


### Tools Used:

- MySQL - Data Cleaning and EDA -[Download here](https://www.mysql.com/)
- Tableau Public- Data Visualization

### Data Processing:

#### Database Creation and Data Import:
A MySQL database "us_household_income_data" was created to import datasets "USHouseholdIncome.csv" and "USHouseholdIncome_Statistics.csv".
#### Data Cleaning and Preparation: 
- Removing Duplicates
- Handling Missing and Null Values
- Standardizing Data types 

#### Exploratory Data Analysis (EDA): 

The cleaned dataset underwent EDA in MySQL to uncover initial patterns and insights. Key analyses included:

1. Identifying the top 10 states by area of land.
2. Identifying the top 10 states by area of water.
3. Identifying the top 10 states by average household income.
4. Identifying the top 10 states by median household income.
5. Identifying the top 10 states by standard deviation in household income.
6. Differentiating average and median household income by type of geographic location.
7. Identifying the top 10 cities by average household income.
   

### Data Visualization:

After EDA, the cleaned dataset was exported to Tableau for advanced data visualization, providing a more intuitive understanding of household income trends across the US. The visualization can be accessed through the [Tableau Dashboard](https://public.tableau.com/views/USHOUSEHOLDINCOMEDASHBOARD/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link).

### Result:

The analysis findings are summarized as follows:
- The average household income is $67K, and the median household income is $86K.
- The average standard deviation in household income is $47K.
- States located on the East and West coasts have the highest average and median household incomes.
- Texas has the highest area in land and water resources.
- Puerto Rico has the lowest average and median household income among all the states.
- Delta Junction city in Alaska has the highest average household income by city.
- These insights provide valuable information on household income distribution and geographical disparities across the United States.

### References:

1. Golden Oak Research Group, LLC. “U.S. Income Database Kaggle”. Publication: 5, August 2017. Accessed on 1, June 2024.
2. Analyst builder
