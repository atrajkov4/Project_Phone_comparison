function renderGoogleMap() {
  var start_point = new google.maps.LatLng(45.815399, 15.966568);

  // Stvaranje nove google mape
  var map = new google.maps.Map(document.getElementById("googleMap"), {
    center: start_point,
    zoom: 6,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });



  // Stvaranje prozora kojeg ce koristiti svi markeri
  var infoWindow = new google.maps.InfoWindow();

  function setMarkerPoints(map) {
    var bounds = new google.maps.LatLngBounds();


    $.ajax({
      type: "GET",
      url: 'dohvati_trgovine.php',
      dataType: "json",
      success: function(data) {
          
        if (data.length !== 0) {

            //Prolaženje kroz json ispis 
          $.each(data, function(i, data) {
              console.log(data);
            
            var latLng = new google.maps.LatLng(data.sirina, data.duzina);
            bounds.extend(latLng);

            // Stvaranje markera 
            var marker = new google.maps.Marker({
              position: latLng,
              map: map,
              title: data.sirina
            });


            var windowContent = '<div style="background-color: #0066cc"><h3>' + data.sirina + '</h3>' +
              '<p>' + data.duzina + '</p></div>';

            // Dodavanje klika na marker - info
            infobox = new InfoBox({
              content: infoWindow.setContent(windowContent),
              alignBottom: true,
              pixelOffset: new google.maps.Size(-160, -45)
            });

            google.maps.event.addListener(marker, 'click', function() {

              // Otvaranje informacija o marker
              infobox.open(map, marker);
              infobox.setContent(windowContent);
              map.panTo(marker.getPosition());
              infobox.show();
            });
            google.maps.event.addListener(map, 'click', function() {
              infobox.setMap(null);
            });
          });
           map.setCenter(start_point);
          map.fitBounds(bounds);

        }

      }
      
    });
    

  }
  setMarkerPoints(map);

}


google.maps.event.addDomListener(window, 'load', renderGoogleMap);