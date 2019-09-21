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

