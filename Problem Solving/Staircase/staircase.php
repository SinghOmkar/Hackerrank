<?php
/**
 * -----------------Staircase-----------------------
 * https://www.hackerrank.com/challenges/staircase/problem
 * 
 * Consider a staircase of size : n=4
 *    #
 *   ##
 *  ###
 * ####
 * Write a program that prints a staircase of size n.
 */
function staircase($n) {
    for($i = 1; $i <= $n; $i++){
        $j = $n - $i;
        $k = $n - $j;
        for(;$j > 0; $j--){
            echo ' ';
        }
        
        for(;$k > 0; $k--){
            echo '#';
        }
        echo PHP_EOL;
    }

}
