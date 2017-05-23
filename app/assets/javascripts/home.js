$(document).ready(function() {

  $('#go-who-are-ya').on('click', function(event) {
  var page = '.who-are-ya'; // Page cible
        var speed = 350; // Durée de l'animation (en ms)
        $('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
        return false;
  });

    $('#burger-navbar').removeClass('blacked-burger');
    var topOfOthDiv = $("#logo-change").offset().top;
    $(window).scroll(function() {
        if($(window).scrollTop() > topOfOthDiv) { //scrolled past the other div?
            $('#burger-navbar').addClass('blacked-burger');
        }
    });

    var topOfOthDiv = $("#logo-change").offset().top;
    $(window).scroll(function() {
        if($(window).scrollTop() < topOfOthDiv) { //scrolled past the other div?
        $('#burger-navbar').removeClass('blacked-burger');
        }
    });
});
