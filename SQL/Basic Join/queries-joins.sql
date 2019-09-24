/***********************************************************************************
 *______________________________Asian Population___________________________________*
 * https://www.hackerrank.com/challenges/asian-population/problem                  *
 *---------------------------------------------------------------------------------*
 * Given the CITY and COUNTRY tables, query the sum of the populations of all      * 
 * cities where the CONTINENT is 'Asia'.                                           *
 * Note: CITY.CountryCode and COUNTRY.Code are matching key columns.               *
 ***********************************************************************************/ 
SELECT 
    SUM(population)
FROM
    city
INNER JOIN
    (
        SELECT 
            code
        FROM
            country
        WHERE
            continent = 'Asia'
    ) country
ON country.code = city.countrycode;


/***********************************************************************************
 *________________________________African Cities___________________________________*
 * https://www.hackerrank.com/challenges/african-cities/problem                    *
 *---------------------------------------------------------------------------------*
 * Given the CITY and COUNTRY tables, query the names of all cities where the      *
 * CONTINENT is 'Africa'.                                                          *
 * Note: CITY.CountryCode and COUNTRY.Code are matching key columns.               *
 ***********************************************************************************/
SELECT 
    city.name
FROM
    city,
    (SELECT 
        code
    FROM
        country
    WHERE
        continent = 'Africa') country
WHERE
    city.countrycode = country.code;