# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements <!-- yes -->
- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
  <!-- on users show page this is occurring to click next and funnel through all the users and to also be able to access their nested resource information without a page reload.  -->
- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
  <!-- on the users show page, you can click a link to render via ajax the index of that users reviews -->
- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
  <!-- all the reviews that show up on both the book and users pages, are nested resources of both books and users -->
- [x] Include at least one link that loads or updates a resource without reloading the page.
  <!-- on books show, you can create a review right on the page, and then it updates into the index list of reviews still on the same page without the page reloading -->
- [x] Translate JSON responses into js model objects.
  <!-- for the new book review, the code to make js model objects is in reviews.new.js.erb, all the new reviews that are created are made into JS model objects -->
- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
<!-- using both handlebars and also moment.js (in different locations) i am transcribing a user readable date from the created_at: json data -->

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message