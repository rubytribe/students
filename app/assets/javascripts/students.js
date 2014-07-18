$(document).on('ready page:load', function () {
  $(function() {
    $('.datepicker').datepicker({
      changeMonth: true,
      changeYear: true,
      showButtonPanel: true,
  	  dateFormat: "yy-mm-dd"
  	  YearRange: "2002:2012" 
    });
  });
});