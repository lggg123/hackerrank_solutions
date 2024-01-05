<?php

public function minmax($arr) {
  sort($arr)
  $minsum = array_slice($arr, 0, 4)
  $maxsum = array_slice($arr, 1, 5)
  $minimum_sum = array_sum($minsum)
  $maximum_sum = array_sum($maxsum)
  echo $minimum_sum, "", $maximum_sum;
}

$arr = [1, 4, 6, 8, 10];
minmax($arr);
