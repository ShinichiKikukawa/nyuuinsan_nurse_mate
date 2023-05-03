document.addEventListener("turbolinks:load", () => {
  $(".image-thumbnail").on("click", function () {
    let imageUrl = $(this).data("large-image-url");
    $("#image-modal img").attr("src", imageUrl);
    $("#image-modal").fadeIn();
  });

  $("#image-modal").on("click", function () {
    $(this).fadeOut();
  });
});
console.log("test")