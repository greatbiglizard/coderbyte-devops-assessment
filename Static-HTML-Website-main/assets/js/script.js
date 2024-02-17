(function($) {
	
	"use strict";

	//Revolution Slider
	if($('.main-slider .tp-banner').length){
		
		var MainSlider = $('.main-slider');
		var strtHeight = MainSlider.attr('data-start-height');
		var slideOverlay =  "'"+ MainSlider.attr('data-slide-overlay') +"'";
		
		$('.main-slider .tp-banner').show().revolution({
		  dottedOverlay: slideOverlay,
		  delay:3000,
		  startwidth:1200,
		  startheight:strtHeight,
		  hideThumbs:600,

		  thumbWidth:80,
		  thumbHeight:50,
		  thumbAmount:5,

		  navigationType:"bullet",
		  navigationArrows:"none",
		  navigationStyle:"preview2",

		  touchenabled:"on",
		  onHoverStop:"off",

		  swipe_velocity: 0.7,
		  swipe_min_touches: 1,
		  swipe_max_touches: 1,
		  drag_block_vertical: false,

		  parallax:"mouse",
		  parallaxBgFreeze:"on",
		  parallaxLevels:[7,4,3,2,5,4,3,2,1,0],

		  keyboardNavigation:"off",

		  navigationHAlign:"center",
		  navigationVAlign:"bottom",
		  navigationHOffset:0,
		  navigationVOffset:50,

		  soloArrowLeftHalign:"left",
		  soloArrowLeftValign:"center",
		  soloArrowLeftHOffset:20,
		  soloArrowLeftVOffset:0,

		  soloArrowRightHalign:"right",
		  soloArrowRightValign:"center",
		  soloArrowRightHOffset:20,
		  soloArrowRightVOffset:0,

		  shadow:0,
		  fullWidth:"on",
		  fullScreen:"off",

		  spinner:"spinner4",

		  stopLoop:"off",
		  stopAfterLoops:-1,
		  stopAtSlide:-1,

		  shuffle:"off",

		  autoHeight:"off",
		  forceFullWidth:"on",

		  hideThumbsOnMobile:"on",
		  hideNavDelayOnMobile:1500,
		  hideBulletsOnMobile:"on",
		  hideArrowsOnMobile:"on",
		  hideThumbsUnderResolution:0,

		  hideSliderAtLimit:0,
		  hideCaptionAtLimit:0,
		  hideAllCaptionAtLilmit:0,
		  startWithSlide:0,
		  videoJsPath:"",
		  fullScreenOffsetContainer: ""
	  });
	}



	//client slider
	jQuery("#clientCarousel").owlCarousel({
	  autoplay: true,
	  lazyLoad: true,
	  loop: true,
	  margin: 55,
	   /*
	  animateOut: 'fadeOut',
	  animateIn: 'fadeIn',
	  */
	  responsiveClass: true,
	  autoHeight: true,
	  autoplayTimeout: 6000,
	  smartSpeed: 800,
	  nav: false,
	  dots: false,
	  responsive: {
	    0: {
	      items: 2
	    },

	    600: {
	      items: 3
	    },

	    1024: {
	      items: 5
	    },

	    1366: {
	      items: 5
	    }
	  }
	});



	// scroll body to 0px on click
    $('#back-to-top').click(function () {
        $('#back-to-top').tooltip('hide');
        $('body,html').animate({
            scrollTop: 0
        }, 1000);
        return false;
    });



    // Clients Gallery
    var val = $(".filter-button.active").attr('data-filter');     
    $(".filter_image").not('.'+val).hide(); 
	$(".filter-button").click(function(){
        var value = $(this).attr('data-filter');        

            $(".filter_image").not('.'+value).hide('3000');       
            $('.filter_image').filter('.'+value).show('3000');
        	$(".filter_image").not('.'+value).hide('3000');

	        	if ($(".filter-button").removeClass("active")) {
			$(this).removeClass("active");
		    }
		    	$(this).addClass("active");
	});




/* datepicker */

$(function(){
$('.input-group.date').datepicker({
    orientation: "auto left",
    forceParse: false,
    autoclose: true,
    todayHighlight: true,
    toggleActive: true
});
});






})(window.jQuery);
