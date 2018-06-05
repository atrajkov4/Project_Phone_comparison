<!DOCTYPE html>

<html>
    <head>
        <title>Usporedba Mobitela</title>
        <meta charset="UTF-8">
        <meta title="Projekt">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href ="aletrajko.css" rel="stylesheet" type="text/css">
        <link href="mobitel1.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="aletrajko.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body>
         <header style="overflow-x: hidden;">
            <div class="yes" style="position:relative; top:1.95vw; right:-43vw"><a href="index.php"><img src="img/Icon-home.png"></a>&nbsp;<a href="skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png"></a>&nbsp;<a href="aktivacija.php"><img src="img/activate.png" ></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" ></a><a href="prijava.php"><img src="img/login-w-icon.png" ></a><img src="img/logout-512.png" >&nbsp;</div><br>
            <h1 id="naslov">Usporedba mobitela</h1>
            <h2 id="podnaslov">Aktiviraj račun!</h2>
            </header>
        <div class="sadrzaj" style="font-size:1.2vw">
        <form id="forma" method="post" action="aktiviraj.php" >
            
        
            Unesite kod koji vam je stigao na mail.<br> <input type="text" id="kod" maxlength="64" name="aktivacijski"><br>
        
        <input type="submit" value="Aktiviraj" name="aktiv" id="aktiv">
        
        </form>
        </div>
    </body>
     
</html>