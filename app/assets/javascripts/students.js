$(document).on('ready page:load', function () {
  $(function() {
    $('.datepicker').datepicker({
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      changeYear: true,
      yearRange: "-70:-0"
    });
  });
  $(".clickable-row").click(function() {
    window.document.location = $(this).attr("href");
  });
});

