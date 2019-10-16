$(document).ready(function(){
	$('img[usemap]').rwdImageMaps();

	// * ------------------------------------------------------------
	// * 
	 $( window ).scroll(function() {
		 var defaultPosition = $('#visual-media').height();
		 if($(window).scrollTop() > defaultPosition){
			 $( "#header" ).addClass("fixed");
		 } else {
			 $( "#header" ).removeClass("fixed");
		 }
		 
	 });
	// * ------------------------------------------------------------


	$('.thumbnail img').each(function(){           // Note: {.post-thumb img} is css selector of the image tag
		var t = $(this),
			s = 'url(' + t.attr('src') + ')',
			p = t.parent(),
			d = $('<div></div>'),
			h = p.height();
		t.hide();
		p.append(d);
		d.css({
			'height'                : h,          // Note: You can change it for your needs
			'background-size'       : 'cover',
			'background-repeat'     : 'no-repeat',
			'background-position'   : 'center',
			'background-image'      : s
		});
	});


	$('.gnb-all').click(function(){
		$('#anb').toggleClass('active');
	});

	$('#gnb .gnb').mouseover(function(){
		$('#anb').removeClass('active');
		$('#gnb').addClass('active');
	});

	$('#gnb .gnb').mouseleave(function(){
		$('#gnb').removeClass('active');
	});


	$(".pop").click(function () {
		$('#media-popup').fadeIn();
        var activePop = $(this).attr("rel");
        $("#" + activePop).fadeIn()
    });

	$("button.media-popup-close").click(function () {
		$('#media-popup').fadeOut();
		$('.media-popup').fadeOut();
		$("video").each(function() {
			$(this).get(0).pause();
		});
    });

});