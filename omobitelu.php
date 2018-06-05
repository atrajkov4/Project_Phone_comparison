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
        <script type="text/javascript" src="ajax_json_catch.js"></script>
        <script type="text/javascript" src="index_catch_spec.js"></script>
        <script type="text/javascript" src="updownvote.js"></script>
        <script type="text/javascript" src="downvote.js"></script>
        <script type="text/javascript" src="omobitelu.js"></script>
        <script type="text/javascript" src="mobiteli_vote.js"></script>
        <script type="text/javascript" src="mobiteli_vote2.js"></script>
        
       
        
    </head>
    <body style="overflow-x: hidden">
        <header>
             <div style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-45vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="index.php"><img src="img/Icon-home.png" height="1%" width="2%"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" width="2%"></a>
               <?php
           $id = $_GET["id"];
            if(isset($_SESSION["korisnik"])){
            echo '<a href="gmap.php"><img src="img/map-marker-xxl.png" width="2%"></a><a href="bs.php"><img src="img/logout_gold.png" width="2%"></a>&nbsp;';
            }
            else {
            echo '<a href="aktivacija.php"><img src="img/activate.png" width="2%"></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" width="2%" ></a><a href="prijava.php"><img src="img/login-w-icon.png" height="1%" width="2%"></a><img src="img/logout-512.png" height="1%" width="2%">&nbsp;'; 
            }
                    ?>
             
           </div><br>
           <h1 style="font-size:2.7vw;font-family:'PT Sans';"><b>Usporedba mobitela™</b></h1>
            
            </header>
        
        
            <?php 
            if(isset($_SESSION["korisnik"])){}
            else {
           echo ' <div class="prijava">
                <form id="forma1" name="forma1" method="post" action="prijava_cookie.php" >
                    <img src="http://www.jop-immobilien.de/jop/media/layout/member.png" height="17%" width="17%" ><a href="prijava.php"><b>Prijavi se</b></a><br>
                    <label for="korime">Korisničko ime</label><br>
                    <input type="text" id="korime" name="korime" size="10%" maxlength="20" placeholder="Korisničko ime"><br>
                    <label for="lozinka">Lozinka</label><br>
                    <input type="password" id="lozinka" name="lozinka" size="10%" placeholder="Lozinka"><br>
                    <input type="submit" value="Prijava" id="sub1" name="sub1"><br>
                    <a href="registracija.php">Niste registrirani?</a><br>
                </form>
            </div>';
            }
            ?>

        <div class="sadrzaj" id="ciljc" style="margin-top:6%;font-size:2.3vw;line-height:3vw;">
            <?php
            require 'baza.class.php';
            $bp = new baza();
            $bp->connect();
            $q = "Select * from mobiteli where id =".$id;
            $rez = $bp->select($q);
            $n = mysqli_fetch_assoc($rez);
            echo '<img src="'.$n["slike"].'" width="40%"><br><table style="position:relative;left:22vw"><th>Specifikacija</th><th>Vrijednost</th><tr><td><b>Model</b></td><td>'.$n["model"].'</td></tr><tr><td><b>Veličina ekrana (Inch)</b> </td><td>'.$n["vel_ekrana"].'</td></tr><tr><td><b>Baterija(mAh) </td><td></b> '.$n["baterija"].'</td></tr><tr><td><b>Prednja kamera?</b> </td><td>'.
                    $n["Prednja_kamera"].'</td></tr><tr><td><b>Procesor (Ukupni takt) </b></td><td>'.$n["procesor"].'</td></tr><tr><td><b>Sekundarna memorija</b> </td><td>'.$n["memorija"].'</td></tr><tr><td><b>Radna memorija </b> </td><td>'.
                    $n["RAM"].'</td></tr><tr><td><b>Kamera (Mpx)</b></td><td>'.$n["kamera"].'</td></tr></table>';
             if(isset($_SESSION["korisnik"])){
            echo '<input id="upvote" type="button" value="Upvote"  onclick="heh()">&nbsp;<input onclick="hih()"  id="downvote" type="button" value="Downvote">';
             }
            ?>
            
        </div>
        
        
    </body>

</html>