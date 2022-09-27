$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('header').addClass("sticky");
        $('.feature').addClass("hide");
        $('.brand').addClass("show");
        $('.primary-nav').addClass("primary-nav-filled");
    }
    else{
        $('header').removeClass("sticky");
        $('.feature').removeClass("hide");
        $('.brand').removeClass("show");
        $('.primary-nav').removeClass("primary-nav-filled");
    }
});

$("#down").click(function() {
    $('html, body').animate({
        scrollTop: parseInt($("#chart").offset().top-1)
    }, 1000);
});

// $(document).ready(function() { 
//    $('.contrib-1, .contrib-2, #word3').each(function(fadeInDiv){
//      $(this).delay(fadeInDiv * 500).fadeIn(1000);
//    });
// });

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})