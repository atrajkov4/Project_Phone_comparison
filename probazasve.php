<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();

$korime ="aletrajkoO!?";
$lozinka="lozinkaA!";

$query = "Select korime,lozinka from osoba where korime='".$korime."' and lozinka = '".$lozinka."'";
$result = $bp->select($query);
$rows = array();
        while($r = mysqli_fetch_assoc($result)){
            $rows[]=$r;
        }
echo json_encode($rows);