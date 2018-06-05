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
        <link href="mobitel1.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="aletrajko.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script type="text/javascript" src="zaslike.js"></script>
        <script type="text/javascript" src="korisnicke_slike.js"></script>
    </head>
    <body style="overflow-x:hidden">
         <header height="13%">
             <div class="yes" style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-45vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="index.php"><img src="img/Icon-home.png"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" ></a>
               <?php
           
            if(isset($_SESSION["korisnik"])){
            echo '<a href="gmap.php"><img src="img/map-marker-xxl.png" ></a><a href="bs.php"><img src="img/logout_gold.png" ></a>&nbsp;';
            }
            else {
            echo '<a href="aktivacija.php"><img src="img/activate.png" ></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" ></a><a href="prijava.php"><img src="img/login-w-icon.png" ></a><img src="img/logout-512.png" >&nbsp;'; 
            }
                    ?>
             
           </div><br>
           <h1 id="naslov">Usporedba mobitela</h1>
           <h2 id="podnaslov">Galerija slika</h2>
            </header>
        <div class="sadrzaj" >
            
            <form method="post" id="forma" action="dodaj_sliku.php"><input type="text" placeholder="Dodaj URL slike" id="URL" name="URL">&nbsp;<input type="text" placeholder="Dodaj tag" name="tag" id="tag">&nbsp;<input type="submit" value="Dodaj sliku"></form>
            <br><hr><input type="text" placeholder="Pretraži po tagu" id="ptp" onchange="pretrazi()" name="ptp">&nbsp;<input type="button" value="Pretraži/Prikaži" onclick="pretrazi();pretrazi2()" id="ptpb" name="ptpb">
            <div id="pretraga" name="pretraga">
                
            </div>
        
           
        </div>
    </body>
     
</html>