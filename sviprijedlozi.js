    var sadrzaj="";
    var t8 = document.getElementById("svi_p2");
function dohvatiprijedloge(){
    
    
    
    $.ajax({
        
        url:'svi_prijedlozi.php',
        type: 'GET',        
        dataType:'json',
        success:function(json){
            sadrzaj = "<br><br><table id='sviprijedlozi' name='sviprijedlozi'><th>ID Prijedloga</th><th>Korisnik</th><th>Prijedlog</th><th>Odobren</th>";
            $.each(json,function(i,k){
                sadrzaj+="<tr><td>"+k.id+"</td><td>"+k.korisnik+"</td><td>"+k.prijedlog+"</td><td>"+k.odobren+"</td></tr>";
                
            });
            sadrzaj += "</table>";
            
            $('#svi_p2').html(sadrzaj);
            
        }
        
    });
    
    
    
    
    };