$(function () {
$("a.userReviews").on("click", function(e){
  // ajax
  $.ajax({
    method: "GET",
    url: this.href
  }).done(function(data) {
      //get a response
    $("#inject").append(data)
  });


  //load response into the page

  e.preventDefault();
})
});