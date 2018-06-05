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
        <link rel="stylesheet" href="mobitel1.css" type="text/css">
        <link rel="stylesheet" href="preuzeto.css" type="text/css">
         <link rel="stylesheet" href="print.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=PT+Sans">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script  src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"  ></script>
        <script type="text/javascript" src="ajax_json_catch.js"></script>
        <script type="text/javascript" src="index_catch_spec.js"></script>
        <script type="text/javascript" src="sort_mobitela.js"></script>
        <script type="text/javascript" src="sort_baterija.js"></script>
        <script type="text/javascript" src="updownvote.js"></script>
        <script type="text/javascript" src="downvote.js"></script>
        <script type="text/javascript" src="refresh.js"></script>
        <script type="text/javascript" src="prijedlog1.js"></script>
        <script type="text/javascript" src="sviprijedlozi.js"></script>
        <script type="text/javascript" src="moderator_svoja_kat.js"></script>
        
        <script type="text/javascript">
            window.onload = function () {

                var canvas = document.getElementById("myCanvas");
                var ctx = canvas.getContext('2d');
                var scores = new Array();
                
                $.ajax({
                    url: 'proba2.php',
                    type: 'GET',
                    dataType: 'json',
                    success: function (json) {
                         var width = 8;
                        var currX = 30;
                        //var base = 8;
                        ctx.fillStyle = "green";

                        for (var i = 0; i < json.length; ++i) {
                            vri = json[i].upvote*10;
                            scores.push(vri);
                            

                        var h = scores[i];
                        ctx.fillRect(currX, canvas.height-h, width, h);
                        currX += width + 1.5;
                        }
                    }
               
                });
                
                // drugi dio za downvote
                var canvas1 = document.getElementById("myCanvas1");
                var ctx1 = canvas1.getContext('2d');
                var scores1 = new Array();
                $.ajax({
                    url: 'proba2.php',
                    type: 'GET',
                    dataType: 'json',
                    success: function (json) {
                         var width1 = 8;
                        var currX1 = 30;
                        //var base = 8;
                        ctx1.fillStyle = "red";

                        for (var i = 0; i < json.length; ++i) {
                            vri = json[i].downvote*10;
                            scores1.push(vri);

                        var h2 = scores1[i];
                        ctx1.fillRect(currX1, canvas1.height-h2, width1, h2);
                        currX1 += width1 + 1.5;
                        }
                    }
               
                });


            };
        </script>

        <style>
            .slider {
                display:none;
            }
        </style>  

    </head>
    <body >
        <header>
            <div class="yes" style="position:relative; top:1.95vw; right:<?php
            if (isset($_SESSION["korisnik"])) {
                echo "-45vw";
            } else {
                echo "-43vw";
            }
            ?>;"><a href="index.php"><img src="img/Icon-home.png"></a>&nbsp;<a href="http://barka.foi.hr/WebDiP/2015_projekti/WebDiP2015x086/skriveno/ispis_korisnika.php"><img src="img/white-conference-call-256.png" ></a>
            <?php
            if (isset($_SESSION["korisnik"])) {
                echo '<a href="gmap.php"><img src="img/map-marker-xxl.png" ></a><a href="bs.php"><img src="img/logout_gold.png" ></a>&nbsp;';
            } else {
                echo '<a href="aktivacija.php"><img src="img/activate.png" ></a>&nbsp;<a href="registracija.php"><img src="img/fillout_form_icon.png" ></a><a href="prijava.php"><img src="img/login-w-icon.png" ></a><img src="img/logout-512.png" >&nbsp;';
            }
            ?>

            </div><br>
            <h1 id="naslov"><b>Usporedba mobitela™</b></h1>

        </header>


