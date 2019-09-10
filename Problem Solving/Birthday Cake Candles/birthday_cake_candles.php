<?php
/**
 * -----------------Birthday Cake Candles----------------
 * https://www.hackerrank.com/challenges/birthday-cake-candles/problem
 * 
 * You are in charge of the cake for your niece's birthday and have
 * decided the cake will have one candle for each year of her total age.
 * When she blows out the candles, she’ll only be able to blow out the
 * tallest ones. Your task is to find out how many candles she can
 * successfully blow out.
 */

function birthdayCakeCandles($ar) {
    sort($ar);
    $candle = $ar[Sizeof($ar) -1];
    
    return array_count_values($ar)[$candle];
}