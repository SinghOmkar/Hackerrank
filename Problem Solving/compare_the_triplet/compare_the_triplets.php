<?php
/**
 * ---------------Compare the triplet------------------
 * https://www.hackerrank.com/challenges/compare-the-triplets/problem
 * 
 * Alice and Bob each created one problem for HackerRank.
 * A reviewer rates the two challenges, awarding points on a scale from
 * 1 to 100 for three categories: problem clarity, originality,
 * and difficulty.
 * We define the rating for Alice's challenge to be the triplet
 *  a = (a[0], a[1], a[2]),
 * and the rating for Bob's challenge to be the triplet
 *  b = (b[0], b[1], b[2]).
 * Your task is to find their comparison points by comparing a[0] with b[0,
 * a[1] with b[1, and a[2] with b[2].
 * If a[i] > b[i], then Alice is awarded  point.
 * If b[i] > a[i], then Bob is awarded  point.
 * If a[i] = b[i], then neither person receives a point.
 * Comparison points is the total points a person earned.
 * Given a and b, determine their respective comparison points.
 * 
 * Function Description
 * Complete the function compareTriplets in the editor below. It must return an array of two integers, the first being Alice's score and the second being Bob's.
 * compareTriplets has the following parameter(s):
 * a: an array of integers representing Alice's challenge rating
 * b: an array of integers representing Bob's challenge rating
 */

function compareTriplets($a, $b) {
    $a_score = 0;
    $b_score = 0;

    for($i = 0; $i < sizeof($a); $i++){
        
        if($a[$i] > $b[$i]){
            $a_score++;
        }
        elseif($b[$i] > $a[$i]){
            $b_score++;
        }
    }

    return array($a_score, $b_score);

}