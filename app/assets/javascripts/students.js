$(document).on('ready page:load', function () {
  $(function() {
    $('.datepicker').datepicker({
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      changeYear: true,
      yearRange: "-70:-0"
    });
  });
});