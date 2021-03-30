<?php
$arrNilai = array ("Fitri" => 80, "Ai" => 90, "Siti" => 75,
"Bondan" => 85);
echo "<b>Array sebelum pengurutan</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>";
ksort($arrNilai);
reset($arrNilai);
echo "<b>Array setelah pengurutan dengan ksort()</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>";
krsort($arrNilai);
reset($arrNilai);
echo "<b>Array setelah pengurutan dengan krsort()</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>"; ?>
