/***********************************************************************************
 *____________________Revising Aggregations - The Count Function___________________*
 * Query a count of the number of cities in CITY having a Population larger than.  *
 ***********************************************************************************/

SELECT COUNT(name) FROM city WHERE population > 100000;


/***********************************************************************************
 *__________________Revising Aggregations - The Sum Function_______________________*
 * Query the total population of all cities in CITY where District is California.  *
 ***********************************************************************************/

SELECT SUM(population) as total_population FROM city WHERE district = 'california';


/***********************************************************************************
 *_____________________Revising Aggregations - Averages____________________________*
 * Query the average population of all cities in CITY where District is California.*
 ***********************************************************************************/

SELECT AVG(population) as avg_population FROM city WHERE district = 'california';


/***********************************************************************************
 *_____________________________Average Population__________________________________*
 * Query the average population for all cities in CITY,rounded down to the nearest *
 * integer.                                                                        *
 ***********************************************************************************/

SELECT ROUND(AVG(population)) as avg_population FROM city;


/***********************************************************************************
 *_______________________________Japan Population__________________________________*
 * Query the sum of the populations for all Japanese cities in CITY.               *
 * The COUNTRYCODE for Japan is JPN.                                               *
 ***********************************************************************************/

SELECT SUM(population) as total_population FROM city WHERE countrycode = 'JPN';


/***********************************************************************************
 *______________________Population Density Difference______________________________*
 * Query the difference between the maximum and minimum populations in CITY.       *
 ***********************************************************************************/

SELECT (MAX(population) - MIN(population)) as population_diff FROM city;


/***********************************************************************************
 *__________________________________The Blunder____________________________________*
 ***********************************************************************************/

SELECT
    CEIL(
        (AVG(salary)) - (AVG(REPLACE(salary, '0', '')))
    ) AS avg_salary
FROM employees;


/***********************************************************************************
 *_______________________________Top Earners_______________________________________*
 * We define an employee's total earnings to be their monthly "salary x months"    *
 * worked, and the maximum total earnings to be the maximum total earnings for any *
 * employee in the Employee table. Write a query to find the maximum total earnings*
 * for all employees as well as the total number of employees who have maximum     *
 * total earnings. Then print these values as 2 space-separated integers.          *
 *_________________________________________________________________________________*
 * GROUP BY 1 : means group by first column in selection, eg. earnings             *
 * ORDER BY 1  DESC : means order by first column in selection in desending order,
 * eg. earnings.
 ***********************************************************************************/

SELECT
    (months * salary) AS earnings,
    COUNT(employee_id)
FROM employee GROUP BY 1 ORDER BY 1 DESC limit 1;
