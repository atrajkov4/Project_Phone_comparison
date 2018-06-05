var br=false;

function sort_model(){
    var target = document.getElementById("brandovi");
    if(!br){
        br=true;   //Sort za ASC by modeli
    $.ajax({
        url: 'sort_asc_modeli.php',
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
    
    else {
        br=false;
        $.ajax({                 //Sort za DESC by modeli
            url: 'sort_desc_modeli.php',
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