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


/***********************************************************************************
*_________________________Weather Observation Station 2____________________________*
* https://www.hackerrank.com/challenges/weather-observation-station-2/problem      *
*----------------------------------------------------------------------------------*
* Query the following two values from the STATION table:                           *
* The sum of all values in LAT_N rounded to a scale of 2 decimal places.           *
* The sum of all values in LONG_W rounded to a scale of 2 decimal places.          *
************************************************************************************/

SELECT
    ROUND(SUM(lat_n), 2) AS lat,
    ROUND(SUM(long_w), 2) AS lon
FROM
    station;


/***********************************************************************************
 *_________________________Weather Observation Station 13__________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-13/problem    *
 *---------------------------------------------------------------------------------*
 * Query the sum of Northern Latitudes (LAT_N) from STATION having values greater  *
 * than  and less than . Truncate your answer to  decimal places.                  *
 ***********************************************************************************/

SELECT
    ROUND(SUM(lat_n), 4)
FROM
    station
WHERE
    lat_n > 38.7880 AND  lat_n < 137.2345;


/***********************************************************************************
 *_________________________Weather Observation Station 14__________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-14/problem    *
 *---------------------------------------------------------------------------------*
 * Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is *
 * less than . Truncate your answer to  decimal places.                            *
 ***********************************************************************************/

SELECT
    ROUND(MAX(lat_n), 4)
FROM
    station
WHERE
    lat_n < 137.2345;


/***********************************************************************************
 *________________________Weather Observation Station 15__________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-15/problem?   *
 *---------------------------------------------------------------------------------*
 * Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N)  *
 * in STATION that is less than 137.2345. Round your answer to 4 decimal places.   *
 ***********************************************************************************/

SELECT 
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT 
            MAX(lat_n)
        FROM
            station
        WHERE
            lat_n < 137.2345
    );


/***********************************************************************************
 *_________________________Weather Observation Station 16__________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-16/problem    *
 *---------------------------------------------------------------------------------*
 * Query the smallest Northern Latitude (LAT_N) from STATION that is greater than. * 
 * Round your answer to 4 decimal places.                                          *
 ***********************************************************************************/
SELECT
    ROUND(MIN(lat_n), 4)
FROM
    station
WHERE
    lat_n > 38.7780;


/***********************************************************************************
 *__________________________Weather Observation Station 17_________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-17/problem    *
 * Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N)*
 * in STATION is greater than 38.7780. Round your answer to 4 decimal places.      *
 ***********************************************************************************/
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT
            MIN(lat_n)
        FROM
            station
        WHERE
            lat_n > 38.7780
    );


/***********************************************************************************
 *__________________________Weather Observation Station 18_________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-18/problem    *
 *---------------------------------------------------------------------------------*
 * Consider P1(a, b) and P2(c, d) to be two points on a 2D plane.                  *
 * happens to equal the minimum value in Northern Latitude (LAT_N in STATION).     *
 * happens to equal the minimum value in Western Longitude (LONG_W in STATION).    *
 * happens to equal the maximum value in Northern Latitude (LAT_N in STATION).     *
 * happens to equal the maximum value in Western Longitude (LONG_W in STATION).    *
 * Query the Manhattan Distance between points P1 and P2 and round it to a scale of*
 * 4 decimal places.                                                               *
 *---------------------------------------------------------------------------------*
 * Manhattan distance: https://xlinux.nist.gov/dads/HTML/manhattanDistance.html    *
 ***********************************************************************************/

SELECT
    ROUND(
        (
            ABS(MIN(lat_n) - MAX(lat_n))
            +
            ABS(MIN(long_w) - MAX(long_w))
        ),
        4
    )
FROM
    station;


/***********************************************************************************
 *________________________Weather Observation Station 19___________________________*
 * https://www.hackerrank.com/challenges/weather-observation-station-19/problem    *
 *---------------------------------------------------------------------------------*
 * Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where (a, b) are  *
 * the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d)*
 * are the respective minimum and maximum values of Western Longitude (LONG_W) in  *
 * STATION.                                                                        *
 * Query the Euclidean Distance between points P1 and P2 and format your answer to *
 * display 4 decimal digits.                                                       *
 *---------------------------------------------------------------------------------*
 * Euclidean Distance :                                                            *
 * https://www.cut-the-knot.org/pythagoras/DistanceFormula.shtml                   *
 ***********************************************************************************/

SELECT
    ROUND(
        SQRT(
            POWER((MIN(lat_n) - MAX(lat_n)), 2)
            +
            POWER((MIN(long_w) - MAX(long_w)), 2)
        ),
        4
    )
FROM
    station;