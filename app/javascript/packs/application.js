require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// Bootstrapで必要なファイルを以下追加
require("bootstrap/dist/js/bootstrap")

document.addEventListener('turbolinks:load', function() {
  document.getElementById("search_box").addEventListener('keyup',function(){
    document.getElementById("search_trigger").click();
  });
})

require("@fortawesome/fontawesome-free/js/all")