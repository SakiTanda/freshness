function initMap() {
  handler = Gmaps.build('Google');
  handler.buildMap({ 
      provider: {Zoom: 11}, 
      internal: {id: 'map'}
    }, 
    function(){
      markers = handler.addMarkers([
        {
          "lat": 49.280033,
          "lng": -122.983937,
          "infowindow": "Contact me!"
        }
      ]);
      handler.bounds.extendWith(markers);
      //handler.fitMapToBounds();
      handler.getMap().setCenter({lat: 49.280033, lng: -122.983937});
    }
  );
};

// call initMap when page reload
google.maps.event.addDomListener(window, 'page:load', initMap);
// call initMap when page transition
$(document).on('turbolinks:load', initMap);


