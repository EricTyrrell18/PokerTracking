/*
 * When a table's clicked, follow the link
 *
*/

$("[data-form-prepend]").click(function(e) {
  var obj = $($(this).attr("data-form-prepend"));
  obj.find("input, select, textarea").each(function() {
    $(this).attr("name", function() {
      return $(this)
        .attr("name")
        .replace("new_record", new Date().getTime());
    });
  });
  obj.insertBefore(this);
  return false;
});

$(document).ready(function() {


    $('#sessions tr').click(function() {
        var href = $(this).find("a").attr("href");
        if(href) {
            window.location = href;
        }
    });

});
