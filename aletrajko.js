 function m1(){
           var korime = document.getElementById("korime");
           var greske = document.getElementById("greske");
           var fail=false;
           
           korime.addEventListener('blur',function(){
               
               greske.innerHTML = "";
               var pkorime=false;
              if(korime.value == ""){
                  pkorime=true;
                  greske.innerHTML += "Korisničko ime ne smije biti prazno!";  // 1. provjera
                  fail=true;
               };
               
               if(!pkorime && korime.value.length<8){
                   greske.innerHTML+="Korisničko ime mora biti duže od 8 znakova!<br>"; //2. provjera
                   fail=true;
                   };
                    
              $.ajax({
                   url: 'proba_provjera.php?korime='+ korime.value ,
                   type: 'GET' ,
                   dataType: 'json',
                   success : function(json){
                       $.each(json,function(i,k){
                           if(k.broj>0){
                               greske.innerHTML += "Korisnik postoji!<br>";
                               fail=true;
                           }
                           else if(k.broj==0 && !pkorime){
                               greske.innerHTML += "Korisnik ne postoji!<br>";
                           }
                           
                       });
                       
                   }
                   
               });
               
           },false);
           
           var loz = document.getElementById("lozinka");
           var loz2 = document.getElementById("lozinka2");
           loz.addEventListener('blur',function(){
               greske.innerHTML = "";
               var prazno=false;
               if(loz.value=="") {
                   
                   prazno=true;
                   greske.innerHTML += "Lozinka ne moze biti prazna!";  // 3. Provjera 
                   fail=true;
               }
               
               
               if(loz.value.length<8 && !prazno){
                   greske.innerHTML += "Lozinka ne smije biti kraca od 8 znakova!<br>"; // 4. Provjera
                   fail=true;
                   
               }
               
               var znakovi=0;
               if(!prazno){
               for (var j=0;j<loz.value.length;j++){
                   if(loz.value[j]=="!" || loz.value[j] == '#' || loz.value[j] == '$' || loz.value[j] == '?' || loz.value[j] == '-' || loz.value[j] == '_') znakovi++;//5. Provjera
                   
               };
                if(znakovi!=2) {
                    greske.innerHTML += "Nemate točno 2 posebna znaka (!,#,$,?,-,_)<br>";
                    fail=true;
                }
           };
              
           },false);
           
           
           loz2.addEventListener('blur',function (){
               greske.innerHTML = "";
               if(loz2.value == "") {
                   greske.innerHTML += "Potvrda lozinke ne smije biti prazna!<br>";
                   fail=true;
               }
               if(loz2.value != "" && loz2.value != loz.value) {
                   greske.innerHTML += "Lozinke nisu identične!<br>";
                   fail=true;
               }  //Provjera 5.
               
               
           },false);
           
           var mail = document.getElementById("email");
           mail.addEventListener('blur', function(){
               greske.innerHTML = "";
               var znopra = false;
               if(mail.value==""){
                   znopra=true;
                   greske.innerHTML += "Mail ne smije biti prazan!";
                   fail=true;
               };
               var regex = /^[\w]+[@][A-Za-z]+[.][A-Za-z]+$/;
               if(!mail.value.match(regex) && !znopra) {
                   greske.innerHTML += "Struktura maila nije dobra!";
                   fail=true;
               }
               
           },false);
           
           var fon = document.getElementById("telefon");
           fon.addEventListener('blur',function(){
               greske.innerHTML = "";
               var prazan = false;
           
               if(fon.value==""){
                   prazan=true;
                   greske.innerHTML += "Telefon ne smije biti prazan";
                   fail=true;
               }
               var reg = /^[\d]{3}[ ][\d]{7}/;
               if(!fon.value.match(reg) && !prazan) {
                   greske.innerHTML += "Struktura broja nije dobra!";
                   fail=true;
               }
               
           },false);
           var sub = document.getElementById("sub");
           sub.addEventListener('blur',function(){
               if(fail) event.preventDefault();
               
           },false);
           
};

