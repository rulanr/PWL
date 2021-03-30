<?php
$arrNilai = array ("Fitri" => 80, "Ai" => 90, "Siti" => 75,
"Bondan" => 85);
echo "<b>Array sebelum pengurutan</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>";
asort($arrNilai);
reset($arrNilai);
echo "<b>Array setelah pengurutan dengan asort()</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>";
arsort($arrNilai);
reset($arrNilai);
echo "<b>Array setelah pengurutan dengan arsort()</b>";
echo "<pre>";
print_r($arrNilai);
echo "</pre>"; 
?>