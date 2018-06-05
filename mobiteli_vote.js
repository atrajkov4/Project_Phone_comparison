function heh(){
   var en = document.getElementById("upvote");
   var em = document.getElementById("downvote");
  var str = location.search;
  var id1  = str.split("=");
  var id=id1[1];                    //SKRIPTA ZA UPVOTE MODELA MOBITELA
  
   
    $.ajax({
       url: 'upvote.php?id='+id,
        type: 'post',
        data: 'data',
        success:function(){
            en.disabled=true;
            em.disabled=true;
        }
    });
   
}