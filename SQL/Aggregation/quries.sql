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
