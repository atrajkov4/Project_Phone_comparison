<?php

        require 'baza.class.php';
        $bp = new baza();
        $bp->connect();
        
        
        $polje = array();
        
        $qu = "Select model,slike from mobiteli";
        $upit = $bp->select($qu);
        
        while($n = mysqli_fetch_assoc($upit)){
            if($n["slike"]){
                $polje[]=$n;
                
        }}
        echo json_encode($polje);
          
          
        
       

