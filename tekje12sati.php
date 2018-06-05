<?php
session_start();
?>
<!DOCTYPE html>

<html>
    <head>
        <title>:(</title>
        <meta charset="UTF-8">
        <meta title="Projekt">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href ="aletrajko.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="aletrajko.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <link rel="stylesheet" href="print.css" type="text/css">
        
        
       
        
        
    </head>
   
        <header style="overflow-x: hidden;">
             <div style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-46vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="index.php"><img src="img/Icon-home.png" height="1%" width="2%"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" width="2%"></a>&nbsp;
               <?php
           
            if(isset($_SESSION["korisnik"])){
            echo '<a href="bs.php"><img src="img/logout_gold.png" width="2%"></a>&nbsp;';
            }
            else {
            echo '<a href="aktivacija.php"><img src="img/activate.png" width="2%"></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" width="2%" ></a>&nbsp;<a href="prijava.php"><img src="img/login-w-icon.png" height="1%" width="2%"></a>&nbsp;<img src="img/logout-512.png" height="1%" width="2%">&nbsp;'; 
            }
                    ?>
             
           </div><br>
           <h1 style="font-size:2.7vw;">Usporedba mobitela</h1>
            <h2 style="font-size:2vw">Prošlo je 12 sati od registracije!</h2>
            </header>
        <div class="sadrzaj" style="margin-top:6%">
            <img src="img/sad_smiley_face_classic_round_sticker-r576425d930224b2296e980ac99877143_v9waf_8byvr_512.jpg" width="15%">
        </div>
    
    </body>

</html>
        