<?php

require 'baza.class.php';

    $bp = new baza();
    $bp->connect();
    
    $query="select * from mobiteli order by model desc;";
    $rez = $bp->select($query);
    $rows = array();
    while($r = mysqli_fetch_assoc($rez)){
        $rows[] = $r;
    }
    echo json_encode($rows);



                            $s = 'Select time from vvrijeme where id=1';
                            $v = $bp->select($s);
                            $n = $v->fetch_array();                         //NAMJESTANJE VIRTUALNOG VREMENA
                            $mici=strtotime("+".$n["time"]." Hours"); 
                            $dat= date("Y-m-d H:i:s",$mici); 
                            
                            $log = 'Insert into dnevnik values(default,"Select DESC","'.$query.'","'.$dat.'")';
                            $bp->update($log);
  
 