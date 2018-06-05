<?php
require 'baza.class.php';

if(isset( $_REQUEST["upvote"])){
$gt = $_REQUEST["upvote"];
        $bp = new baza();
        $bp->connect();
        
        
        $q = "select upvote from brandovi where id=".$gt;
        $query = $bp->select($q);
        $rezultat = mysqli_fetch_assoc($query);
        $povrat = "update brandovi set upvote=".($rezultat["upvote"]+1)." where id=".$gt;
        $bp->update($povrat);
        
};

if(isset($_REQUEST["downvote"])){
        $dv = $_REQUEST["downvote"];
        $bp = new baza();
        $bp->connect();

        $q = "select downvote from brandovi where id=".$dv;
        $query = $bp->select($q);
        $rezultat = mysqli_fetch_assoc($query);
        $povrat = "update brandovi set downvote=".($rezultat["downvote"]+1)." where id=".$dv;
        $bp->update($povrat);
        
}


