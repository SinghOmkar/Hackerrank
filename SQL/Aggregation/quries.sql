/***********************************************************************************
 *____________________Revising Aggregations - The Count Function___________________*
 * Query a count of the number of cities in CITY having a Population larger than.  *
 ***********************************************************************************/

SELECT COUNT(name) FROM city WHERE population > 100000;