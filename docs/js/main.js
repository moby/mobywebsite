$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('header').addClass("sticky");
        // $('.primary-nav').addClass("nav-fill");
        $('.feature').addClass("hide");
        $('.brand').addClass("show");
         // $('.chart').removeClass("hide");
    }
    else{
        $('header').removeClass("sticky");
        // $('.primary-nav').removeClass("nav-fill");
        $('.feature').removeClass("hide");
        $('.brand').removeClass("show");
        // $('.chart').addClass("show");
    }
});

$("#down").click(function() {
    $('html, body').animate({
        scrollTop: parseInt($("#chart").offset().top-100)
    }, 1000);
});

$("#up").click(function() {
    $('html, body').animate({
        scrollTop: parseInt($("header").offset().top)
    }, 2000);
});

$(document).ready(function() { 
   $('.contrib-1, .contrib-2, #word3').each(function(fadeInDiv){
     $(this).delay(fadeInDiv * 500).fadeIn(1000);
   });
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})