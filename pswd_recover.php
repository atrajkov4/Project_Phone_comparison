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
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans">
        <script type="text/javascript" href="aletrajko.js"></script>
         
    </head>
    
    <body>
        <header style="overflow-x: hidden">
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
            <h2 style="font-size:2vw">Zaboravili lozinku?</h2>
            </header>
        
       
        
        <div class="sadrzaj" style="font-size:1.2vw;margin-top:6%">
           
            <form id="forma" method="post" name="forma" action="pswd_gen.php">
                <div class="labele" style="float:left;margin-left:25%;line-height:1.7vw;text-align:left;">
                    
                    <label for="korime">Unesite korisničko ime :</label><br>
                    <label for="email">i email</label><br>    
                </div>
                <div class="inputi" style="float:right;margin-right:25%;">
                 <input type="text" id="korime" name="korime" size="15" maxlength="15" placeholder="Korisničko ime" value="<?php
                 if(isset($_COOKIE["projekt"])){
                 
                     echo $_COOKIE["projekt"]; 
                 }
                 else {
                     echo "";
                 }
                 ?>"><br>
                 <input type="text" id="email" name="email" size="15" maxlength="20" placeholder="Email" ><br>
                 
                 </div>
                <div style="clear:both"></div>
                
                <input id="sub" name="sub1" type="submit" value="Generiraj"><br>
                
                
                
            
           </form>
        

                </div>


    </body>
    
</html>