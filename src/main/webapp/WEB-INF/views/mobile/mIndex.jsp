<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!--[ 웹사이트 타이틀 정의 ]****************************************************************************	-->
<title>타이거치과의원</title>
<!--[ 문자 인코딩 선언 ]*******************************************************************************	-->
<meta charset="utf-8">
<!--[ 지시문 선언 ]************************************************************************************	-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="imagetoolbar" content="no"> 
<!-- [ 문서정보 ]**************************************************************************************	-->
<meta name="title" content="타이거치과의원">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="TheWeb">
<meta name="robots" content="index,follow">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<!-- [ Facebook OpenGraph ]***************************************************************************	-->
<meta property="og:type" content="website">
<meta property="fb:app_id" content="369427140237541">
<meta property="og:url" content="http://tigerdental.co.kr/html">
<meta property="og:title" content="타이거치과의원">
<meta property="og:description" content="">
<meta property="og:image" content="http://tigerdental.co.kr/resources/img/common/theme/logo.png">
<meta property="og:image:alt" content="">
<!-- [ Twitter Card Type ]****************************************************************************	-->
<meta name="twitter:card" content="summary">
<meta name="twitter:domain" content="http://tigerdental.co.kr">
<meta name="twitter:title" content="타이거치과의원">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="http://tigerdental.co.kr/resources/img/common/theme/logo.png">
<!-- [ 네이버 웹마스터도구 인증 ]************************************************************************	-->
<meta name="naver-site-verification" content="#"> 
<!-- [ 표준 페이지 및 문서 파비콘 설정 ]*****************************************************************	-->

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/common/favicon.ico">
<!-- [ 공통 CSS | 분류 : @ = 스타일, # = 자바스크립트]***************************************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.reset.css"><!-- @1	 CSS 초기화			**삭제/수정금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.common.css"><!-- @2  CSS 공통	 		**삭제금지/수정금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.fonts.css"><!-- @3  CSS 폰트  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.popup.css"><!-- @4  CSS 팝업  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.board.button.css"><!-- @5  CSS 버튼  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.board.paging.css"><!-- @6  CSS 페이징  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick.css"><!-- @7  CSS 플러그인 Slick -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick-theme.css"><!-- @8  CSS 플러그인 Slick Theme -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/wow/animate.css"><!-- @9  CSS 플러그인 Animate CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/twentytwenty/twentytwenty.css"><!-- @10 CSS 플러그인  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mobile/theme/style.layout.css"><!-- @11 CSS 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<!-- [ 메인 CSS ]*************************************************************************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mobile/theme/style.main.css"><!-- @ CSS 메인 -->
<!-- [ 서브 CSS ]*************************************************************************************	-->
<!-- [ 맴버쉽 CSS | 회원가입, 로그인, 계정정보 찾기, 약관동의, 개인정보 취급방침  ]**************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member/mobile/theme/style.member.css"><!-- @ CSS 맴버쉽 -->
<!-- [ 플러그인 ]*************************************************************************************	-->
<script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR6T42597717931&amp;py=0&amp;gd=dgc12&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1571230725091"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.1.12.0.min.js"></script><!-- #1 JS Jquery 1.12.0  -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.1.js"></script><!-- #2 JS 플러그인 Jquery UI  -->
<script src="${pageContext.request.contextPath}/resources/js/fontawesome/js/fontawesome-all.min.js"></script><!-- #3 JS 플러그인 fontawesome -->
<script src="${pageContext.request.contextPath}/resources/js/slick/slick.js"></script><!-- #4 JS 플러그인 Slick -->
<script src="${pageContext.request.contextPath}/resources/js/wow/wow.min.js"></script><!-- #5 JS 플러그인 Wow -->
<script src="${pageContext.request.contextPath}/resources/js/wow/scrollspy.js"></script><!-- #6 JS 플러그인 Scrollspy -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.rwdImageMaps.js"></script><!-- #7 JS 플러그인 rwdImageMaps -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.modernizr.js"></script><!-- #8 JS 플러그인 modernizr -->
<!-- [ 메인 JS ]*************************************************************************************	-->
<script src="${pageContext.request.contextPath}/resources/js/mobile/jquery.main.js"></script><!-- # JS 메인 -->
<!-- [ 공통 JS ]*************************************************************************************	-->
<script src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.layer.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/mobile/jquery.common.js"></script><!-- # JS 공통 -->
<!-- ***********************************************************************************************	-->
<style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style><link rel="canonical" href="http://tigerdental.co.kr">
</head>
<body>

<!-- 
intro.mp4 : 5:56 병원 인트로(소개) 영상(피피티, 병원소개, 진료소개)
cerec.mp4 : 1:00 세렉영상(물, 슬로우모션)
cerec02.mp4 : :40 세렉영상(드릴, 가루날림)
speed.mp4 : :49 세렉 스피드 파이어
visual_media.mp4 : 1:04 타이거치과 병원 홍보영상(전경, 실내, 호랑이)
visual_media02 : :59 CT스캔, 3D스캔, 첫화면 남자 뒷통수
visual_media03 : :40 교정, 첫화면 교정 사진 롤링
visual_media04 : 2:31 세렉 물,드릴 합친 영상
visual_media05 : 1:30 세렉, 드릴(브릿지처럼 이빨을 여러개 깍는 동영상), 조명
-->

<div id="media-popup">
	<div id="media-popup01" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/intro.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup02" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/cerec.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup03" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/cerec02.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup04" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/speed.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup05" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup06" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media02.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup07" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media03.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup08" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media04.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup09" class="media-popup">
		<video controls="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media05.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup10" class="media-popup">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/ffV3LN0R8n0" frameborder="0" allow="encrypted-media" allowfullscreen=""></iframe>
	</div>

	<div id="media-popup11" class="media-popup">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/vGxro9MQ5OQ?autoplay=0&amp;rel=0&amp;showsearch=0&amp;loop=1" frameborder="0" allow="encrypted-media" allowfullscreen=""></iframe>
	</div>

	<button class="media-popup-close"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --></button>
</div>


<div id="visual-media">
	
	<div class="inner">
		<div class="visual-media-slogan">
			<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/slogan.png" class="pop visual-media-play" rel="media-popup05">
		</div>

		<div class="visual-media-sns">
			<a href="#" class="visual-media-simbol"><img src="${pageContext.request.contextPath}/resources/img/common/theme/simbol.png" alt=""></a>
			<a href="#" class="visual-media-facebook"></a>
			<a href="#" class="visual-media-instagram"></a>
			<a href="#" class="visual-media-blog"></a>
		</div>
	</div><!-- inner end -->

	<div class="visual-media">
		<video autoplay="" loop="" muted="">
			<source src="${pageContext.request.contextPath}/resources/video/visual_media.mp4" type="video/mp4">
		</video>
	</div><!-- visual-media end -->


	<div class="visual-media-footer">
		<div class="full">
			<a href="/m" class="visual-media-footer-logo"><img src="${pageContext.request.contextPath}/resources/img/common/theme/m_logo_white.png" alt=""></a>
		</div>
	</div><!-- visual-media-footer end -->
	
</div>

<div class="gnb-dim"></div>


<div id="wrap">
	<!-- 해더 시작  -->
	<jsp:include page="include/mHeader.jsp"></jsp:include>
	<!-- 해더 끝  -->

	<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
	<div id="main-container">
	<!--  닫기 [위치 : include_web_footer.html ]  -->
	
		<!-- 메인 비주얼 슬라이드 시작-->
		<div id="visual-slider">
			<div class="full">
				<!-- 1번 슬라이드 -->
				<div class="item">
					<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/visual_slider_bg01.jpg" alt="">
					<div class="object">
						<div class="obj txt01"><img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0101.png" alt=""></div>
						<div class="obj txt02"><a href="/m/494/?pCode=494" class="more"><img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0102.png" alt=""></a></div>
						<div class="obj txt03 pop" rel="media-popup06">
							<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0103.png" alt="">
						</div>
					</div>
				</div>
		
				<!-- 2번 슬라이드 -->
				<div class="item">
					<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/visual_slider_bg02.jpg" alt="">
					<div class="object">
						<div class="obj txt01"><img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0201.png" alt=""></div>
						<div class="obj txt02"><a href="/m/?pCode=497" class="more"><img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0202.png" alt=""></a></div>
						<div class="obj txt03 pop" rel="media-popup06">
							<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/txt0103.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 메인 비주얼 슬라이드 끝-->
		
		
		<div class="section01">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section01.png" alt="" usemap="#section01">
				<map name="section01">
				  <area shape="rect" coords="0,0,208,278" href="/m/?pCode=483">
				  <area shape="rect" coords="207,0,412,278" href="/m/?pCode=522">
				  <area shape="rect" coords="0,278,208,555" href="/m/?pCode=498">
				  <area shape="rect" coords="207,278,412,554" href="/m/?pCode=510">
				</map>
			</div>
		</div>
		
		<div class="section02">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section02.png" alt="" usemap="#section02">
				<map name="section02">
				  <area shape="rect" coords="14,188,170,225" class="pop" rel="media-popup03" title="새창으로 세렉 밀링영상보기">
				  <area shape="rect" coords="177,294,233,352" class="pop" rel="media-popup03" title="새창으로 세렉 밀링영상보기">
				</map>
			</div>
		</div>
		
		<div class="pcode48908">
			<div class="automation">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/sub/theme/483_img_add.png" alt="">
			</div>
		</div>
		
		<div class="section03">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section03.png" alt="" usemap="#section03">
				<map name="section03">
				  <area shape="rect" coords="77,64,336,161" href="/m/?pCode=489">
				</map>
			</div>
		</div>
		
		<div class="section04">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section04.png" alt="">
			</div>
		</div>
		
		<div class="section05">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section05.png" alt="">
			</div>
		</div>
		
		<div class="section06">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section06.png" alt="">
			</div>
		</div>
		<div class="section06">
			<div class="full">
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section07.jpg" alt="">
				<a href="/m/515/?pCode=515"><img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section07_link.jpg" alt=""></a>
				<img src="${pageContext.request.contextPath}/resources/img/mobile/main/theme/section07_blank.jpg" alt="">
			</div>
		</div>
	
	</div> <!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->

	<!-- 빠른상담 신청하기 퀵버튼 시작 -->
	<jsp:include page="include/mQuick.jsp"></jsp:include>
	<!-- 빠른상담 신청하기 퀵버튼 끝 -->

	
	<!-- 진료시간 및 고객센터 시작 -->
	<jsp:include page="include/mBottom.jsp"></jsp:include>
	<!-- 진료시간 및 고객센터 끝 -->

	<!-- 풋터 시작 (style.layout.css) -->
	<jsp:include page="include/mFooter.jsp"></jsp:include>
	<!-- 풋터 끝 (style.layout.css) -->

</div> <!-- #wrap 닫기 -->

<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
<script type="text/javascript">
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_256dd9b01b54";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['dgc12.acecounter.com','8080','AR6T42597717931','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://dgc12.acecounter.com:8080/?uid=AR6T42597717931&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->



</body>
</html>