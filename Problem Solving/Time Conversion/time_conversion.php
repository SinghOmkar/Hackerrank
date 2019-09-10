<?php

/**
 * ****************************************************************
 *                       Time Conversion                
 * ****************************************************************
 * https://www.hackerrank.com/challenges/time-conversion/problem  *
 * ****************************************************************
 * Given a time in -hour AM/PM format, convert it to military     *
 * (24-hour) time.                                                *
 *                                                                *
 * Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00  *
 * on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and *
 * 12:00:00 on a 24-hour clock.                                   *
 * ****************************************************************
 */

function timeConversion($s) {

    return date("H:i:s", strtotime($s));
    
}
