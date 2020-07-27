$(document).on('turbolinks:load', function() {
  $("#search_box").keyup(function() {
    
    const $myInput = $(this).val().toLowerCase();
    const $lessonCard = $("#top-wrapper div.lesson-card");

    if(!$myInput) {
      $lessonCard.show();
    } else {
      $lessonCard.hide();
      $lessonCard.each((i, element) => {
        if ($(element).find(".card-title").text().toLowerCase().includes($myInput) ) {
          $(element).show();
        }
      });
    }
  });
});


