function hih(){
   var en = document.getElementById("upvote");
   var em = document.getElementById("downvote");
   var str = location.search;
  var id = str.split("=");
   
    $.ajax({
       url: 'upnevote.php?id='+id[1],  //DOWNVOTE MOBITELA, TJ SPECIFICNOG MODELA
        type: 'GET',
        data: 'data',
        success:function(){
            en.disabled=true;
            em.disabled=true;
        }
    });
   
}