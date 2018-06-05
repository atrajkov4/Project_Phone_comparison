<?php
session_start();

require 'baza.class.php';
$bp = new baza();
$bp->connect();
$korisnik = $_SESSION["korisnik"];

$brand = $_POST["brand"];
$model= $_POST["model"];
$vel_ekrana= $_POST["vel_ekrana"];
$baterija= $_POST["baterija"];
$Prednja_kamera= $_POST["Prednja_kamera"];
$procesor= $_POST["procesor"];
$memorija= $_POST["memorija"];
$RAM= $_POST["RAM"];
$kamera= $_POST["kamera"];

$q1 = 'Insert into mobiteli values (default,"'.$model.'",'.$vel_ekrana.','.$baterija.',"'.$Prednja_kamera.'",'.$procesor.','.$memorija.','.$RAM.','.$kamera.','.$brand.',0,0,0)';
$query = "Insert into prijedlozi values (default,'$korisnik','$q1',$brand,0)";

if($bp->update($query)){                 //UBACIVANJE PRIJEDLOGA U BAZU PRIJEDLOGA
    header("Location:index.php");
}
else {
    echo "Error 420 Method Failure ";              

}