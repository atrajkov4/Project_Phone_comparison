

function dohvatispec(){
    
    var target = document.getElementById("brandovi");
    
    var sadrzaj = "";
    $.ajax({
        url : 'specifikacije.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            sadrzaj = "<table id='specifikacije' name='specifikacije' ><th><input class='nevaljala' type='button' value='Model' onclick='sort_model()'></th><th>Vel.Ekrana(inch)</th><th><input class='nevaljala' type='button' value='Baterija (mAh)' onclick='sort_baterija()'></th><th>Dodatni sadržaj</th>";
            $.each(json,function(j,k){
                if(k.brandovi_id == target.value){
                    
                        sadrzaj += '<tr><td>'+k.model+'</td><td>'+k.vel_ekrana+'</td><td>'+k.baterija+'</td><td><a href="omobitelu.php?id='+k.id+'">Više</a></td></tr>';
                        
                    
            };
            });
            sadrzaj+="</table>";
            $('#cilj3').html(sadrzaj);
            
        }
        
    });
    
}

