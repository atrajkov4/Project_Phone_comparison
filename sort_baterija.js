
var tr=false;

function sort_baterija(){
    var target = document.getElementById("brandovi");
    if(!tr){
        tr=true;   //Sort za ASC by baterija
    $.ajax({
        url: 'sort_asc_baterija.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            sadrzaj = "<table id='specifikacije' name='specifikacije' ><th><input class='nevaljala' type='button' value='Model' onclick='sort_model()'></th><th>Vel.Ekrana(inch)</th><th><input class='nevaljala' type='button' value='Baterija (mAh)' onclick='sort_baterija()'></th><th>Dodatni sadržaj</th>";
            $.each(json,function(j,k){
                if(k.brandovi_id == target.value){
                    if(target.value==1 && k.model=="Galaxy S7"){
                        sadrzaj += '<tr><td>'+k.model+'</td><td>'+k.vel_ekrana+'</td><td>'+k.baterija+'</td><td><a href="omobitelu.php">Više</a></td></tr>';
                    }
                sadrzaj += '<tr><td>'+k.model+'</td><td>'+k.vel_ekrana+'</td><td>'+k.baterija+'</td><td><u>Više</u></td></tr>';
            };
            });
            sadrzaj+="</table>";
            $('#cilj3').html(sadrzaj);
            
        }
        
        
    });
    }
    
    else {
        tr=false;
        $.ajax({                 //Sort za DESC by baterija
            url: 'sort_desc_baterija.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            sadrzaj = "<table id='specifikacije' name='specifikacije' ><th><input class='nevaljala' type='button' value='Model' onclick='sort_model()'></th><th>Vel.Ekrana(inch)</th><th><input class='nevaljala' type='button' value='Baterija (mAh)' onclick='sort_baterija()'></th><th>Dodatni sadržaj</th>";
            $.each(json,function(j,k){
                if(k.brandovi_id == target.value){
                     if(target.value==1 && k.model=="Galaxy S7"){
                        sadrzaj += '<tr><td>'+k.model+'</td><td>'+k.vel_ekrana+'</td><td>'+k.baterija+'</td><td><a href="omobitelu.php">Više</a></td></tr>';
                    }
                sadrzaj += '<tr><td>'+k.model+'</td><td>'+k.vel_ekrana+'</td><td>'+k.baterija+'</td><td><u>Više</u></td></tr>';};
            });
            sadrzaj+="</table>";
            $('#cilj3').html(sadrzaj);
            
        }
            
        });
    }
}