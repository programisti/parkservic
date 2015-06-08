jQuery(function($) {
  var script = document.createElement('script');
  script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);

  $('#places').dataTable({
    "language": {
      "lengthMenu": "მაჩვენე _MENU_ ჩანაწერი",
      "search": "ძიება",
      "info": "",
      "infoEmpty": "არ მოიძებნა",
      "infoFiltered": "",
      "zeroRecords": "",
      "lengthMenu": "",
      "paginate": {
        "first":      "პირველი",
        "last":       "ბოლო",
        "next":       "შემდეგი",
        "previous":   "წინა"
      }
    }}).columnFilter();
});

function initialize() {
  var map;
  var bounds = new google.maps.LatLngBounds();
  var center = new google.maps.LatLng(41.721223, 44.775080);
  var mapOptions = {
    mapTypeId: 'roadmap',
    setCenter: center
  };

  map = new google.maps.Map(document.getElementById("map"), mapOptions);

  var infoWindow = new google.maps.InfoWindow(), marker, i;
  
  for( i = 0; i < markers.length; i++ ) {
    var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
    bounds.extend(position);
    marker = new google.maps.Marker({
      position: position,
      map: map,
      title: markers[i][0]
    });

    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        map.setCenter(marker.getPosition());
        infoWindow.setContent(infoWindowContent[i][0]);
        infoWindow.open(map, marker);
      }
    })(marker, i));

    map.fitBounds(bounds);
  }

  var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
    this.setZoom(14);
    google.maps.event.removeListener(boundsListener);
  });

}

