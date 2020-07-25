$(function(){
  $(document).ready(function(){
    $("#red").css("color","green");
  });
});


$(function(){
  $("#search_box").keyup(function(){
    if(!$(this).val()) {
      $("#top-wrapper div.lesson-card").show();
    } else {
      $("#top-wrapper div.lesson-card").hide();
      $("#top-wrapper div.lesson-card h3:contains(" + this.value + ")").parent().parent().show();
    }
  });
}