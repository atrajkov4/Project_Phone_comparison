<?php
require 'baza.class.php';
$bp = new baza();
$bp->connect();
if(isset($_POST["sub1"])){
    $korime= $_POST["korime"];
    $email=$_POST["email"];
    $q = "Select count(*) from osoba where korime='".$korime."' and email='".$email."'";        
     $rez = $bp->select($q);
     $akk = $rez->fetch_array();
     
     $s = 'Select time from vvrijeme where id=1';
        $v = $bp->select($s);
        $n = $v->fetch_array();                         //NAMJESTANJE VIRTUALNOG VREMENA
        $mici=strtotime("+".$n["time"]." Hours"); 
        $dat= date("Y-m-d H:i:s",$mici); 
        
     if($akk["count(*)"]==1){                   //JEL KORISNIK POSTOJI
         
         $character= 'abcdefghijklmnopqrstuvwxyz0123456789';
        $pwd = '';
        for($i=0;$i<9;$i++){
            $pwd .= $character[rand(0,strlen($character)-1)];               //GENERIRANJE ŠIFRE
            
        }  
        $np = "Update osoba set lozinka='".$pwd."' where korime='".$korime."'";
        if($bp->update($np)){
            
            $log = 'Insert into dnevnik values(default,"'.$korime.'","Promjena lozinke","'.$dat.'")';
                    $bp->update($log);
                    
         $mail_to = $email;                                         //MAILAMO KORISNIKU DA IMA NOVU ŠIFRU
                     $mail_from="From: Admin";
                     $mail_subject = "Recover passworda";
                     $mail_body = "Postovani $korime ,\n\n Zatrazili ste novu lozinku."
                             . " Kako bi aktivirali svoj racun, unesite sljedecu lozinku prilikom prijave: \n\n"
                             . $pwd;
                             
                     mail($mail_to, $mail_subject, $mail_body, $mail_from);
                     echo "Poslan je mail sa novom sifrom!";
        }
        
        
     }
     else{
         echo "Nepostojeci racun!";
     }



}