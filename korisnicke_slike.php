<?php

        require 'baza.class.php';
        $bp = new baza();
        $bp->connect();
        
        
        $polje = array();
        
        $qu = "Select * from korisnicke_slike";
        $upit = $bp->select($qu);
        
        while($n = mysqli_fetch_assoc($upit)){
               $polje[]=$n;
                       }
        echo json_encode($polje);
          
          
        
       

