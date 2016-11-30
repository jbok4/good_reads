$(function () {
$("a.userReviews").on("click", function(e){
  // ajax
  $.ajax({
    method: "GET",
    url: this.href
    //get a response
  }).success(function(data) {
      //load response into the page
    $("#inject").html(data)
  });

  e.preventDefault();
})
});