// $(function(){
// $("a.load_reviews").on("click", function(e){
//   $.get(this.href).success(function(json){

// // clear the OL html (in case there were stale comments)
//       var $ol = $("div.reviews ol")
//       $ol.html("") // emptied the OL
// //     //
// // iterate over each comment within json
//       json.forEach(function(review){
// // with each comment data, append an LI to the OL with the comment content
//         $ol.append("<li>" + review.comment + "</li>");
// // load that response into the HTML of the page.
//    e.preventDefault();
//  })