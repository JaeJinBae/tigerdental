// 서브페이지에서 0.5초간의 로딩 페이지 호출 스크립트



$(document).ready( function() {
	// * ------------------------------------------------------------
	// * 웹접근성을 위한 바로가기 탭키의 스크롤 부드럽게 이동하는 에니메이션 효과(스피드 0.5초)
	$("#skipnavigation a").click(function(event){            
		event.preventDefault();
		$('html, body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * Bread Crumb 슬라이드 다운/업 에니메이션
	$('li.gnb button, li.lnb button').click(function(){
		$(this).toggleClass('active');
		$(this).parents().siblings('li').children('ul').slideUp();
		$(this).parents().siblings('li').children('button').removeClass('active');
		$(this).next('ul').slideToggle();
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * 메인페이지 병원둘러보기 스크립트
	$('.preview-slider').slick({
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  arrows: true,
	  fade: false,
	  pauseOnFocus:false,
	  pauseOnHover:false,
	  pauseOnDotsHover:false,
	  draggable:false,
	  prevArrow: '<button class="slick-prev" aria-label="Previous" type="button"><img src="../resources/img/common/theme/btn_prev.png"/></button>',
	  nextArrow: '<button class="slick-next" aria-label="Next" type="button"><img src="../resources/img/common/theme/btn_next.png"/></button>',
	  asNavFor: '.preview-thumb'
	});

	// Set preferred slidesToShow
	var slidesToShow = 6;
	var childElements = $('.preview-thumb').children().length;
	// Check if we can fulfill the preferred slidesToShow
	if( slidesToShow > (childElements-1) ) {
		// Otherwise, make slidesToShow the number of slides - 1
		// Has to be -1 otherwise there is nothing to scroll for - all the slides would already be visible
		slidesToShow = (childElements-1);
}

	$('.preview-thumb').slick({
	  arrows: false,
	  slidesToShow: slidesToShow,
	  slidesToScroll: 1,
	  pauseOnFocus:false,
	  pauseOnHover:false,
	  pauseOnDotsHover:false,
	  draggable:false,
	  asNavFor: '.preview-slider',
	  dots: false,
	  focusOnSelect: true
	});
	// * ------------------------------------------------------------


});
