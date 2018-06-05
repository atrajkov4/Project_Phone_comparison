function dv(){
    
    var target = document.getElementById("downvote");
    var target2 = document.getElementById("upvote");
    //console.log(target.value);
    var t2 = document.getElementById("brandovi");
    
    $.ajax({
            url:'updownvote.php',
            type:'post',
            data: {downvote:t2.value},
            success: function(){
              target.disabled=true;
              target2.disabled=true;
            }
            
        });
        
        
    }
