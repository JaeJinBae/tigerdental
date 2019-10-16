$(document).ready( function() {
	$('img[usemap]').rwdImageMaps();

	// * ------------------------------------------------------------
	// * GNB

	/*
	var headerHeight = $('#header').outerHeight();
	$('#gnb').css('top', headerHeight);
	$(window).resize(function() {
		var headerHeight = $('#header').outerHeight();
		$('#gnb').css('top', headerHeight);
	});
	*/

	$('#hamburger').click(function(){
		//$(this).toggleClass('active');
		$('.gnb-dim').fadeToggle();
		$('#gnb').slideToggle();
	});

	$('.gnb-close').click(function(){
		$('.gnb-dim').fadeOut();
		$('#gnb').slideUp();
	});
	

	
	$('#gnb li.gnb > button').click(function(){
		$(this).next('ul').slideToggle();
		$(this).parents().siblings('li').children('ul').slideUp();
	});

	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * SCROLL TOP
	var scrollTop = $(".scroll-top");

	$(window).scroll(function() {
	// declare variable
	var topPos = $(this).scrollTop();

	// if user scrolls down - show scroll to top button
	if (topPos > 100) {
	  $(scrollTop).css("opacity", "1");

	} else {
	  $(scrollTop).css("opacity", "0");
	}

	}); // scroll END

	$("a.top").click(function() {
		$("html, body").animate({ scrollTop: 0 }, 500);
		return false;
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * Bread Crumb 슬라이드 다운/업 에니메이션
	$('#breadcrumb li.gnb button, #breadcrumb li.lnb button').click(function(){
		$(this).toggleClass('active');
		$(this).parents().siblings('li').children('ul').slideUp();
		$(this).next('ul').slideToggle();
	});
	// * ------------------------------------------------------------


	$('.toggle-button').on('click', function() {
		$('#quick-counsel').toggleClass('active');
		$(this).toggleClass('active');
	});

	$('.btn-private').on('click', function() {
		$('.pop-private').fadeIn();
	});

	$('.pop-close').on('click', function() {
		$('.pop-private').fadeOut();
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