<?php

/**
 * ----------------Mini Max Sum------------------------
 * https://www.hackerrank.com/challenges/mini-max-sum/problem
 * 
 * Given five positive integers, find the minimum and maximum values
 * that can be calculated by summing exactly four of the five integers.
 * Then print the respective minimum and maximum values as a single line
 * of two space-separated long integers.
 */

function miniMaxSum($arr) {

    sort($arr);
    $arr_sum = array_sum($arr);
    $min_sum = $arr_sum - $arr[4];
    $max_sum = $arr_sum - $arr[0];
    
    echo "$min_sum $max_sum";
}
