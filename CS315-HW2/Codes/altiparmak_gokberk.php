<?php
// Conditional exit
for ($i = 0; $i <= 3; $i++) {
  echo "*";
}
echo "\n";

// Unconditional exit(break)
$x = 3;
for (;;) {
  echo "*"."\n";
  if ($x == 3)
    break;
}

// Unconditional exit(continue)
for (;;) {
  $x++;
  if($x < 10) {
      continue;
  }
  echo "*******";
  break;
}

// Enclosed loops exit
for ($i = 0; $i < 3; $i++) {
  for ($j = 0; $j < 2; $j++) {
    if ($i == 1) {
        break;
    }
    echo "j = $j\n";
  }
  echo "i = $i\n";
}

?>