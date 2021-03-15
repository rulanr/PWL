<?php
$hasil = 0;

if(isset($_POST['angka1']) && isset($_POST['angka2']) && isset($_POST['operator'])){

	$angka1 = $_POST['angka1'];
	$angka2 = $_POST['angka2'];
	$operator = $_POST['operator'];

	if ($operator == 'tambah') {
		$hasil = $angka1 + $angka2;
	}elseif ($operator == 'kurang') {
		$hasil = $angka1 - $angka2;
	}elseif ($operator == 'kali') {
		$hasil = $angka1 * $angka2;
	}elseif ($operator == 'bagi') {
		$hasil = $angka1 / $angka2;
	}
}

?>

<h1>KALKULATOR</h1>
<form method="post">
	<span>Ang 1 : </span>
	<input type="text" name="angka1" required>
	</br>
	</br>
	<span>Ang 2 : </span>
	<input type="text" name="angka2" required>
	</br>
	</br>
	<span>Hasil   : </span>
	<input type="text" value="<?php echo($hasil); ?>" readonly>
	</br>
	</br>
	<span>operator</span>
	<select name="operator" required>
		<option value="tambah">+ (tambah)</option>
		<option value="kurang">- (kurang)</option>
		<option value="kali">* (kali)</option>
		<option value="bagi">/ (bagi)</option>
	</select>
	<button type="submit">=</button>
</form> 
