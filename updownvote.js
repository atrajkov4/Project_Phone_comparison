


function uv(){
    //ovdje rijesim jel upvote ili downvote preko value, onda samo u php proslijedim koja je kategorija (value) i njoj upvote ili downvote +1 dam
    var target = document.getElementById("upvote");
    var target2 = document.getElementById("downvote");
    //console.log(target.value);
    var t2 = document.getElementById("brandovi");
     
         $.ajax({
        url: 'updownvote.php',
        type: 'post',
        data: {upvote:t2.value },
        success:function(){
            target.disabled=true;
            t2.disabled=true;
        }
        
    });
        
    }
    
     
   
   


    

    
