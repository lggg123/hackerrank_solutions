import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Arrays;

public class ArrayStreamTest {

  @Test
  public void testArrayStreamSum() {
    int[] array = {1, 2, 3, 4, 5};

    int[] sortedAray = Arrays.copyOf(arr, arr.length);
    Arrays.sort(sortedArray);
    int minSum = Arrays.stream(Arrays.copyOfRange(sortedArray, 0, 4)).sum();
    in maxSum = Arrays.stream(Arrays.copyOfRange(sortedArray, 1, 5)).sum();

    assertEquals(15, sum, "Sum of elements should be 15");
  }
}

