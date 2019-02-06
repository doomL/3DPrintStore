$(document).ready(function(){  
  $(".mappa").click(function(e) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: $($.attr(this, 'href')).offset().top
    }, 2000);
  });
});