<?php
/*********************************************************************
 *                          Grading Students                         *
 *********************************************************************
 * https://www.hackerrank.com/challenges/grading/problem             *
 *********************************************************************/

function gradingStudents($grades) {
    $new_grades = [];
    foreach($grades as $grade)
    {
        if($grade >= 38)
        {    
            $nxt_multi = (int)($grade/5);
            $nxt_multi = ($nxt_multi + 1) * 5;
            $new_grades[] = ($nxt_multi - $grade) < 3?$nxt_multi:$grade;
        }
        else{ $new_grades[] = $grade; }
    }
    return $new_grades;
}
