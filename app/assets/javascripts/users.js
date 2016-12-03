
$(function () {
  $(".js-next").on("click", function() {
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/users/" + nextId + ".json", function(data) {
 
      var user = data["user"];
      $(".userName").text("User: " + user["name"]);
      $(".userEmail").text("Email: " + user["email"]);

      // re-set the id to current on the link
      $(".js-next").attr("data-id", user["id"]);
      // re-set the reviews to blank
      $("#inject").html("");

    });
    event.preventDefault();
  });


// this works to load the users most recent review. 
  $(".js-reviews").on("click", function() {

    var nextId = parseInt($(".js-next").attr("data-id"));
    $.get("/users/" + nextId + ".json", function(data) {
 
      var user = data["user"];
      $("#inject").text(user["reviews"][user.reviews.length-1]["comment"]);

    });
    event.preventDefault();
  });
  // trying to load all the users reviews
$(".all-reviews").on("click", function(e) {
$(".all-reviews").hide().after('<%= j render("reviews/user_list") %>');
e.preventDefault();

})
});
