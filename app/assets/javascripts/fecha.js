var ready;
ready = function() {
      $('#carousel-generic').carousel({
        interval: 3000,
        wrap: true
        });
      $('#carousel-auspiciadores').carousel({
       interval: 2000,
        wrap: true
        });
    $(function () {
      	var austDay = new Date();
      	austDay = new Date(2014, 4-1, 03);
      	$('#contador').countdown({until: austDay, format: 'dHM'});
      });
}
  $(document).ready(ready);
$(document).on('page:load', ready);
