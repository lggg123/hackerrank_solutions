use PHPUnit\Framework\TestCase;

class MinMaxTest extends TestCase {
  public function testMinMax() {
    $arr = [1, 4, 6, 8, 10];
    $this->expectedOutputString('19 28');

    $minmaxCalculator = new YourClass();
    $minmaxCalculator->minmax($arr);
  }
}
