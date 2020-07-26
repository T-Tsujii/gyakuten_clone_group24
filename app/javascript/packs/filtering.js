$(function(){
  $("#search_box").keyup(function(){
    var myInput = $(this).val().toLowerCase();
    if(!myInput) {
      $("#top-wrapper div.lesson-card").show();
    } else {
      $("#top-wrapper div.lesson-card").hide();
      var elems = $("#top-wrapper div.lesson-card");

      elems.each(function() {
        if ($(this).find(".card-title").text().toLowerCase().indexOf(myInput) > -1 ) {
          $(this).show();
        }
      });
    }
  });
});