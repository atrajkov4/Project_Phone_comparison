
function pretrazi2(){
    
    var dest = document.getElementById("ptp");
    var terg = document.getElementById("pretraga");
    
    var sadrzaj = "";
    $.ajax({
        url : 'korisnicke_slike.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            $.each(json,function(j,k){
                if(dest.value.length!=0){           //AKO IMA VRIJEDNOSTI U SEARCHU ZA TAG
                if(k.tag==dest.value){
                    sadrzaj+="<img src='"+k.slika+"' width='40%'><br>"+k.tag+"#1<br>";
                        
                    }
                
                }
                else {              //NEMA, ŠIBAJ SVE SLIKE
                    sadrzaj+="<img src='"+k.slika+"' width='40%'><br>"+k.tag+"#2<br>";
                }
                 terg.innerHTML += sadrzaj;   
            
            });
            
            
            
        }
        
    });
    
}

