<?php
// Contoh 1
$Hewan = "Singa,Paus,Buaya,Merpati";
$Hewann = explode(" ", $buah);
echo $Hewann[0]."<br>"; // Singa
echo $Hewann[3]."<br>"; // Paus
// Contoh 2
$data = "foo:*:1023:1000::/home/foo:/bin/sh";
list($user, $pass, $uid, $gid, $gecos, $home, $shell) =
explode(":", $data);
echo $user."<br>"; // foo
echo $pass; // *
?>