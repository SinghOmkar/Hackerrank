/**********************************************************************************
 *-----------------------------Type of Triangle-----------------------------------*
 * Write a query identifying the type of each record in the TRIANGLES table using *
 * its three side lengths. Output one of the following statements for each record *
 * in the table:                                                                  *
 * Equilateral: It's a triangle with 3 sides of equal length.                     *
 * Isosceles: It's a triangle with 2 sides of equal length.                       *
 * Scalene: It's a triangle with 3 sides of differing lengths.                    *
 * Not A Triangle: The given values of A, B, and C don't form a triangle.         *
 **********************************************************************************/
 
SELECT
     CASE
         WHEN (A + B) <= C OR (A + C) <= B OR (B + C) <= A THEN "Not A Triangle"
         WHEN A = B AND A = C THEN "Equilateral"
         WHEN A = B OR B = C OR C = A  THEN "Isosceles"
         WHEN A != B AND A != C AND B != C THEN "Scalene"
    END AS triangle
FROM triangles;


/*********************************************************************************
*--------------------------------The PADS----------------------------------------*
* Generate the following two result sets:                                        *
* Query an alphabetically ordered list of all names in OCCUPATIONS, immediately  *
* followed by the first letter of each profession as a parenthetical (i.e.:      *
* enclosed in parentheses). For example: AnActorName(A), ADoctorName(D),         *
* AProfessorName(P), and ASingerName(S).                                         *
* Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the     *
* occurrences in ascending order, and output them in the following format:       * 
* There are a total of [occupation_count] [occupation]s.                         *
**********************************************************************************/
SELECT
    CONCAT(
        name,
        '(',
        LEFT(occupation, 1),
        ')'
    )
FROM occupations ORDER BY name ASC;

SELECT
    CONCAT(
        'There are a total of ',
        count(*),
        ' ',
        LOWER(occupation),
        's.'
    ) AS total
FROM occupations
GROUP BY occupation
ORDER BY total ASC, occupation ASC;


/***********************************************************************************
 *_________________________Binary Tree Nodes_______________________________________*
 * Write a query to find the node type of Binary Tree ordered by the value of the  *
 * node. Output one of the following for each node:                                *
 * Root: If node is root node.                                                     *
 * Leaf: If node is leaf node.                                                     *
 * Inner: If node is neither root nor leaf node.                                   *
************************************************************************************/
SELECT
    DISTINCT n,
    IF(
        p IS NULL,
        'Root',
        IF(
            n NOT IN (
                SELECT DISTINCT p FROM bst WHERE p != (
                SELECT n FROM bst WHERE p IS NULL
            )),
            'Leaf',
            'Inner'
        )
    )
FROM bst ORDER BY n;



/***********************************************************************************
 *____________________________New Companies________________________________________*
 * Given the table schemas below, write a query to print the company_code, founder *
 * name, total number of lead managers, total number of senior managers, total     *
 * number of managers, and total number of employees. Order your output by         *
 * ascending company_code.                                                         *
 ***********************************************************************************/
SELECT 
    cmp.company_code,
    cmp.founder,
    emp.l_mngr,
    emp.s_mngr,
    emp.mngr,
    emp.emps
FROM
    (SELECT 
        DISTINCT company_code,
        COUNT(DISTINCT employee_code) AS emps,
        COUNT(DISTINCT manager_code) AS mngr,
        COUNT(DISTINCT senior_manager_code) AS s_mngr,
        COUNT(DISTINCT lead_manager_code) AS l_mngr
    FROM
        employee
    GROUP BY company_code) AS emp,
    company AS cmp
WHERE
    cmp.company_code = emp.company_code
ORDER BY cmp.company_code;