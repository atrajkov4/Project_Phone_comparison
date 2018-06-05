function specifikacije(){
            
            
            
            var inHTML = "";
            $.ajax({
                url: 'dohvacanje_kategorija.php',
                type: 'GET',
                dataType: 'json',
                success: function(json){
                    
                    var inHTML = '<select id="brandovi" onchange="dohvatispec();ref();">';
                    
                    $.each(json,function(i,l) {
                        
                        inHTML += "<option value="+(i+1)+">"+l.naziv+"</option>";
                        
                    });
                    inHTML+='</select>';
                    
                    $('#cilj2').html(inHTML);
                }
                
                
            });
}
specifikacije();
    