<?php
if (isset($_SESSION["korisnik"])) {
    
} else {
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
        <div class="sadrzaj">
            <div class="banner" >
                <img class="slider w3-animate-fading" src="http://cdn.playbuzz.com/cdn/1027e342-486f-45e5-8776-0aae402c570d/e5c0dcb1-78fc-4217-88c0-25ca6e9a4d94.jpg" >
                <img class="slider w3-animate-fading"  src="http://www.trackmyfone.com/blog/wp-content/uploads/2015/07/kids-smartphone-TMF.jpg" >
                <img class="slider w3-animate-fading" src="http://i.huffpost.com/gen/1765727/images/o-GALAXY-NOTE-facebook.jpg" >
                <img class="slider w3-animate-fading"  src="http://i.huffpost.com/gen/1461384/images/o-SIGNS-YOU-NEED-TO-UNPLUG-facebook.jpg" >

                <script type='text/javascript'>
                    var slideIndex = 0;
                    carousel();
                    function carousel() {
                        var i;
                        var x = document.getElementsByClassName("slider");
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        slideIndex++;
                        if (slideIndex > x.length)
                            slideIndex = 1;
                        x[slideIndex - 1].style.display = "block";
                        setTimeout(carousel, 6000);
                    }
                </script>
            </div>

            <div class="tekst" id="tekst" onload="specifikacije()">
                <form id="odabir" name="odabir">
                    <p>   Svatko želi odabrati dobar mobilni uređaj za sebe. U nastavku postoji nekolicina kategorija koje možete odabrati,
                        te potom odaberite uređaj za daljnje specifikacije i sliku. </p>

                    <br>
                    <div id="cilj2">

                    </div>
<?php
if (isset($_SESSION["korisnik"])) {
    echo '<input type="button" id="upvote" value="Upvote" onclick="uv()">&nbsp;<input type="button" id="downvote" value="Downvote" onclick="dv()">';
}
?>
                    <br><br>
                    <div id="cilj3"></div>
                    <br><br>
                    <div>
                        <a href="Galerija.php" ><img src="img/Smartphone-comparison.png" alt="" width="55%"/><br><b>Galerija slika </b></a><br>

                    </div>

                </form>


            </div>
<?php
if (isset($_SESSION["korisnik"]) && ($_SESSION["tip"]) >= 2) {
    echo '<canvas id="myCanvas" ></canvas><b>Statistika Upvoteova</b><hr><br><canvas id="myCanvas1"></canvas><b>Statistika Downvoteova</b><br><hr><input type="button" value="Prijedlozi moje kategorije" id="pmk" name="pmk" onclick="mojakat()"><br><div id="pmk2" name="pmk2"></div><br><form method="post" action = "potvrdi_prijedlog.php" id="forma"><input id="id_prijedloga" name="id_prijedloga" placeholder="ID Prijedloga za prihvaćanje" type="text"><input type="submit" value="Potvrdi prijedlog" ></form><br>';
}
if (isset($_SESSION["korisnik"]) && ($_SESSION["tip"]) >= 1) {

    echo '<br><input type="button" id="svi_p" name="svi_p" value="Pregledaj prijedloge" onclick="dohvatiprijedloge()"><input type="button" id="prijedlog" value="Dodaj novi uređaj" onclick="create()" >';
} else {
    echo '
            <p> Stranica UsporedbaMobitela™ nudi neke mogućnosti samo ako ste registrirani korisnik. Simbol za registraciju je</p><br>
            <a href="registracija.php"><img src="img/fillout_form_icon2.png" width="18%"></a><br><br>
            
            <p> Ukoliko već posjedujete račun na našoj stranici, prijavite se na simbol </p><br>
            <a href="prijava.php" style="position:relative; left:-1vw"><img src="img/login-w-icon2.png" width="18%"></a><br>
            
            <p>Dok aktivaciju računa možete provesti na simbolu </p><br>
            <a href="aktivacija.php" style="position:relative;left:-1vw"><img src="img/activate2.png" width="18%"></a><br>
            
            <p>Opcija "Ispis korisnika" nudi Vam pregled svih registriranih korisnika koju možete pogledati na </p><br>
            <a href="skriveno/ispis_korisnika.php" style="position:relative;left:-1vw;"><img src="img/white-conference-call-256_gray.png" width="18%"></a>
                ';
}
?>
            <div id="prijedlozi">
            </div>
            <div id="svi_p2">
            </div>

            
        </div>
        <footer>
            <a href="oAutoru.php">O Autoru</a><a href="Dokumentacija.php">  Dokumentacija</a>
        </footer>
    </body>

</html>