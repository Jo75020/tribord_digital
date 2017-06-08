$(document).ready(function() {
  $('#burger-navbar').on('click', function(event) {
    $(this).prop('id', 'newId');
     $('body').toggleClass('o-hidden');
    $('.mainMenu').toggleClass('mainMenu--active');

    if ($("#burger-navbar").hasClass("blacked-burger")) {
    $('#burger-navbar').removeClass('blacked-burger');
    $('#burger-navbar').addClass('blacked-burger-2');
    }

    if ($("#newId").hasClass("blacked-burger")) {
    $('#newId').removeClass('blacked-burger');
    $('#newId').addClass('blacked-burger-2');
    }

  $('#newId').on('click', function(event) {
    $(this).prop('id', 'burger-navbar');
    $('#newId').addClass('blacked-burger');
    $('#newId').removeClass('blacked-burger-2');
    if ($("#newId").hasClass("blacked-burger-2")) {
    $('#newId').on('click', function(event) {
      $('#newId').removeClass('blacked-burger-2');
    });
    }

  });

  });
  });
