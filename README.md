# US Household Income Data Analysis

### Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools Used](#tools-used)
- [Data Processing](#data-processing)
- [Data Visualization](#data-visualization)
- [Findings](#findings)
- [References](#references)

### Project Overview: 

To analyze the US household income, the database contains 32,000 records on US Household Income Statistics & Geo Locations. 

### Data Sources:

The primary datasets used for the analysis are "USHouseholdIncome.csv" and "USHouseholdIncome_Statistics.csv", which contain information from the source- Golden Oak Research Group, LLC. “U.S. Income Database Kaggle”. 


### Tools Used:

- MySQL - Data Cleaning and EDA -[Download here](https://www.mysql.com/)
- Tableau Public- Data Visualization

### Data Processing:

#### Database Creation and Data Import:
A MySQL database named "us_household_income_data" was created and then "USHouseholdIncome.csv" and "USHouseholdIncome_Statistics.csv" datasets were imported into the database.
#### Data Cleaning and Preparation: 
- Removing Duplicates
- Handling Missing and Null Values
- Standardizing Data types 

#### Exploratory Data Analysis (EDA): 

The cleaned dataset underwent exploratory data analysis in MySQL to uncover initial patterns and insights.
1. Top 10 states by Area of Land?
2. Top 10 states by Area of Water?
3. Top 10 states by Average household income? 
4. Top 10 states by Median household income? 
5. Top 10 states by Standard deviation household income? 
6. Average and median household income differentiated by Type of geographic location?
7. Top 10 cities by Average household income? 
   

### Data Visualization:

Post-EDA, the cleaned dataset was exported to Tableau for advanced data visualization, facilitating a more intuitive understanding of life expectancy trends and health factors across the selected countries.
[Tableau Dashboard](https://public.tableau.com/views/USHOUSEHOLDINCOMEDASHBOARD/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

### Findings:

The analysis findings can be summarised as follows:
-  Life expectancy has increased over the 15 years in both developed and developing countries.
-  There is a positive and strong correlation between GDP and Life expectancy.
-  With a higher schooling period there seems to be higher life expectancy.
-  Most of the developed countries seem to have high BMI with high life expectancy. This could be due to higher quality health care provided.
-  The average number of infant and under-five deaths has decreased over the 15 years, reflecting the global improvements in healthcare provision and accessibility.

### References:

1. Golden Oak Research Group, LLC. “U.S. Income Database Kaggle”. Publication: 5, August 2017. Accessed-1, June 2024.
2. Analyst builder
