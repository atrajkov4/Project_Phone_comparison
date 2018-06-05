
function pretrazi(){
    
    var dest = document.getElementById("ptp");
    
    var sadrzaj = "";
    $.ajax({
        url : 'zaslike.php',
        type: 'GET',
        dataType: 'json',
        success: function(json){
            $.each(json,function(j,k){
                if(dest.value.length!=0){
                if(k.model==dest.value){
                    sadrzaj+="<img src='"+k.slike+"' width='40%'><br>"+k.model+"<br>";
                        
                    }
                
                }
                else {
                    sadrzaj+="<img src='"+k.slike+"' width='40%'><br>"+k.model+"<br>";
                }
                    
            
            });
            
            $('#pretraga').html(sadrzaj);
            
        }
        
    });
    
}

