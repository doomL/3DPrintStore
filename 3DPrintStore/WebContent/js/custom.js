// javascript Animate onscroll Start
    $(document).ready(function () {
    if (screen.width > 1024) {
    AOS.init({
    easing: 'ease-in-out-sine',
    once: true,
    });
    }
    });

$('#recipeCarousel').carousel({
  interval: 5000
})

$('.portfolio .carousel .carousel-item').each(function(){
    var next = $(this).next();
    if (!next.length) {
    next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
    
    for (var i=0;i<2;i++) {
        next=next.next();
        if (!next.length) {
        	next = $(this).siblings(':first');
      	}
        
        next.children(':first-child').clone().appendTo($(this));
      }
});
$(function() {
	  $("input.decimal").bind("change keyup input", function() {
	    var position = this.selectionStart - 1;
	    //remove all but number and .
	    var fixed = this.value.replace(/[^0-9\.]/g, "");
	    if (fixed.charAt(0) === ".")
	      //can't start with .
	      fixed = fixed.slice(1);

	    var pos = fixed.indexOf(".") + 1;
	    if (pos >= 0)
	      //avoid more than one .
	      fixed = fixed.substr(0, pos) + fixed.slice(pos).replace(".", "");

	    if (this.value !== fixed) {
	      this.value = fixed;
	      this.selectionStart = position;
	      this.selectionEnd = position;
	    }
	  });

	  $("input.integer").bind("change keyup input", function() {
	    var position = this.selectionStart - 1;
	    //remove all but number and .
	    var fixed = this.value.replace(/[^0-9]/g, "");

	    if (this.value !== fixed) {
	      this.value = fixed;
	      this.selectionStart = position;
	      this.selectionEnd = position;
	    }
	  });
	});

