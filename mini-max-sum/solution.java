import java.util.arrays

public class MinMax {
  public static void minmax(String[] args) {
   int[] arr = {1,2,3,4,5,6};

   int[] minSumArray = Arrays.copyofRange(arr, 0, 4);
   int[] maxSumArray = Arrays.copyofRange(arr, 1, 5);

   System.out.println(Arrays.toString(minsumArray);
   System.out.println(Arrays.toString(maxsumArray);

   int minimumSum = Arrays.stream(minSumArray).sum();
   int maximumSum = Arrays.stream(maxSumArray).sum();

   System.out.println(minimumSum);
   System.out.println(maximumSum);
}
