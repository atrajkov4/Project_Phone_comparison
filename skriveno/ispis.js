$(document).ready(function (){
    
    var load="";
    $.ajax({
        url:'izbaze_utablicu.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            load += '<table><th>Korisnicko ime</th><th><input type="button" class="nevaljala" value="Prezime" onclick="sortiraj()"></th><th><input type="button" class="nevaljala" onclick="sortiraj2()" value="Ime"></th><th>Email</th><th>Lozinka</th><th>Tip korisnika</th>';
            $.each(json,function(j,p){
               load+='<tr><td>'+p.korime+'</td><td>'+p.prezime+'</td><td>'+p.ime+'</td><td>'+p.email+'</td><td>'+p.lozinka+'</td><td>'+p.tip+'</td></tr>'; 
            });
            load+='</table>';
            $('#seso').html(load);
        }
        
    });
});
    

