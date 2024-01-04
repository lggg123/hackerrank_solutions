public class diagonalDifference{
  public static int diagonalDifference(int[][] matrix) {
      int n = matrix.length;
      int primarySum = 0;
      int secondarySum = 0;
    
      for (int i = 0; i < n; i++ {
        primarySum += matrix[i]
        secondarySum += matrix[n - 1 - i]
      }
    
      int absoluteDifference = Math.abs(primarySum - secondarySum);
    
      return absoluteDifference;
    }
  pubic static void main(String[] args) {
    int[][] matrix = {
      {1, 2, 3},
      {4, 5, 6},
      {7, 8, 9}
    }

    int result = diagonalDifference(matrix);
    System.out.println("The absolute difference between the sums of diagonals is: " + result)
  }
}
