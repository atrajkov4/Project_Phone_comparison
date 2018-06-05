 <?php
 
        require 'baza.class.php';
        $bp = new baza();
        $bp->connect();
         $s = 'Select time from vvrijeme where id=1';
        $v = $bp->select($s);
        $n = $v->fetch_array();                         //NAMJESTANJE VIRTUALNOG VREMENA
        $mici=strtotime("+".$n["time"]." Hours"); 

        $dat= date("Y-m-d H:i:s",$mici); 
    
        if(isset($_POST["sub"])){
            $glavna=false;
            $korime=$_POST["korime"];
            $email = $_POST["email"];
            $loz=$_POST["lozinka"];
            $loz2 = $_POST["lozinka2"];
            $tel=$_POST["telefon"];
            $ime= $_POST["ime"];
            $prez=$_POST["prezime"];
            
            $test="select count(*) from osoba where korime='".$korime."'";
            
            $tm = $bp->select($test);
            $pft = $tm->fetch_array();
            
            if($pft['count(*)']!=0){
                $glavna=true; 
                
            }
            
            
            if($ime=="") {                                                                  // BLOK PROVJERA    za prazan string
                $p1=true;
                $glavna = true;
                echo "Ime ne smije biti prazno!<br>";
            }
            if($prez=="") {
                $glavna = true;
                echo "Prezime ne smije biti prazno!<br>";
            }
            if($tel=="") {
                
                $glavna = true;
                echo "Telefon ne smije biti prazan!<br>";
            }
            if($korime=="") {
                $glavna = true;
                echo "Korisnicko ime ne smije biti prazno!<br>";
            }
            if($loz==""){
                
                $glavna = true;
                echo "Lozinka ne smije biti prazna!<br>";
            }
            if($loz2=="") {
                $glavna = true;
                echo "Potvrda lozinke ne smije biti prazna! <br>";
            } 
            if($email=="") {
                $glavna = true;
                echo "Email ne smije biti prazan!<br>";
            }
                                                                                    // OBRADA UNESENOG (<8, jel postoji itd 
            
            if(strlen($korime)<8) {             
                $glavna=true;
                echo "Korime mora biti duze od 8 znakova!<br>";
            }
            $q = "Select count(*) from osoba where korime=".$korime;
            if($bp->select($q)){
                echo "Korisnik postoji!<br>";
                $glavna=true;
            }
            
            $znakovi1=0;
            for($z=0;$z<strlen($loz);$z++){
                if($loz[$z]=="!" || $loz[$z]=="#" || $loz[$z]=="$" || $loz[$z]=="?" || $loz[$z]=="-" || $loz[$z]=="_" ){
                    $znakovi1++;
                }
            }
            if($znakovi1!=2) {
                echo "Nemate točno 2 posebna znaka (lozinka)<br>";
                $glavna=true;
            }
            if($loz2!=$loz){
                echo "Lozinke nisu iste!<br>";
                $glavna=true;
            }
            $regmail = '/^[\w]+[@][A-Za-z]+[.][A-Za-z]+$/';
            
            if(!preg_match($regmail, $email)){
                echo "Mail ne poštuje uzorak!<br>";
                $glavna=true;
            }
            $telchck='/^[\d]{3}[ ][\d]{7}/';
                if(!preg_match($telchck,$tel)) {
                    $glavna = true;
                    echo "Struktura broja nije dobra! (09x xxxxxxx)<br>";
                }
                
            //RECAPTCHA
                $fail=false;
            $secret = "6Ld05B4TAAAAALS6fJxW6Xqow7XZtT4gd17HavCU";
            $response = $_POST["g-recaptcha-response"];
            if ($response == "") {
                $fail=true;
                echo 'Dokaži da nisi robot<br>';
                $glavna = true;
            } else {
                $verify = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$response}");
                $captcha_success = json_decode($verify);
                if ($captcha_success->success == false) {
                    echo "Robot si<br>";
                }
            }
            
                                                                                                            //PROLAZ U BAZU
            
            if($glavna==false){
                $tomesh=date('d/m/Y h:i:s a', time()) . $korime;
                $aktivacijski = hash('sha256',$tomesh);
                
                $ono = "Insert into osoba values ('" . $ime ."','". $prez ."','". $korime ."','".$loz."','".$email."','".$tel."','".$aktivacijski."',0,1,'".$dat."',0)";
                
                
                    if($bp->update($ono)) {
                    echo "<b>Uspjesno ubaceno!</b><br>";
                    
                    $log = 'Insert into dnevnik values(default,"'.$korime.'","'.$ono.'","'.$dat.'")';
                    $bp->update($log);
                    
                    
                     $mail_to = $email;
                     $mail_from="From: Admin";
                     $mail_subject = "Aktivacijski Link";
                     $mail_body = "Postovani $korime ,\n\n Kliknite na sljedeci link"
                             . " kako bi aktivirali svoj racun \n\n"
                             . "http://barka.foi.hr/WebDiP/2015_projekti/WebDiP2015x086/aktivacija.php \n i unesite sljedeci kod kako bi znali da ste to vi, aktivacijski kod vrijedi 12 sati od".$dat." \n"
                             . $aktivacijski;
                     if (mail($mail_to, $mail_subject, $mail_body, $mail_from)) {
                            echo("Poslana poruka za: '$mail_to'!");
                                 header('Location:aktivacija.php');
                      
                     
                            
                            
        }           else {
                            echo("Problem kod poruke za: '$mail_to'!");
        }
                     
                     
            }
            else {
            echo "Greška ";
              
            }
            
            
                    }
                    else {
                        echo "Netocno ispunjeni podaci ili postoji korisnik!";
                    }
                
        }
        $bp->close();
 
        ?>