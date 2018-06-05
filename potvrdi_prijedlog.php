<?php
session_start();
$id = $_POST["id_prijedloga"];
require 'baza.class.php';
$bp = new baza();
$bp->connect();
$q = "Select count(*) from prijedlozi where id=$id";            //JEL POSTOJI PRIJEDLOG
$n=$bp->select($q);
$m = mysqli_fetch_assoc($n);
$m2 = $m["count(*)"];

if($m2==0) {                                                // AKO NE POSTOJI PRIJEDLOG
    echo "Prijedlog ne postoji!";
}
else {
    $q1 = "Update prijedlozi set odobren=1 where id=$id";                   //UPDATEAJ ODGOVARAJUĆI PRIJEDLOG
    
    if($r = $bp->update($q1)){
        $slct = "Select email from osoba where korime='".$_SESSION["korisnik"]."'";             //NA KOJI MAIL ŠALJEM PRIHVAĆANJE
        $tr = $bp->select($slct);
        $tr2 = mysqli_fetch_assoc($tr);
        $email = $tr2["email"];
        
        
        $mail_to = $email;
                     $mail_from="From: Moderator";
                     $mail_subject = "Prihvaćanje prijedloga";
                     $mail_body = "Poštovani  ,\n\n vaš prijedlog sa šifrom $id je prihvaćen.\n"
                             . " Ukoliko niste primili ovaj mail za ostale prijedloge, oni su odbijeni.";
                             
                     mail($mail_to, $mail_subject, $mail_body, $mail_from);
                     
    }
    
    $target = "Select prijedlog from prijedlozi where id=$id";                  //UBACIVANJE TOG PRIJEDLOGA DIREKTNO U MOBITELE
    $t2 = $bp->select($target);
    $t3 = mysqli_fetch_assoc($t2);
    $target2 = $t3["prijedlog"];
    $bp->update($target2);
    header("Location:index.php");
}
