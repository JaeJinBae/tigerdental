// 서브페이지에서 0.5초간의 로딩 페이지 호출 스크립트
$(window).load(function() {
	setTimeout(function(){ $("#loader-wrapper").fadeOut(); }, 500); // 기본 0.5초로딩 페이지가 보입니다. (문서가 다운로드 될때까지 로딩됩니다.)
});



$(document).ready( function() {
	// * ------------------------------------------------------------
	// * 웹접근성을 위한 바로가기 탭키의 스크롤 부드럽게 이동하는 에니메이션 효과(스피드 0.5초)
	$("#skipnavigation a").click(function(event){            
		event.preventDefault();
		$('html, body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
	// * ------------------------------------------------------------
});
