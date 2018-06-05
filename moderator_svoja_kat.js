

function mojakat(){
    
    
    
    var sadrzaj = "";
    $.ajax({
        url : 'moderator_kategorije.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            sadrzaj = "<table><th>ID prijedloga</th><th>Korisnik</th><th>Prijedlog</th><th>Kategorija</th><th>Odobren</th>";
            $.each(json,function(j,k){
                    sadrzaj += '<tr><td>'+k.id+'</td><td>'+k.korisnik+'</td><td>'+k.prijedlog+'</td><td>'+k.kategorija+'</td><td>'+k.odobren+'</td></tr>';
                        
            
            });
            sadrzaj+="</table>";
            $('#pmk2').html(sadrzaj);
            
        }
        
    });
    
}

