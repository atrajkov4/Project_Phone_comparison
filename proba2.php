<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();

$tipk = "Select model,upvote,downvote from mobiteli";
$n = $bp->select($tipk);
$polje = array();

while($m = mysqli_fetch_assoc($n)){
    $polje[] = $m;
}
echo json_encode($polje);
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

