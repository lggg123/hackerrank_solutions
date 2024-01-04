<?php

public function diagonalDifference($matrix) {
  $n = count($matrix)
  $primary_sum = 0
  $secondary_sum = 0

  // Iterate through the matrix
  for ($i = 0; $i < $n; $i++){
    $primarySum += $matrix[i][i];
    $secondarySum += $matrix[$i][$n - 1 - $i]
  }

  // Calculate the absolute difference between the sums
  $absoluteDifference = [$primarySum - $secondarySum];
  return $absoluteDifference;
}

$matrix = [
  [0,1,2]
  [3,4,5]
  [6,7,8]
]
  
$result = diagonalDifference($matrix);
echo $result;
?>

/*
Let's break down the components:

$i: This variable represents the current index of the loop as it iterates over the rows of the matrix.

$n: This variable holds the size of the square matrix, which is the number of rows (or columns) in the matrix.

Now, consider the secondary diagonal of a square matrix. In a 3x3 matrix, for example, the indices of the elements along the secondary diagonal are (0,2), (1,1), and (2,0). Similarly, for a 4x4 matrix, the indices are (0,3), (1,2), (2,1), and (3,0).

The expression $n - 1 - $i is used to calculate the column index for accessing elements along the secondary diagonal. Let's break it down:

$n - 1: This part ensures that we get the index of the last column in the matrix.

$i: This part adjusts the column index based on the current row index. As we iterate through the rows, the column index decreases.

So, the expression $n - 1 - $i calculates the appropriate column index for accessing elements along the secondary diagonal, ensuring that we traverse the diagonal in the opposite direction compared to the primary diagonal.
*/
