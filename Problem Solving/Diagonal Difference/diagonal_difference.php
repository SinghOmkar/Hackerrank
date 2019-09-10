<?php
/**
 * -----------------Diagonal difference--------------------
 * https://www.hackerrank.com/challenges/diagonal-difference/problem
 * 
 * Given a square matrix, calculate the absolute difference between
 * the sums of its diagonals.
 */
function diagonalDifference($arr) {
    $digo = sizeof($arr);
    $pd_sum = 0;
    $sd_sum = 0;
    $i = 0;
    for($j=0; $j<$digo; $j++){
        $pd_sum += $arr[$i++][$j];
        $sd_sum += $arr[$digo - $i][$j];
    }

    return abs($pd_sum - $sd_sum);
}