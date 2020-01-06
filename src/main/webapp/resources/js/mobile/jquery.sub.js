// 서브페이지에서 0.5초간의 로딩 페이지 호출 스크립트



$(document).ready( function() {
	// * ------------------------------------------------------------
	// * 햄버거 메뉴 / Dim Bg
	$('.toggle-policy button').click(function(){
		
		$('.policy').toggleClass('active');
		var toggleBtn = $('.toggle-policy img');

		var toggleOn = "/assets/img/contents/btn_toggle.jpg";
		var toggleOff = "/assets/img/contents/btn_toggle_on.jpg";

		toggleBtn.attr('src', toggleBtn.attr('src') == toggleOff ? toggleOn : toggleOff);
		
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
	var slidesToShow = 3;
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
