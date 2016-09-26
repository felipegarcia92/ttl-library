$( document ).ready(function() {
  // Load old ratings
  $(".user-rating").each(
    function() {
      var rating_stars = $(this).siblings("span").text();
      var ratingPlugin = rating(this, rating_stars, 5, null);
    }
  );


  // Activate rating plugin
  var el = document.querySelector('.new-rating-box');
  var currentRating = 0;
  var maxRating= 5;
  var callback = function(rating) {
    $("#comment_rating").val(rating);
  };
  var myRating = rating(el, currentRating, maxRating, callback);
});
