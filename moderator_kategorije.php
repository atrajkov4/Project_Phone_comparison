<?php
session_start();
  require 'baza.class.php';
        $bp = new baza();
        $bp->connect();
        $t = "Select * from mod_brand where moderator='".$_SESSION["korisnik"]."'";         //DOHVACANJE SVIH MODERATORA S ODGOVARAJUĆIM KATEGORIJAMA
        $t2 = $bp->select($t);
        $t4 = mysqli_fetch_assoc($t2);
           
        
        $qu = "Select * from prijedlozi"; 
        $upit = $bp->select($qu);
        
        $polje = array();
        while($n = mysqli_fetch_assoc($upit)){
            if($t4["id_brand"]==$n["kategorija"]){              //ISTI QUERY $QU SAMO S UVJETOM DA VIDI SVOJU KATEGORIJU
                $polje[]=$n;
            }
        }
        echo json_encode($polje);