<?php
session_start();

require 'baza.class.php';
$bp = new baza();
$bp->connect();
$korisnik = $_SESSION["korisnik"];

$n = "Select * from prijedlozi where korisnik='".$korisnik."'";
$r = $bp->select($n);
$polje = array();
while($rezultat = mysqli_fetch_assoc($r)){
    $polje[] = $rezultat;
}
echo json_encode($polje);
