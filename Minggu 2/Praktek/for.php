<?php
for ($i = 1; $i <= 10; $i++) {
echo "$i ";
}
echo "<br><br>";
for ($i = 1; ; $i++) {
if ($i > 20) {
break;
}
echo "$i ";
}
echo "<br><br>";
$i = 1;
for (; ; ) {
if ($i > 30) {
break;
}
echo "$i ";
$i++;
} echo "<br><br>";
for ($i = 1; $i <= 40; print "$i ", $i++);
?>