$(document).on('turbolinks:load', function() {
  $("#search_box").keyup(function(){
    var $myInput = $(this).val().toLowerCase();
    var $lessonCard = $("#top-wrapper div.lesson-card");
    if(!$myInput) {
      $lessonCard.show();
    } else {
      $lessonCard.hide();

      $lessonCard.each(function() {
        if ($(this).find(".card-title").text().toLowerCase().indexOf($myInput) > -1 ) {
          $(this).show();
        }
      });
    }
  });
});