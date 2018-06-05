
                    function kungfu(){
                        var cilj = document.getElementById("cilj");
                    $.ajax({
                        url: 'probazasve.php',
                        type: 'GET',
                        dataType: 'json',
                        success: function(json){
                            console.log(json);
                          var ende="";
                          
                          $.each(json,function(i,k){
                              console.log(k);
                              ende+= k.korime +  " " + k.lozinka;
                          });
                          $('#cilj').html(ende);
                          
                        }
                        
                    });
                }
                
                kungfu();
                    