/*
Enormously frustrating bug
https://stackoverflow.com/questions/17600093/rails-javascript-not-loading-after-clicking-through-link-to-helper
$(document).ready(function( $ ) {

    $('.table-clickable tr').click(function() {
        var href = $(this).find("a").attr("href");
        if(href) {
            window.location = href;
        }
    });

});
*/

$(document).on('turbolinks:load', function() {

$('.table-clickable tr').on('click', (function(){
    var href = $(this).find("a").attr("href");
    if(href){
        window.location = href;
    }
  })
)
});
