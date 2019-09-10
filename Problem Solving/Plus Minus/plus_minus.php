<?php
/**
 * -----------------Plus Minus----------------
 * https://www.hackerrank.com/challenges/plus-minus/problem
 * 
 * Given an array of integers, calculate the fractions of its elements
 * that are positive, negative, and are zeros. Print the decimal value
 * of each fraction on a new line.
 */

function plusMinus($arr) {
    $arr_size = sizeof($arr);
    $pos = 0;
    $neg = 0;
    $zero = 0;

    foreach($arr as $v){
        if($v > 0) $pos++;
        elseif($v < 0) $neg++;
        else $zero++;
    }

    echo number_format($pos/$arr_size, 6).PHP_EOL;
    echo number_format($neg/$arr_size, 6).PHP_EOL;
    echo number_format($zero/$arr_size, 6).PHP_EOL;

}
