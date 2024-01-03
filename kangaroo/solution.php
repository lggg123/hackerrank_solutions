<?php
public function kangaroo(x1,v1,x2,v2) {
  if (v2 < v1) && (x2 - x1) % (v2 - v1) == 0 {
    return "TRUE"
  } else {
    return "FALSE"
  }
}

$result = kangaroo(0, 3, 5, 2)
echo $result;
?>
