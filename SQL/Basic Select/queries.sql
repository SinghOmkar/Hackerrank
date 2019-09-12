/**********************************************************************
 *------------------- Revising the Select Query I --------------------*
 * Query all columns for all American cities in CITY with populations *
 * larger than 100000. The CountryCode for America is USA.            *
 **********************************************************************/

 SELECT * FROM city WHERE countrycode = "USA" AND population > 100000;


/***********************************************************************
 *------------------- Revising the Select Query II --------------------*
 * Query the names of all American cities in CITY with populations     *
 * larger than 120000. The CountryCode for America is USA.             *
 ***********************************************************************/

 SELECT name FROM city WHERE countrycode = "USA" AND population > 120000;


 /**********************************************************************
  *-----------------------Select All ----------------------------------*
  * Query all columns (attributes) for every row in the CITY table.    *
  **********************************************************************/

 SELECT * FROM city;


/***********************************************************************
 *---------------------- Select By ID ---------------------------------*
 * Query all columns for a city in CITY with the ID 1661.              *
 ***********************************************************************/

 SELECT * FROM city WHERE id = 1661;


/***********************************************************************
 *----------------- Japanese Cities' Attributes -----------------------*
 * Query all attributes of every Japanese city in the CITY table.      *
 * The COUNTRYCODE for Japan is JPN.                                   *
 ***********************************************************************/

 SELECT * FROM city WHERE countrycode = "JPN";


/***********************************************************************
 *---------------------- Japanese Cities' Names -----------------------*
 * Query names of all Japanese city in the CITY table.                 *
 * The COUNTRYCODE for Japan is JPN.                                   *
 ***********************************************************************/

 SELECT name FROM city WHERE countrycode = "JPN";


/**********************************************************************
 *------------------Weather Observation Station 1---------------------*
 * Query a list of CITY and STATE from the STATION table.             *
 **********************************************************************/

 SELECT city, state FROM station;


/**********************************************************************
 *------------------Weather Observation Station 3---------------------*
 * Query a list of CITY names from STATION with even ID numbers only. *
 * You may print the results in any order, but must exclude duplicates*
 * from your answer.                                                  *
 **********************************************************************/

 SELECT DISTINCT city FROM station WHERE MOD(id, 2) = 0;


/****************************************************************
 *-----------------Weather Observation Station 4----------------*
 ****************************************************************/

SELECT COUNT(city) - COUNT(DISTINCT city) FROM STATION;



/*********************************************************************************
 *----------------------Weather Observation Station 5----------------------------*
 *********************************************************************************/

SELECT city, LENGTH(city) as len FROM station ORDER BY len ASC, city ASC LIMIT 1;
SELECT city, LENGTH(city) as len FROM station ORDER BY len DESC, city ASC LIMIT 1;



/*********************************************************************************
 *------------------------Weather Observation Station 6--------------------------*
 * Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)    *
 * from STATION. Your result cannot contain duplicates.                          *
 *********************************************************************************/

SELECT DISTINCT city FROM station WHERE LEFT(city, 1) IN ('a', 'e', 'i', 'o', 'u');



/*********************************************************************************
 *------------------------Weather Observation Station 7--------------------------*
 * Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. *  
 * Your result cannot contain duplicates.                                        *
 *********************************************************************************/

SELECT DISTINCT city FROM station WHERE RIGHT(city, 1) IN ('a', 'e', 'i', 'o', 'u');


/**********************************************************************************
 *-----------------------Weather Observation Station 8----------------------------*
 * Query the list of CITY names from STATION which have vowels (a, e, i, o, and u)*
 * as both their first and last characters. Your result cannot contain duplicates.*
 **********************************************************************************/

SELECT DISTINCT city FROM station WHERE LEFT(city, 1) IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(city, 1) IN ('a', 'e', 'i', 'o', 'u');



/*********************************************************************************
 *---------------------------Weather Observation Station 9-----------------------*
 * Query the list of CITY names from STATION that do not start with vowels. Your *
 * result cannot contain duplicates.                                             *
 *********************************************************************************/

SELECT DISTINCT city FROM station WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');



/*********************************************************************************
 *----------------------Weather Observation Station 10---------------------------*
 * Query the list of CITY names from STATION that do not end with vowels. Your   *
 * result cannot contain duplicates.                                             *
 *********************************************************************************/

SELECT DISTINCT city FROM station WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');



/**********************************************************************************
 *-------------------------Weather Observation Station 11-------------------------*
 * Query the list of CITY names from STATION that either do not start with vowels *
 * or do not end with vowels. Your result cannot contain duplicates.              *
 **********************************************************************************/

SELECT DISTINCT city FROM station WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') OR RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');



/**********************************************************************************
 *-------------------------Weather Observation Station 12-------------------------*
 * Query the list of CITY names from STATION that do not start with vowels and do *
 * not end with vowels. Your result cannot contain duplicates.                    *
 **********************************************************************************/

SELECT DISTINCT city FROM station WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');




/********************************************************************************
 *---------------------------Higher Than 75 Marks-------------------------------*
 * Query the Name of any student in STUDENTS who scored higher than 75 Marks.   *
 * Order your output by the last three characters of each name. If two or more  *
 * students both have names ending in the same last three characters            *
 * (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.             *
 ********************************************************************************/

SELECT name FROM students WHERE marks > 75 ORDER BY RIGHT(name, 3) ASC, id ASC;




/*********************************************************************************
 *-------------------------------Employee Names----------------------------------*
 * Write a query that prints a list of employee names (i.e.: the name attribute) *
 * from the Employee table in alphabetical order.                                *
 *********************************************************************************/

SELECT name FROM employee ORDER BY name ASC;



/**********************************************************************************
 *--------------------------------Employee Salaries-------------------------------*
 * Write a query that prints a list of employee names (i.e.: the name attribute)  *
 * for employees in Employee having a salary greater than $2000 per month who have*
 * been employees for less than 10 months. Sort your result by ascending          *
 * employee_id.                                                                   *
 **********************************************************************************/

SELECT name FROM employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id ASC;
