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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="aletrajko.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <link rel="stylesheet" href="print.css" type="text/css">
        
        
       
        
        
    </head>
    <body onload="m1()">
        <header style="overflow-x: hidden;">
            <div class="yes" style="position:relative; top:1.95vw; right:-42vw"><a href="index.php"><img src="img/Icon-home.png" "></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" ></a>&nbsp;<a href="aktivacija.php"><img src="img/activate.png" ></a>&nbsp;<a href="postavke.php"><img src="img/clock-xxl.png" ></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" ></a><a href="prijava.php"><img src="img/login-w-icon.png" ></a><img src="img/logout-512.png" >&nbsp;</div><br>
            <h1 id='naslov'>Usporedba mobitela</h1>
            <h2 id='podnaslov'>Registriraj se!</h2>
            </header>
        
       <div class="prijava">
                <form id="forma1" name="forma1" >
                    <img src="http://www.jop-immobilien.de/jop/media/layout/member.png" height="17%" width="17%" ><a href="prijava.php"><b>Prijavi se</b></a><br>
                    <label for="korime">Korisničko ime</label><br>
                    <input type="text" id="korime1" name="korime1" size="10%" maxlength="20" placeholder="Korisničko ime"><br>
                    <label for="lozinka">Lozinka</label><br>
                    <input type="password" id="lozinka1" name="lozinka1" size="10%" placeholder="Lozinka"><br>
                    <input type="submit" value="Prijava" id="submit" name="submit"><br>
                    <a href="registracija.php">Niste registrirani?</a><br>
                </form>
            </div>
        
        <div class="sadrzaj" style="margin-top:6%;font-size:1.2vw">
           
            <form id="forma" method="post" name="forma" action="validacija.php">
                <div class="labele2" >
                    <label for="ime">Ime :</label><br>
                    <label for="prezime">Prezime :</label><br>
                    <label for="korime">Korisničko ime :</label><br>
                    <label for="lozinka">Lozinka</label><br>
                    <label for="lozinka2">Ponovi pozinku: </label><br>
                    <label for="email">Email adresa: </label><br>                    
                    <label for="telefon">Telefon :</label><br>
                    
                    
                    
                </div>
                <div class="inputi2" >
                 
                  <input type="text" id="ime" name="ime" size="15" maxlength="15" placeholder="Ime" ><br>
                  
                 <input type="text" id="prezime" name="prezime" size="15" maxlength="15" placeholder="Prezime" ><br>
                 
                 <input type="text" id="korime" name="korime" size="15" maxlength="15" placeholder="Korisničko ime"><br>
                 
                 <input type="password" id="lozinka" name="lozinka" size="15" maxlength="15" placeholder="Lozinka" ><br>
                 
                 <input type="password" id="lozinka2" name="lozinka2" size="15" maxlength="15" placeholder="Ponovi lozinku"><br>
                 
                 <input type="email" id="email" name="email" size="15" maxlength="35" placeholder="Email adresa" ><br>
                 
                <input type="tel" id="telefon" placeholder="09x xxxxxxx" maxlength="11" size="15" name="telefon"><br>
                
                 
                 </div>
                <div style="clear:both;"></div>
                <p id="greske" style="color: #c72424;"></p>
                <div class="g-recaptcha" data-sitekey="6Ld05B4TAAAAAFCHHnNzN5bub_V2QmnXbeoA0exm" ></div>
                <hr>
                 
               
            
                
                
                <input id="sub" name="sub" type="submit" value=" Submit ">
            
           </form>
           
                </div>
       

        
    </body>
     
</html>