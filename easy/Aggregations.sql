-- Revising Aggregations - The Count Function
SELECT COUNT(*) FROM CITY WHERE POPULATION >= 100000;


-- Revising Aggregations - The Sum Function
SELECT SUM(POPULATION) FROM CITY WHERE UPPER(DISTRICT) = 'CALIFORNIA';


-- Revising Aggregations - Averages
SELECT AVG(POPULATION) FROM CITY WHERE UPPER(DISTRICT) = 'CALIFORNIA';


-- Average Population
SELECT ROUND(AVG(POPULATION), 0) FROM CITY;


-- Japan Population
SELECT SUM(POPULATION) FROM CITY WHERE UPPER(COUNTRYCODE) = 'JPN';