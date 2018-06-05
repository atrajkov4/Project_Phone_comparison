<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();

if(isset($_POST["aktiv"])){
     
     $akt = $_POST["aktivacijski"];
     
     $kontrola = 'select aktivan from osoba where aktivacijski="'.$akt.'"';
     $pate=$bp->select($kontrola);
     $pate2 = $pate->fetch_array();
     if($pate2["aktivan"]==1){
         header("Location:aktiv_ok.php");
        exit();                                 //UKOLIKO KORISNIK VEC AKTIVAN, PRONALAZENJE KORISNIKA PO JEDNOZNACNOM KODU
     }
     
     
     $q= 'Update osoba set aktivan=1 where aktivacijski="'.$akt.'"';  //Slazem upit u string za update
     
     $log = 'Insert into dnevnik values(default,"Update","'.$q.'","'.$dat.'")';
                    $bp->update($log);
                    
     $r= 'Select vr from osoba where aktivacijski="'.$akt.'"';
     $rez = $bp->select($r);
     
     
     $da = $rez->fetch_array();
     
     $dat1 = date_create($da["vr"]);            //VRIJEME REGISTRACIJE DODAJEM U DATUM
     
    $s = 'Select time from vvrijeme where id=1';
    $v = $bp->select($s);
    $n = $v->fetch_array();
    $mici=strtotime("+".$n["time"]." Hours"); 
    
    $dat= date("Y-m-d H:i:s",$mici);  
    
    $dat2 = date_create($dat);           //POMAK VREMENA I STVARANJE DATUMA ZA DATE_DIFF
    $log = 'Insert into dnevnik values(default,"Dohvacanje vremena","'.$s.'","'.$dat.'")';
                    $bp->update($log);
    
    $diff=date_diff($dat1,$dat2);
    $test = $diff->format("%m%d%h");
    
    
    if($test<12){       //JEL PROŠLO 12 SATI OD REGISTRACIJE DO AKTIVACIJE
        
        if($bp->update($q)){                        //Aktiviram korisnika ukoliko je sve u redu sa uvjetima
            
            header('Location:index.php');
        }
        else {
             //Pogreska u aktiviranju
            header('Location:aktivacija.php');
        }
        
    }
    else {
        echo $pate2["aktivan"];                     //PROŠLO 12 SATI OD REG
        header ("Location:tekje12sati.php");
    }
 
}

?>

