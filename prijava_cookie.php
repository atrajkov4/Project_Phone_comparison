<?php
session_start();
require 'baza.class.php';

$bp = new baza();
$bp->connect();
  $s = 'Select time from vvrijeme where id=1';
    $v = $bp->select($s);
    $n = $v->fetch_array();
    $mici=strtotime("+".$n["time"]." Hours");                                           //PROVJERE
    
    $dat= date("Y-m-d H:i:s",$mici);  
    


 if(isset($_POST["sub1"])){
        
     $korime=$_POST["korime"];
     $lozinka = $_POST["lozinka"];
     
     $quer = "select pobr from osoba where korime ='".$korime."'";
        $st=$bp->select($quer);
        $ij = $st->fetch_array();
        if($ij["pobr"] <3){                 //JEL ZAKLJUČAN, TJ JEL FULAO 3 PUTA
            
     $q = "Select count(*) from osoba where korime='".$korime."' and lozinka='".$lozinka."' and aktivan=1";        
     $rez = $bp->select($q);
     $akk = $rez->fetch_array();
     
     if($akk["count(*)"]>0){                 //Korisnik postoji, prolaz!
         $_SESSION["korisnik"]=$korime;
         $tipk = "Select tip from osoba where korime='".$korime."'";
         $n = $bp->select($tipk);
         $m = mysqli_fetch_assoc($n);
         $_SESSION["tip"]=$m["tip"];
         echo $_SESSION["tip"];
         $vrijedi_do=time()+200;
         $p0 = "update osoba set pobr=0 where korime='".$korime."'";
         $bp->update($p0);
         
         $log = 'Insert into dnevnik values(default,"'.$korime.'","Uspješna prijava","'.$dat.'")';
                    $bp->update($log);
         
        if(isset($_POST["zm"])){
            setcookie("projekt",$korime,$vrijedi_do);
        }
            header("Location:https://barka.foi.hr/WebDiP/2015_projekti/WebDiP2015x086/index.php");                  //Prebacivanje na https
         
     }
     else {
         echo "Pogresna lozinka ili Nepostojeci korisnik!";
         $dja = 1+$ij["pobr"];
         $err = "update osoba set pobr=$dja where korime='".$korime."'";
         $bp->update($err);
         
         $log = 'Insert into dnevnik values(default,"'.$korime.'","Neuspješna prijava","'.$dat.'")';
                    $bp->update($log);
     }
     
        }
       
        else {
            $log = 'Insert into dnevnik values(default,"'.$korime.'","Zakljucan racun","'.$dat.'")';
                    $bp->update($log);
                    
            
            echo "Racun vam je blokiran radi 3 neuspjesna uzastopna pokusaja prijave. Obratite se adminu za pomoc.";
        }
      
      
      }
 
 

$bp->close();
?>