<?php
session_start();
session_unset();
session_destroy();

if(isset($_SESSION["korisnik"])){             //TESTIRANJE JEL OBRISANA SESIJA
    echo "ne radi";
    
}
else {
    
    header("Location:prijava.php");
}



