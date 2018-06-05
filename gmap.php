<?php
session_start();
?>
<!DOCTYPE html>

<html>
    <head>
        <title>Usporedba Mobitela</title>
        <meta charset="UTF-8">
        <meta title="Projekt">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href ="aletrajko.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script  src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"  ></script>
        <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/googlemaps/v3-utility-library/master/infobox/src/infobox.js"></script>
        
    </head>
    <body >
        <header>
             <div style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-46vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="index.php"><img src="img/Icon-home.png" height="1%" width="2%"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" width="2%"></a>
               <?php
           
            if(isset($_SESSION["korisnik"])){
            echo '<a href="bs.php"><img src="img/logout_gold.png" width="2%"></a>&nbsp;';
            }
            else {
            echo '<a href="aktivacija.php"><img src="img/activate.png" width="2%"></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" width="2%" ></a><a href="prijava.php"><img src="img/login-w-icon.png" height="1%" width="2%"></a><img src="img/logout-512.png" height="1%" width="2%">&nbsp;'; 
            }
                    ?>
             
           </div><br>
           <h1 style="font-size:2.7vw;font-family:'PT Sans';"><b>Usporedba mobitela™</b></h1>
           <h2 style="font-size:1.8vw">Pregled lokacija trgovina</h2>
            
            </header>
        
        
            
        <div class="sadrzaj" style="margin-top:6%">
           
            <div id="map_div">
            <div id="googleMap" ></div>
        </div>
            <script type="text/javascript" src="gmaps.js"></script> 
            
            
            
            
            
            
       
     
    
    </body>
    
    
</html>