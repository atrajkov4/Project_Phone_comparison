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
        <link href ="mobitel1.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=PT+Sans">
        <script type="text/javascript" href="aletrajko.js"></script>
        <link rel="stylesheet" href="print.css" type="text/css">
        
         
    </head>
    
    <body>
        <header style="overflow-x: hidden">
           <div class = 'yes' style="position:relative; top:1.95vw; right:<?php
           if(isset($_SESSION["korisnik"])){
           echo "-46vw";
               
           }
           else {
               echo "-43vw";
               
           }
           ?>;"><a href="index.php"><img src="img/Icon-home.png"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" ></a>
               <?php
           
            if(isset($_SESSION["korisnik"])){
            echo '<a href="bs.php"><img src="img/logout_gold.png"></a>&nbsp;';
            }
            else {
            echo '<a href="aktivacija.php"><img src="img/activate.png" ></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" ></a><a href="prijava.php"><img src="img/login-w-icon.png" ></a><img src="img/logout-512.png">&nbsp;'; 
            }
                    ?>
             
           </div><br>
           
            <h1 >Usporedba mobitela</h1>
            <h2 id="podnaslov">Prijavi se!</h2>
            </header>
        
       
        
        <div class="sadrzaj">
           
            <form id="forma" method="post" name="forma" action="https://barka.foi.hr/WebDiP/2015_projekti/WebDiP2015x086/prijava_cookie.php">
                <div class="labele">
                    
                    <label for="korime">Korisničko ime :</label><br>
                    <label for="lozinka">Lozinka</label><br>    
                </div>
                <div class="inputi" >
                 <input type="text" id="korime" name="korime" size="15" maxlength="15" placeholder="Korisničko ime" value="<?php
                 if(isset($_COOKIE["projekt"])){
                 
                     echo $_COOKIE["projekt"]; 
                 }
                 else {
                     echo "";
                 }
                 ?>"><br>
                 <input type="password" id="lozinka" name="lozinka" size="15" maxlength="15" placeholder="Lozinka" ><br>
                 
                 </div>
                <div style="clear:both"></div>
                
                <input id="sub" name="sub1" type="submit" value=" Submit "><br>
                <input type="checkbox" id="zm" name="zm">Zapamti me <br> <a href="pswd_recover.php">Zaboravili ste lozinku?</a>
                
                
            
           </form>
        

                </div>


    </body>
    
</html>