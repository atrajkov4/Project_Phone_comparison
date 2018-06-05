

function dohvatispec1(){
    
    var target = document.getElementById("brandovi");
    
    var sadrzaj = "";
    $.ajax({
        url : 'specifikacije.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){            //Stvaranje tablice iz json filea o svim mobitelima
            $.each(json,function(j,k){
                if(k.brandovi_id == target.value){
                sadrzaj += '<br><b>Model</b> :'+k.model+'<br>Veličina ekrana :'+k.vel_ekrana+'<br>Baterija (mAh) :'+k.baterija+'<br>Prednja kamera? -'+k.Prednja_kamera+'<br>Ukupni takt procesora :'+k.procesor+'<br>Sekundarna memorija :'+k.memorija+'<br>Radna memorija :'+k.RAM+'<br>'+k.kamera+'<br>';
            };
            });
           $('#ciljc').html(sadrzaj);
            
        }
        
    });
    
}

