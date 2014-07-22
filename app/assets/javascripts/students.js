$(document).on('ready page:load', function () {
  $(function() {
    $('.datepicker').datepicker({
      changeMonth: true,
      changeYear: true,
      showButtonPanel: true,
      yearRange: "-50:-0",
  	  dateFormat: "yy-mm-dd" 
    });
  });
});