var rakitic=false;
function sortiraj2(){
    var led="";
    if(rakitic==false){
        $.ajax({
            url:'ispis_sort_ime_asc.php',
            type:'GET',
            dataType:'json',
            success:function(json){
                led += '<table><th>Korisnicko ime</th><th><input type="button" class="nevaljala" value="Prezime" onclick="sortiraj()"></th><th><input type="button" class="nevaljala" onclick="sortiraj2()" value="Ime"></th><th>Email</th><th>Lozinka</th>';
            $.each(json,function(j,p){
               led+='<tr><td>'+p.korime+'</td><td>'+p.prezime+'</td><td>'+p.ime+'</td><td>'+p.email+'</td><td>'+p.lozinka+'</td></tr>'; 
            });
            led+='</table>';
            $('#seso').html(led);
            rakitic=true;
            }
            
        });
        
    }
    else {
        $.ajax({
            url:'ispis_sort_ime_desc.php',
            type:'GET',
            dataType:'json',
            success:function(json){
                led += '<table><th>Korisnicko ime</th><th><input type="button" class="nevaljala" value="Prezime" onclick="sortiraj()"></th><th><input type="button" class="nevaljala" onclick="sortiraj2()" value="Ime"></th><th>Email</th><th>Lozinka</th>';
            $.each(json,function(j,p){
               led+='<tr><td>'+p.korime+'</td><td>'+p.prezime+'</td><td>'+p.ime+'</td><td>'+p.email+'</td><td>'+p.lozinka+'</td></tr>'; 
            });
            led+='</table>';
            $('#seso').html(led);
        rakitic=false;
    }
    
});
    }}