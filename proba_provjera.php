<?php 
                require 'baza.class.php';
                $bp = new baza();
                $bp->connect();
               
                $polje=array();
                
               
                    $korime = $_GET["korime"];                                                                      //Provjera postojanja korisnickog imena!!
                    $query ="select count(*) as broj from osoba where korime ='$korime';";
                    $rezultat = $bp->select($query);
                   while($rez = $rezultat->fetch_array()) {
                        $polje[] = $rez;
                      }
                      
                    print json_encode($polje);
                
                    $s = 'Select time from vvrijeme where id=1';
                            $v = $bp->select($s);
                            $n = $v->fetch_array();                         //NAMJESTANJE VIRTUALNOG VREMENA
                            $mici=strtotime("+".$n["time"]." Hours"); 
                            $dat= date("Y-m-d H:i:s",$mici); 
                            
                            $log = 'Insert into dnevnik values(default,"'.$korime.'","'.$query.'","'.$dat.'")';
                            $bp->update($log);
                ?>