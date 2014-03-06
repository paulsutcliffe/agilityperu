gm_init = ->
  gm_center = new google.maps.LatLng(-12.085317,-76.89065)
  gm_map_type = google.maps.MapTypeId.ROADMAP
  map_options = {center: gm_center, zoom: 17, mapTypeId: gm_map_type, scrollwheel: false}
  new google.maps.Map(@map_canvas,map_options);


$ ->
  map = gm_init()
  # Drop marker in the same location
  marker = new google.maps.Marker
    map: map
    animation: google.maps.Animation.DROP
    position: new google.maps.LatLng(-12.085317,-76.89065)
    icon: '/assets/gmaps-marker-186a761a2c94865c8c05a60334b8a106.png'
