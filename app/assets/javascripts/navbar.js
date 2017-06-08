$(document).ready(function() {
  $('#burger-navbar').on('click', function(event) {
    $('.dropdown').removeClass('dropdown');
       $('body').toggleClass('o-hidden');
      $('.mainMenu').toggleClass('mainMenu--active');
      if ($("#burger-navbar").hasClass("blacked-burger")) {
      $('#burger-navbar').removeClass('blacked-burger');
      $('#burger-navbar').toggleClass('blacked-burger-2');
      }
  });
});
