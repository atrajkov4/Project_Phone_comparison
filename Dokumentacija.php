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
           <h2 id="podnaslov">Dokumentacija</h2>
            </header>
         <div class="sadrzaj" >
             <p><b>Opis projektnog zadatka</b><br>
             Tema ovog projekta je izrada web stranice za pregled mobilnih uređaja. Stranica sadrži 4 vrste korisnika a to su: neregistrirani korisnik, registrirani korisnik, moderator i administrator. Svaki korisnik ima određene mogućnosti kojima može pristupiti na stranici. Neregistrirani korisnik može vidjeti pregled svih kategorija mobilnih uređaja te ujedno pregled uređaja (specifikacije) iz određene kategorije. Registrirani korisnik ima mogućnost lajkanja kategorija i uređaja. Može slati zahtjev za dodavanje novog uređaja te ukoliko je odobreno dodati specifikacije i slike uređaju. Također ima mogćnost ispunjavanja anketa koje su napravljene od strane moderatora. Moderator kreira ankete, potvrđuje ili odbija zahtjeve za dodavanje novih uređaja, te može vidjeti statistiku lajkova kategorija i uređaja. Administrator ima sve opcije te još dodatno može dodavati podatke u tablice pomoću csv datoteka, može pregledavati dnevnik stranice, dodavati lokacije trgovina te ujedno kreirati nove kategorije uređaja i istima dodjeliti moderatora.
             <br><hr><b>Opis projektnog rješenja</b><br>
             Moje projektno rješenje većinom se sastoji od suradnje jquery ajax-a i php-a. Sve što se ustvari tražilo su nekakvi sitni mehanizmi tipa generiranje šifri, slanje mailova, stvaranje tablica, sortiranjai slično koje se uz znanje HTML-a lako realizira.Većinom nisam imao problem u implementaciji koda i logike sustava, ali nisam dovršio cijeli projekt. Procijenio bih da je projekt odrađen na kojih 75%, dakle bez Administratora, kreiranja vlastitih elemenata i stranicenja i pretrazivanja.
             <br><hr><b>Era model</b><br>
             <img src="img/era.png"  width="500" alt=""/>
             <hr>
             <br><b>Popis i opis skripata</b><br>
             1.) Iz foldera "skriveno" sa .htaccessom<br>
             <ol>
                 <li>Ispis korisnika.php</li>
                 <li>Ispis_sort_asc i desc.php</li>
                 <li>Ispis_sort_ime_asc i desc.php</li>
                 <li>izbaze_utablicu.php</li>
                 <li>sortovi_ime.js i sortovi_prezime.js</li>
                 
                    </ol>
             1) umjesto HTML stranice koristio sam php da mogu odmah funkcionalnosti php-a iskoristit tamo na licu mjesta, tamo se nalazi ispis svih korisnika koji vidi onaj ko zna sifru<br>
             2)Ispis korisnika po prezimenu uzlazno i silazno, koristeno u suradnji s ajaxom<br>
             3)Ispis korisnika po imenu, isto sil i uzl<br>
             4)Prebacivanje svih korisnika iz baze u tablicu<br>
             5)Javascript fileovi, posrednici između php/json dohvacanja i prebacivanja u html
             
             <br>
             Dalje su svi iz javnog foldera.<br>
             Dokumentacija.php - ova stranica<br>
             Galerija.php - koristio za prikaz svih slika, uploada slike i tagova na slike<br>
             ajax_json_catch.php - koristio za dohvat json objekata i prikaz kategorija mobitela na index.php<br>
             aktiv_ok.php - skripta da je aktivacija racuna u redu <br>
             aktivacija.php - stranica na kojoj se aktivira racun<br>
             aktiviraj.php - skripta koja aktivira racun s kodom x<br>
             aletrajko.css - glavni css od sitea<br>
             baza.class.php - koristio za komunikaciju s bazom<br>
             bs.php - skripta za brisanje sesije, triggera se pritiskom na zlatni gumb Logout<br>
             dodaj_sliku.php - skripta koja se vrtila na galeriji, dodaje se slika u bazu i direktorij pomocu nje <br>
             dohvacanje_kategorija.php - skripta uz ajax_json_catch gdje sam vadio kategorije mobova iz baze<br>
             dohvati_trgovine.php - dohvaca sve adrese trgovina i njihova imena<br>
             downvote.js - posluzila za pokretanje skripte za downvote mobitela ili kategorije<br>
             gmap.php - na njoj sam slozio gmaps<br>
             gmaps.js - pomocu te skripte sam na gmap.php prikazivao podatke iz baze o trgovini<br>
             index.php - sve, glavna stranica, alfa i omega, preko nje se prijavljuje, odlazi na registraciju, ispisuju korisnici, kategorije, prijedlozi...<br>
             index_catch_spec.php - skripta za ispis modela mobitela odabrane kategorije<br>
             korisnicke_slike.js - skripta za dohvvat svih kor.slika<br>
             mobitel_vote.js - koristi se za prenošenje downvotea ili upvotea<br>
             moderator_kategorije.php - skripta koja omogucuje ispis svih kategorija iz baze za moderatora<br>
             moderator_svoja_kat.js - moderator vidi samo svoje kategorije - ispis u tablici<br>
             oMobitelu.js - ispis specifikacija mobitela ovisno o odabranom modelu<br>
             postavi_vrijeme.php - stranica na kojoj se upravlja pomakom vremena<br>
             potvrdi_prijedlog.php - skripta za odobravanje prijedloga<br>
             preuzeto.css - css sa w3schoolsa za slideshow<br>
             prijava.php i prijava_cookie.php - 2 stranice u kolaboraciji pri prijavi, stvaranje kolacica, sesija i provjera serverska<br>
             prijedlog.php i prijedlog1.js - skripte u kojima hvatam prijedloge i prikazujem ih <br>
             pswd_gen i pswd_recover - prva je stranica na kojoj se nalazi modul za prepoznavanje racuna, a druga sluzi za provjeru, generiranje lozinke  i slanja obavijesti<br>
             sort_asc_baterija,sort_desc_baterija,sort_baterija.js,sort_desc_baterija.php,sort_asc_bat,sort_mobitela.js - sve sluzi za sortiranje modela mobitela, po bateriji i imenu<br>
             specifikacije.php - skripta za dohvat specifikacija mobitela<br>
             sviprijedlozi.js - sluzila za prikaz svih prijedloga iz svih kategorija<br>
             tekje12sati.php - stranica koja upozorava da je proslo 12 sati od reg. i aktivacije<br>
             updownvote.php,.js, upnevote.php,upvote.php - sve sluze u kolaboraciji za upvote i downvote mobitela<br>
             validacija.php - skripta za serversku provjeru prilikom registracije<br>
             zaslike.js i zaslike.php - zajedno ucitavale sliku i izlistavale iz baze<br><hr>
             <b>Navigacijski dijagram</b><br>
             <img src="img/navigacijski.png" width="500"/>
             <br><hr>
                 <b>Opis korištenih tehnologija</b><br>
             Koristio sam 
             <ol>
                 <li>NetBeans 8.1</li>
                 <li>Gimp 2</li>
                 <li>tryit editor 3.0</li>
                 <li>phpMyAdmin</li>
                 <li>Filezilla</li>
                 
                    </ol>
             
             <hr>
             <br>
             <b>Vanjski moduli i biblioteke</b>
             <br>
             Koristio sam samo gmaps modul za prikaz google mape na stranici, reCaptcha za sustav autentikacije od robotarenja te Google Web Fonts za učitavanje Online fonta (PT Sans)<br>
             
             
             
             </p>
         </div>
     </body>
</html>