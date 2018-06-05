<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();

$p = $_GET["id"];

       
$q = "select upvote from mobiteli where id=".$p;
        $query = $bp->select($q);
        $rezultat = mysqli_fetch_assoc($query);
        $povrat = "update mobiteli set upvote=".($rezultat["upvote"]+1)." where id=".$p;
        $bp->update($povrat);
