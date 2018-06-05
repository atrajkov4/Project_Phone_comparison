var modric=false;
function sortiraj(){
    var led="";
    if(modric==false){
        $.ajax({
            url:'ispis_sort_asc.php',
            type:'GET',
            dataType:'json',
            success:function(json){
                led += '<table><th>Korisnicko ime</th><th><input type="button" class="nevaljala" value="Prezime" onclick="sortiraj()"></th><th><input type="button" onclick="sortiraj2()" class="nevaljala" value="Ime"></th><th>Email</th><th>Lozinka</th>';
            $.each(json,function(j,p){
               led+='<tr><td>'+p.korime+'</td><td>'+p.prezime+'</td><td>'+p.ime+'</td><td>'+p.email+'</td><td>'+p.lozinka+'</td></tr>'; 
            });
            led+='</table>';
            $('#seso').html(led);
            modric=true;
            }
            
        });
        
    }
    else {
        $.ajax({
            url:'ispis_sort_desc.php',
            type:'GET',
            dataType:'json',
            success:function(json){
                led += '<table><th>Korisnicko ime</th><th><input type="button" class="nevaljala" value="Prezime" onclick="sortiraj()"></th><th><input type="button" class="nevaljala" onclick="sortiraj2()" value="Ime"></th><th>Email</th><th>Lozinka</th>';
            $.each(json,function(j,p){
               led+='<tr><td>'+p.korime+'</td><td>'+p.prezime+'</td><td>'+p.ime+'</td><td>'+p.email+'</td><td>'+p.lozinka+'</td></tr>'; 
            });
            led+='</table>';
            $('#seso').html(led);
        modric=false;
    }
    
});
    }}