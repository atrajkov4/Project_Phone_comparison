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
        <link href ="../aletrajko.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script  src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js" ></script>
        <script type="text/javascript" src="ispis.js"></script>
        <script type="text/javascript" src="sortovi_prezime.js"></script>
        <script type="text/javascript" src="sortovi_ime.js"></script>
        <link rel="stylesheet" href="print.css" type="text/css">
        
    </head>
    <body style="overflow-x: hidden;">
         <header>
             <div style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-46vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="../index.php"><img src="../img/Icon-home.png" height="1%" width="2%"></a>&nbsp;<a href="ispis_korisnika.php"><img src="../img/white-conference-call-256.png" width="2%"></a>
               <?php
           
            if(isset($_SESSION["korisnik"])){
            echo '<a href="../bs.php"><img src="../img/logout_gold.png" width="2%"></a>&nbsp;';
            }
            else {
            echo '<a href="../aktivacija.php"><img src="../img/activate.png" width="2%"></a>&nbsp;<a href="../registracija.php"><img src="../img/fillout_form_icon.png" width="2%" ></a><a href="../prijava.php"><img src="../img/login-w-icon.png" height="1%" width="2%"></a><img src="../img/logout-512.png" height="1%" width="2%">&nbsp;'; 
            }
                    ?>
             
           </div><br>
           <h1 style="font-size:2.7vw;">Usporedba mobitela</h1>
            <h2 style="font-size:2vw">Ispis korisnika</h2>
            </header>
        
        <div class="sadrzaj" id="seso" style="margin-top:6%;margin-left:27vw">
            
        </div>
        
    </body>
     
</html>