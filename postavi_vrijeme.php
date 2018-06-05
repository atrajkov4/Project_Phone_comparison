<?php
$xml = simplexml_load_file("http://barka.foi.hr/WebDiP/pomak_vremena/pomak.php?format=xml") or die("Error : Fail brate");
$sati = $xml->vrijeme->pomak->brojSati;
 require 'baza.class.php';
 $bp = new baza();                                              //SlaŽEM VRIJEME, UZMEM POMAK SATI I STAVIM GA U BAZU, ONDA PROČITAM IZ BAZE, STRTOIME I DODAM NA TRENUTNO
 $bp->connect();
 $sistemsko = "update vvrijeme set time=$sati where id=1";
 $bp->update($sistemsko);
 
                            $s = 'Select time from vvrijeme where id=1';
                            $v = $bp->select($s);
                            $n = $v->fetch_array();                         //NAMJESTANJE VIRTUALNOG VREMENA
                            $mici=strtotime("+".$n["time"]." Hours"); 
                            $dat= date("Y-m-d H:i:s",$mici); 
                            
                            $log = 'Insert into dnevnik values(default,"Update","'.$s.'","'.$dat.'")';
                            $bp->update($log);
                            
 $bp->close();
header("Location:postavke.php");
  
?>