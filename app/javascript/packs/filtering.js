$(document).on('turbolinks:load', _ => {
  $("#search_box").on('keyup', (event) => {
    const $this = $(event.target);
    const $myInput = $this.val().toLowerCase();
    const $lessonCard = $("#top-wrapper div.lesson-card");

    if(!$myInput) {
      $lessonCard.show();
    } else {
      $lessonCard.hide();
      $lessonCard.each((_, element) => {
        const $this = $(element);
        if ($this.find(".card-title").text().toLowerCase().includes($myInput) ) {
          $this.show();
        }
      });
    }
  });
});


