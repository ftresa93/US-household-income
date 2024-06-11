#CREATED A DATABASE `us_household_income_data`
USE us_household_income_data;

#IMPORTED THE DATA INTO THE DATABASES
SELECT * 
FROM us_household_income_statistics;

SELECT * 
FROM us_household_income;

ALTER TABLE us_household_income_statistics
RENAME COLUMN `ï»¿id` TO `id`;

#DATA CLEANING 

#CHECKING THE NUMBER OF RECORDS OF BOTH TABLES
SELECT COUNT(*) 
FROM us_household_income_statistics;

SELECT COUNT(*) 
FROM us_household_income;

#CHECKING FOR DUPLICATES
SELECT ID, COUNT(ID)
FROM us_household_income
GROUP BY ID
HAVING COUNT(ID)>1;

SELECT ID, COUNT(ID)
FROM us_household_income_statistics
GROUP BY ID
HAVING COUNT(ID)>1;

#US_HOUSEHOLD_INCOME HAS DUPLICATES

SELECT row_id,id, 
ROW_NUMBER() OVER(PARTITION BY id ORDER by id) as row_num
FROM us_household_income 
;

SELECT row_id,id,row_num
FROM
	(SELECT row_id,id,
	ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as row_num
	FROM us_household_income 
	) as row_table
WHERE row_num>1;

DELETE FROM us_household_income
WHERE row_id IN(
	SELECT row_id
	FROM
		(SELECT row_id,
		ROW_NUMBER() OVER(PARTITION BY id) AS row_num
		FROM us_household_income 
		) AS row_table
	WHERE row_num>1
);

# STANDARDISING DATA
SELECT  *	
FROM us_household_income;

SELECT  DISTINCT State_Name
FROM us_household_income;

UPDATE us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

UPDATE us_household_income
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama'
;

SELECT  *
FROM us_household_income
WHERE Place = ''
;

UPDATE us_household_income
SET  Place = 'Autaugaville'
WHERE County = 'Autauga County' AND Place = ''
; 

SELECT  type, COUNT(Type)
FROM us_household_income
GROUP BY type
;

UPDATE us_household_income
SET  Type= 'Borough'
WHERE Type= 'Boroughs'
; 

SELECT  ALand, AWater
FROM us_household_income
WHERE Aland IN ('0','',NULL) AND AWater IN ('0','',NULL) 
;


### US HOUSEHOLD INCOME - EXPLORATORY DATA ANALYSIS

SELECT * 
FROM us_household_income_statistics;

SELECT * 
FROM us_household_income;

#TOP 10 STATES BY LAND
SELECT State_Name, SUM(ALand),SUM(AWater) 
FROM us_household_income
GROUP BY State_Name
ORDER BY SUM(ALand) DESC
LIMIT 10;

#TOP 10 STATES BY WATER
SELECT State_Name, SUM(ALand),SUM(AWater) 
FROM us_household_income
GROUP BY State_Name
ORDER BY SUM(AWater) DESC
LIMIT 10;

#HOUSEHOLD INCOME BY STATES
SELECT *
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0;

#TOP 10 AVG HOUSEHOLD INCOME BY STATES
SELECT u.State_name, ROUND(AVG(Mean),2), ROUND(AVG(Median),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY u.State_name
ORDER BY 2 DESC
LIMIT 10;

#BOTTOM 10 AVG HOUSEHOLD INCOME BY STATES
SELECT u.State_name, ROUND(AVG(Mean),2), ROUND(AVG(Median),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY u.State_name
ORDER BY 2 
LIMIT 10;

#TOP 10 MEDIAN HOUSEHOLD INCOME BY STATES
SELECT u.State_name, ROUND(AVG(Mean),2), ROUND(AVG(Median),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY u.State_name
ORDER BY 3 DESC 
LIMIT 10;

#TOP 10 STD. DEV. HOUSEHOLD INCOME BY STATES
SELECT u.State_name, ROUND(AVG(stdev),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY u.State_name
ORDER BY 2 DESC 
LIMIT 10;

# MEAN HOUSEHOLD INCOME BY TYPE
SELECT Type,COUNT(type),ROUND(AVG(Mean),2), ROUND(AVG(Median),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY type
ORDER BY 3 DESC 
;

# MEDIAN HOUSEHOLD INCOME BY TYPE
SELECT Type,COUNT(type),ROUND(AVG(Mean),2), ROUND(AVG(Median),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
WHERE Mean <>0
GROUP BY type
HAVING COUNT(type) >100
ORDER BY 4 DESC 
;

#COMMUNITY TYPE IS ONLY PRESENT IN STATE PUERTO RICO
SELECT * 
FROM us_household_income
WHERE Type= 'Community';

#STATE AND CITY AVG INCOME DISTRIBUTION
SELECT u.State_Name, City, ROUND(AVG(Mean),2)
FROM us_household_income u
JOIN us_household_income_statistics us
ON u.id= us.id
GROUP BY u.State_Name, City
ORDER BY 3 DESC 
;


