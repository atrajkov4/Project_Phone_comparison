<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();
$url = $_POST["URL"];
$tag = $_POST["tag"];
$insert = "Insert into korisnicke_slike values(default,'".$url."','".$tag."')";
$bp->update($insert);
header("Location:Galerija.php");
