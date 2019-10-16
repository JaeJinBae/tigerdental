// 메인(index.html)에서만 2초간의 로딩 페이지 호출 스크립트


$(document).ready( function() {

	// * 슬라이더 셋팅 http://kenwheeler.github.io/slick/
	$('#visual-slider').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		speed: 700,
		autoplay: true,
		autoplaySpeed: 5000,
		dots: true,
		arrows: false,
		fade: false,
		cssEase: 'cubic-bezier(1, 0, 0.7, 1)',
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		draggable:false,
		customPaging : function(slider, i) {
			i++;
			var thumb = $(slider.$slides[i]).data();
			return '<button><em>'+i+'</em></button>';
		}
	});


});
