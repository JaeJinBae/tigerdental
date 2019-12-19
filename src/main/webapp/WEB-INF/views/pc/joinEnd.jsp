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
<!-- [ Facebook OpenGraph ]***************************************************************************	-->
<meta property="og:type" content="website">
<meta property="fb:app_id" content="369427140237541">
<meta property="og:url" content="http://tigerdental.co.kr/html">
<meta property="og:title" content="타이거치과의원">
<meta property="og:description" content="">
<meta property="og:image" content="http://tigerdental.co.kr/assets/img/common/logo.png">
<meta property="og:image:alt" content="">
<!-- [ Twitter Card Type ]****************************************************************************	-->
<meta name="twitter:card" content="summary">
<meta name="twitter:domain" content="http://tigerdental.co.kr">
<meta name="twitter:title" content="타이거치과의원">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="http://tigerdental.co.kr/assets/img/common/logo.png">
<!-- [ 네이버 웹마스터도구 인증 ]************************************************************************	-->
<meta name="naver-site-verification" content="#">
<!-- [ 표준 페이지 및 문서 파비콘 설정 ]*****************************************************************	-->
<style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style><link rel="canonical" href="http://tigerdental.co.kr">
<link rel="shortcut icon" href="/assets/img/common/favicon.ico">
<!-- [ 공통 CSS | 분류 : @ = 스타일, # = 자바스크립트]***************************************************	-->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.reset.css">										<!-- @1	 CSS 초기화			**삭제/수정금지** -->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.common.css">									<!-- @2  CSS 공통	 			**삭제금지/수정금지** -->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.fonts.css">										<!-- @3  CSS 폰트  -->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.popup.css">										<!-- @4  CSS 팝업  -->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.board.button.css">								<!-- @5  CSS 버튼  -->
<link rel="stylesheet" type="text/css" href="/assets/css/common/style.board.paging.css">								<!-- @6  CSS 페이징  -->
<link rel="stylesheet" type="text/css" href="/assets/js/slick/slick.css">												<!-- @7  CSS 플러그인 Slick -->
<link rel="stylesheet" type="text/css" href="/assets/js/slick/slick-theme.css">										<!-- @8  CSS 플러그인 Slick Theme -->
<link rel="stylesheet" type="text/css" href="/assets/js/wow/animate.css">												<!-- @9  CSS 플러그인 Animate CSS -->
<link rel="stylesheet" type="text/css" href="/assets/css/web/theme/style.layout.css">									<!-- @10 CSS 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<link rel="stylesheet" type="text/css" href="/assets/js/twentytwenty/twentytwenty.css">								<!-- @9  CSS 플러그인  -->
<!-- [ 메인 CSS ]*************************************************************************************	-->
<link rel="stylesheet" type="text/css" href="/assets/css/web/theme/style.layout.css">									<!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="/assets/css/web/theme/style.board.css">									<!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="/assets/css/web/theme/style.support.css">								<!-- @ CSS 서포트 -->
<link rel="stylesheet" type="text/css" href="/assets/css/web/theme/style.sub.css">									<!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="/assets/js/filestyle/jquery.filestyle.css">								<!-- @ CSS 플러그인 파일첨부 -->
<!-- [ 맴버쉽 CSS | 회원가입, 로그인, 계정정보 찾기, 약관동의, 개인정보 취급방침  ]**************************	-->
<link rel="stylesheet" type="text/css" href="/assets/css/member/web/theme/style.member.css">							<!-- @ CSS 맴버쉽 -->
<!-- [ 플러그인 ]*************************************************************************************	-->
<script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR6T42597717931&amp;py=0&amp;gd=dgc12&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1576723959808"></script><script src="/assets/js/jquery.1.12.0.min.js"></script>																	<!-- #1 JS Jquery 1.12.0  -->
<script src="/assets/js/jquery-ui-1.11.1.js"></script>																	<!-- #2 JS 플러그인 Jquery UI  -->
<script src="/assets/js/fontawesome/js/fontawesome-all.min.js"></script>												<!-- #3 JS 플러그인 fontawesome -->
<script src="/assets/js/slick/slick.js"></script>																		<!-- #4 JS 플러그인 Slick -->
<script src="/assets/js/wow/wow.min.js"></script>																		<!-- #5 JS 플러그인 Wow -->
<script src="/assets/js/wow/scrollspy.js"></script>																		<!-- #6 JS 플러그인 Scrollspy -->
<script src="/assets/js/jquery.rwdImageMaps.js"></script>																<!-- #7 JS 플러그인 rwdImageMaps -->

<script src="/assets/js/jquery.modernizr.js"></script>																	<!-- #8 JS 플러그인 modernizr -->
<!-- [ 메인 JS ]*************************************************************************************	-->
<!-- [ 서브 JS ]*************************************************************************************	-->
<script src="/assets/js/web/jquery.sub.js"></script>																	<!-- # JS 서브  -->
<script src="/assets/js/function.admin.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/function.calendar.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/function.date.js"></script>																		<!-- # JS 필수 -->
<script src="/assets/js/function.default.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/function.user.js"></script>																		<!-- # JS 필수 -->
<script src="/assets/js/function.validate.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/filestyle/jquery.filestyle.js"></script>														<!-- # JS 플러그인 파일첨부 -->
<!-- [ 공통 JS ]*************************************************************************************	-->
<script src="/assets/js/function.default.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/function.layer.js"></script>																	<!-- # JS 필수 -->
<script src="/assets/js/web/jquery.common.js"></script>																	<!-- # JS 공통 -->
<!-- ***********************************************************************************************	-->

<!-- 9이하일때 브라우져 다운로드 안내 시작 -->
<!--[if lte IE 9]>
	<div id="old-browser-popup">
		<div class="old-browser-container">
			<div>
				<img src="/assets/img/common/theme/warning.png"/><br/>
				<img src="/assets/img/common/theme/update.png"/>
			</div>
			<a href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads">Explorer11 [1]</a>
			<a href="http://software.naver.com/software/summary.nhn?softwareId=GWS_001678" target="_blank">Explorer11 [2]</a>
			<a href="https://www.google.com/intl/ko/chrome/browser/" target="_blank">Chrome</a>
			<a href="http://support.apple.com/ko_KR/downloads/#safari" target="_blank">Safari</a>
			<a href="http://www.mozilla.or.kr/ko/" target="_blank">Firefox</a>
		</div>
	</div>
	<![endif]-->
<!-- //9이하일때 브라우져 다운로드 안내 끝 -->

<!-- 6이하일때 안내 창 시작 -->
<!--[if lt IE 6]>
	<script type=text/javascript>
		alert("고객님이 사용하시는 브라우저는 지원하지 않습니다. \n\n 최신 브라우저를 이용하여 주십시오.");
		location.href = "https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads";
	</script>
<![endif]-->
<!-- 6이하일때 안내 창 끝 -->

<!--[if lt IE 9]>
<script src="/assets/js/jquery.html5shiv.js"></script>
<![endif]-->

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
			<source src="/assets/media/intro.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup02" class="media-popup">
		<video controls="">
			<source src="/assets/media/cerec.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup03" class="media-popup">
		<video controls="">
			<source src="/assets/media/cerec02.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup04" class="media-popup">
		<video controls="">
			<source src="/assets/media/speed.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup05" class="media-popup">
		<video controls="">
			<source src="/assets/media/visual_media.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup06" class="media-popup">
		<video controls="">
			<source src="/assets/media/visual_media02.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup07" class="media-popup">
		<video controls="">
			<source src="/assets/media/visual_media03.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup08" class="media-popup">
		<video controls="">
			<source src="/assets/media/visual_media04.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup09" class="media-popup">
		<video controls="">
			<source src="/assets/media/visual_media05.mp4" type="video/mp4">
		</video>
	</div>
	<div id="media-popup10" class="media-popup">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/ffV3LN0R8n0" frameborder="0" allow="encrypted-media" allowfullscreen=""></iframe>
	</div>
	<button class="media-popup-close"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --></button>
</div>

<!-- SkipNavigation 시작 -->
<div id="skipnavigation">
	<ul>
					<li><a href="#sub-container">본문 바로가기 <svg class="svg-inline--fa fa-arrow-circle-right fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="arrow-circle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8c137 0 248 111 248 248S393 504 256 504 8 393 8 256 119 8 256 8zm-28.9 143.6l75.5 72.4H120c-13.3 0-24 10.7-24 24v16c0 13.3 10.7 24 24 24h182.6l-75.5 72.4c-9.7 9.3-9.9 24.8-.4 34.3l11 10.9c9.4 9.4 24.6 9.4 33.9 0L404.3 273c9.4-9.4 9.4-24.6 0-33.9L271.6 106.3c-9.4-9.4-24.6-9.4-33.9 0l-11 10.9c-9.5 9.6-9.3 25.1.4 34.4z"></path></svg><!-- <i class="fas fa-arrow-circle-right"></i> --></a></li>
			</ul>
</div>
<!-- SkipNavigation 끝 -->



<div id="wrap">
<!-- 해더 시작  -->
<header id="header" class="fixed">
	<div class="header-group">
		<ul class="header-group-call">
			<li>
				<img src="/assets/img/common/theme/call.png" alt="">


			</li>
		</ul>

		<ul class="header-group-member">
			<li>
									<img src="/assets/img/common/theme/member_arrow.png" alt=""><a href="/login" class="login trn">LOGIN</a>
					<img src="/assets/img/common/theme/member_arrow.png" alt=""><a href="/join" class="join trn">JOIN</a>
				



				<a href="https://www.facebook.com/stigerdental/" target="_blank" data-menu="페이스북"><img src="/assets/img/common/theme/sns01.png" alt=""></a>
				<a href="https://www.instagram.com/tigerdental/" target="_blank" data-menu="인스타그램"><img src="/assets/img/common/theme/sns03.png" alt=""></a>
				<a href="https://blog.naver.com/tigerdental" target="_blank" data-menu="블로그"><img src="/assets/img/common/theme/sns02.png" alt=""></a>
			</li>
		</ul>

		<div id="logo"><a href="/html"><img src="/assets/img/common/theme/logo.png" alt=""></a></div>

		<ul class="header-group-quick">
			<li class="gnb-all">
				<button class="trn">
					<img src="/assets/img/common/theme/btn_gnb.png" alt="">
				</button>
			</li>
		</ul>
	</div>
	<div id="gnb" class="">
		<ul><li class="gnb ">
				<a href="/489/?pCode=489" data-text="타이거치과"><span>타이거치과</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/489/?pCode=489" data-text="타이거의 특별함"><span>타이거의 특별함</span></a>
					</li><li class="lnb ">
							<a href="/490/?pCode=490" data-text="의료진 소개"><span>의료진 소개</span></a>
					</li><li class="lnb ">
							<a href="/491/?pCode=491" data-text="진료안내"><span>진료안내</span></a>
					</li><li class="lnb ">
							<a href="/492/?pCode=492" data-text="내부시설"><span>내부시설</span></a>
					</li><li class="lnb ">
							<a href="/493/?pCode=493" data-text="찾아오시는 길"><span>찾아오시는 길</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/483/?pCode=483" data-text="퀵 임플란트"><span>퀵 임플란트</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/483/?pCode=483" data-text="타이거치과 임플란트 차별성"><span>타이거치과 임플란트 차별성</span></a>
					</li><li class="lnb ">
							<a href="/494/?pCode=494" data-text="HERI 임플란트"><span>HERI 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/497/?pCode=497" data-text="3D 네비게이션 임플란트"><span>3D 네비게이션 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/496/?pCode=496" data-text="자외선 임플란트"><span>자외선 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/495/?pCode=495" data-text="1DAY 임플란트"><span>1DAY 임플란트</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/504/?pCode=504" data-text="퀵 치아성형"><span>퀵 치아성형</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/504/?pCode=504" data-text="타이거치과 심미치료 차별성"><span>타이거치과 심미치료 차별성</span></a>
					</li><li class="lnb ">
							<a href="/505/?pCode=505" data-text="타라미 1.5"><span>타라미 1.5</span></a>
					</li><li class="lnb ">
							<a href="/506/?pCode=506" data-text="타세라 1.5"><span>타세라 1.5</span></a>
					</li><li class="lnb ">
							<a href="/507/?pCode=507" data-text="타지르 1.5"><span>타지르 1.5</span></a>
					</li><li class="lnb ">
							<a href="/508/?pCode=508" data-text="오스템 치아미백"><span>오스템 치아미백</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/519/?pCode=519" data-text="퀵 디지털교정"><span>퀵 디지털교정</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/519/?pCode=519" data-text="타이거치과 교정 차별성"><span>타이거치과 교정 차별성</span></a>
					</li><li class="lnb ">
							<a href="/520/?pCode=520" data-text="퀵 디지털 교정"><span>퀵 디지털 교정</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/509/?pCode=509" data-text="예방·일반진료"><span>예방·일반진료</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/509/?pCode=509" data-text="아프지 않은 스케일링"><span>아프지 않은 스케일링</span></a>
					</li><li class="lnb ">
							<a href="/510/?pCode=510" data-text="OBD진단(치주질환 세균분석)"><span>OBD진단(치주질환 세균분석)</span></a>
					</li><li class="lnb ">
							<a href="/511/?pCode=511" data-text="OBT치료(박테리아 테라피)"><span>OBT치료(박테리아 테라피)</span></a>
					</li><li class="lnb ">
							<a href="/512/?pCode=512" data-text="충치치료"><span>충치치료</span></a>
					</li><li class="lnb ">
							<a href="/513/?pCode=513" data-text="사랑니 발치"><span>사랑니 발치</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/514/?pCode=514" data-text="커뮤니티"><span>커뮤니티</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/514/?pCode=514" data-text="공지사항"><span>공지사항</span></a>
					</li><li class="lnb ">
							<a href="/527/?pCode=527" data-text="언론보도"><span>언론보도</span></a>
					</li><li class="lnb ">
							<a href="/515/?pCode=515" data-text="치료사례"><span>치료사례</span></a>
					</li><li class="lnb ">
							<a href="/528/?pCode=528" data-text="치료후기"><span>치료후기</span></a>
					</li><li class="lnb ">
							<a href="/516/?pCode=516" data-text="온라인 상담"><span>온라인 상담</span></a>
					</li></ul></li></ul>	</div>

	<!-- 전체카테고리 시작 -->
	<div id="anb">
		<div class="inner">
		<ul><li class="gnb ">
				<a href="/489/?pCode=489" data-text="타이거치과"><span>타이거치과</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/489/?pCode=489" data-text="타이거의 특별함"><span>타이거의 특별함</span></a>
					</li><li class="lnb ">
							<a href="/490/?pCode=490" data-text="의료진 소개"><span>의료진 소개</span></a>
					</li><li class="lnb ">
							<a href="/491/?pCode=491" data-text="진료안내"><span>진료안내</span></a>
					</li><li class="lnb ">
							<a href="/492/?pCode=492" data-text="내부시설"><span>내부시설</span></a>
					</li><li class="lnb ">
							<a href="/493/?pCode=493" data-text="찾아오시는 길"><span>찾아오시는 길</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/483/?pCode=483" data-text="퀵 임플란트"><span>퀵 임플란트</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/483/?pCode=483" data-text="타이거치과 임플란트 차별성"><span>타이거치과 임플란트 차별성</span></a>
					</li><li class="lnb ">
							<a href="/494/?pCode=494" data-text="HERI 임플란트"><span>HERI 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/497/?pCode=497" data-text="3D 네비게이션 임플란트"><span>3D 네비게이션 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/496/?pCode=496" data-text="자외선 임플란트"><span>자외선 임플란트</span></a>
					</li><li class="lnb ">
							<a href="/495/?pCode=495" data-text="1DAY 임플란트"><span>1DAY 임플란트</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/504/?pCode=504" data-text="퀵 치아성형"><span>퀵 치아성형</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/504/?pCode=504" data-text="타이거치과 심미치료 차별성"><span>타이거치과 심미치료 차별성</span></a>
					</li><li class="lnb ">
							<a href="/505/?pCode=505" data-text="타라미 1.5"><span>타라미 1.5</span></a>
					</li><li class="lnb ">
							<a href="/506/?pCode=506" data-text="타세라 1.5"><span>타세라 1.5</span></a>
					</li><li class="lnb ">
							<a href="/507/?pCode=507" data-text="타지르 1.5"><span>타지르 1.5</span></a>
					</li><li class="lnb ">
							<a href="/508/?pCode=508" data-text="오스템 치아미백"><span>오스템 치아미백</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/519/?pCode=519" data-text="퀵 디지털교정"><span>퀵 디지털교정</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/519/?pCode=519" data-text="타이거치과 교정 차별성"><span>타이거치과 교정 차별성</span></a>
					</li><li class="lnb ">
							<a href="/520/?pCode=520" data-text="퀵 디지털 교정"><span>퀵 디지털 교정</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/509/?pCode=509" data-text="예방·일반진료"><span>예방·일반진료</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/509/?pCode=509" data-text="아프지 않은 스케일링"><span>아프지 않은 스케일링</span></a>
					</li><li class="lnb ">
							<a href="/510/?pCode=510" data-text="OBD진단(치주질환 세균분석)"><span>OBD진단(치주질환 세균분석)</span></a>
					</li><li class="lnb ">
							<a href="/511/?pCode=511" data-text="OBT치료(박테리아 테라피)"><span>OBT치료(박테리아 테라피)</span></a>
					</li><li class="lnb ">
							<a href="/512/?pCode=512" data-text="충치치료"><span>충치치료</span></a>
					</li><li class="lnb ">
							<a href="/513/?pCode=513" data-text="사랑니 발치"><span>사랑니 발치</span></a>
					</li></ul></li><li class="gnb ">
				<a href="/514/?pCode=514" data-text="커뮤니티"><span>커뮤니티</span></a>
					<ul class="lnb-wrap"><li class="lnb ">
							<a href="/514/?pCode=514" data-text="공지사항"><span>공지사항</span></a>
					</li><li class="lnb ">
							<a href="/527/?pCode=527" data-text="언론보도"><span>언론보도</span></a>
					</li><li class="lnb ">
							<a href="/515/?pCode=515" data-text="치료사례"><span>치료사례</span></a>
					</li><li class="lnb ">
							<a href="/528/?pCode=528" data-text="치료후기"><span>치료후기</span></a>
					</li><li class="lnb ">
							<a href="/516/?pCode=516" data-text="온라인 상담"><span>온라인 상담</span></a>
					</li></ul></li></ul>		</div>
	</div>
	<!-- 전체카테고리 끝 -->
</header>
<!-- 해더 끝  -->




<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
<div id="sub-container">
<!--  닫기 [위치 : include_web_footer.html ]  -->



<!-- 서브 비주얼 시작-->
<div id="sub-visual" data-menu="멤버쉽" data-menu-second="회원가입">
	<div class="inner">
			<h2>회원가입</h2>
		</div>
</div>
<!-- 서브 비주얼 끝 -->

<!-- BreadCrumb 시작 -->
<div id="breadcrumb">
	<div class="inner">
		<ul>
			<!-- HOME -->
			<li class="home">
				<a href="/"></a>
			</li>
			<!-- 1차 -->
			<li>
				<button>멤버쉽</button><i></i>
			</li>
			<!-- 2차 -->
			<li>
				<button>회원가입</button>
			</li>
		</ul>
	</div>
</div>
<!-- BreadCrumb 끝 -->

<!-- 타이틀 -->
<div class="member-title">
	회원가입</div>


<div id="join-finish-form">
	<div class="inner">
		<div class="join-finish-cap">
			<div class="celebration"><b>회원가입이 완료</b> 되었습니다.</div>
			<p>
				지금부터 가입하신 아이디(<b>bjj7425</b>)로 웹사이트를 이용하실 수 있습니다.
			</p>
		</div>
		<table class="join-finish-form">
			<tbody>
			<tr>
				<th>이름</th>
				<td>
					배재진				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					bjj7425				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td class="select_wrap">
					1992-07-02				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td class="select_wrap">
					010-2837-7425				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td class="select_wrap">
					bjj7425@naver.com				</td>
			</tr>
			</tbody>
		</table>
	</div>
</div>

<!-- 게시판 버튼 시작 -->
<div class="btn-group-center">
	<div class="inner">
		<div class="brick">
			<button type="button" class="btn btn-submit" onclick="location.href='/'">메인으로</button>
			<button type="button" class="btn btn-cancel" onclick="location.href='/login'">로그인</button>
		</div>
	</div>
</div>
<!-- 게시판 버튼 끝 -->
		<div class="common-banner">
			<div class="full">
				<img src="/assets/img/common/theme/visual_footer_bg.jpg" alt="">
			</div>
		</div>

		<!-- 공통(진료시간, 고객센터, 오시는길) 시작 -->
		<div id="tiger-section06">
			<div class="inner">
				<div class="timetable">
					<h5>진료시간</h5>
					<ul>
						<li><b>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 19:00</li>
						<li><b>화&nbsp;&nbsp;&nbsp;요&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 21:00 (야간)</li>
						<li><b>토&nbsp;&nbsp;&nbsp;요&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 14:00 <span style="letter-spacing:-2px">(점심시간없음)</span></li>
						<li><b>점&nbsp;심&nbsp;시&nbsp;간</b>: 13:00 ~ 14:00</li>
					</ul>
					<p>일·공휴일은 휴진입니다.</p>
					<p>화요일 공휴일 시 목요일 야간 진료</p>
				</div>
				<div class="customer">
					<h5>고객센터</h5>
					<ul>
						<li><img src="/assets/img/web/main/theme/customer_call.png" alt=""></li>
						<!--<li>
							<b>카카오톡상담</b>
							@타이거치과
						</li>-->
					</ul>

					<div class="customer-btn">
						<!--<a href="#" class="btn-kakao"></a>-->
						<a href="/516/?pCode=516" class="btn-counsel">온라인<br>상담 +</a>
					</div>
				</div>
				<div class="location">
					<h5>오시는길</h5>
					<ul>
						<li>서울특별시 강남구 도산대로 134,</li>
						<li>페이토빌딩 B1</li>
					</ul>
					<a href="/493/?pCode=493" class="more">자세히보기 +</a>
				</div>
			</div>
		</div>
		<!-- 공통(진료시간, 고객센터, 오시는길) 끝 -->

	</div> <!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->

	<!-- 풋터 시작 (style.layout.css) -->
	<footer id="footer">
		<div class="fnb">
			<!-- fnb 시작 -->
			<ul class="inner">
				<li>
					<a href="/489/?pCode=489">타이거치과 소개</a>
				</li>
				<li>
					<a href="/personal">개인정보취급방침</a>
				</li>
				<li>
					<a href="/agree">이용약관</a>
				</li>
			</ul>
			<!-- fnb 끝 -->

			<!-- SNS 바로가기 버튼 시작 -->
			<div class="inner">
				<div class="sns">
					<a href="https://www.facebook.com/stigerdental/" target="_blank" data-menu="페이스북"></a>
					<a href="https://www.instagram.com/tigerdental/" target="_blank" data-menu="인스타그램"></a>
					<a href="https://blog.naver.com/tigerdental" target="_blank" data-menu="블로그"></a>
				</div>
			</div>
			<!-- SNS 바로가기 버튼 끝 -->
		</div>
		<div class="inner">
			<div class="footer-info">
				<p>
					<span>병원명 : 타이거치과의원</span><i></i>
					<span>대표 : 서인석</span><i></i>
					<span>TEL : 02-540-2080</span><i></i>
					<span>FAX : 02-540-2082</span>
				</p>
				<p>
					<span>주소 : 서울 강남구 도산대로 134 페이토빌딩 B1</span><i></i>
					<span>사업자번호 : 784-08-01078</span><i></i>
					<span>개인정보관리책임자 : 서인석(tigerdental@naver.com)</span>
				</p>
				<p class="copyright">Copyright @ 타이거치과의원 all rights reserved. Designed by <a href="http://wetheweb.net" target="_blank">TheWEB</a></p>
			</div>
		</div>
	</footer>
	<!-- 풋터 끝 (style.layout.css) -->

</div> <!-- #wrap 닫기 -->



	<!-- 빠른상담 신청하기 퀵버튼 시작 -->
	<div class="quick-counsel-button">
		<button class="toggle-button trn">빠른상담 신청하기</button>
	</div>
	<!-- 빠른상담 신청하기 퀵버튼 끝 -->

	<!-- 빠른상담 신청하기 폼 시작 -->
	<section id="quick-counsel" class="trn">
		<div class="inner">
			<form name="land" id="land" method="post" action="promotion_proc.php">
			<fieldset>
			<legend>상담신청자의 정보 입력</legend>
			<input type="hidden" name="mode" value="insert">
			<ul class="quick-counsel-form">
				<li>
					<div>
						<label for="i_name">고객명</label>
						<input name="i_name" id="i_name" type="text" element-name="고객명" valid="required">
					</div>
					<div>
						<label for="i_tel1">연락처</label>
						<input name="i_tel1" id="i_tel1" type="text" maxlength="3" element-name="연락처1" valid="required,phone_tel33">
						<input name="i_tel2" id="i_tel2" type="text" maxlength="4" element-name="연락처2" valid="required,phone_tel34">
						<input name="i_tel3" id="i_tel3" type="text" maxlength="4" element-name="연락처3" valid="required,phone_tel44">
					</div>
					<div>
						<label for="i_kind">상담분야</label>
						<select name="i_kind" id="i_kind" element-name="상담분야"><option value="임플란트">임플란트</option><option value="치아교정">치아교정</option><option value="심미치료">심미치료</option><option value="치아미백">치아미백</option><option value="스케일링">스케일링</option><option value="충치치료">충치치료</option><option value="신경치료">신경치료</option><option value="사랑니발치">사랑니발치</option><option value="예방진료">예방진료</option><option value="기타">기타</option></select>					</div>

				</li>
				<li>
					<div>
						<label element-name="상담내용">상담내용</label>
						<textarea name="i_content" id="i_content" rows="*" cols="*" element-name="상담내용" valid="required" placeholder="상담 가능한 시간대나 상담 내용을 입력하여 주세요."></textarea>
					</div>
					<div>
						<span class="private">
							<input title="약관동의" id="agree" type="checkbox" checked="" value="Y">
							<label element-name="동의" for="agree">동의</label>
						</span>
						<button type="button" class="btn-private">개인정보 취급방침</button>
					</div>
				</li>
				<li>
					<p>
						<button type="button" onclick="land_it('insert')" element-name="빠른상담신청">빠른상담접수</button>
					</p>
				</li>
			</ul>
			</fieldset>
			</form>
		</div>
	</section>
	<!-- 빠른상담 신청하기 폼 끝 -->


	<!-- 개인정보 취급방침 팝업 시작 -->
	<div class="pop-private">
		<div class="pop-inner">
			<h3><svg class="svg-inline--fa fa-lock fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"></path></svg><!-- <i class="fas fa-lock"></i> --> 개인정보 취급방침</h3>
			<p>
				<b>1.개인정보 수집이용에 대한 동의</b>
				‘타이거 치과의원’는 회원님의 개인정보를 중요시하며, “정보통신망
				이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다.
				회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며,
				회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,
				개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
				또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할
				것입니다.<br><br><br>

				<b>2.개인정보의 수집•이용 목적</b>
				회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함,
				연락처, 상담내용 등의 정보가 수집됩니다.
				- 수집항목 : 성명, 연락처, 상담내용
				- 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내
				고지에 활용<br><br><br>

				<b>3.보유이용 기간</b>
				원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로
				파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한기간 동안 보존합니다.
				- 보존 이유 : 회원님의 동의를 통한 정보 유지
				- 보존 기간 : 회원정보 삭제 요청 시까지
			</p>
			<button class="pop-close" type="button"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --> 닫기</button>
		</div>
	</div>
	<!-- 개인정보 취급방침 팝업 끝 -->

	<!-- 최상단으로 올라가기 버튼 시작 -->
	<div id="top">
		<a href="#HOME"><img src="/assets/img/landing/top.png" alt=""></a>
	</div>
	<!-- 최상단으로 올라가기 버튼 끝 -->

	<script>
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

	function land_callback(){
		var fm = document.land;

		if( !$("#land").validate() ) return;
		fm.submit();
/*
		$.post("/html/landing/promotion_proc.php", $("#land").serialize(), function(data){
			var fm = document.land;
			var _nm   = fm.i_name.value ;         // 상담신청 고객명
			var _hp   = fm.i_tel1.value+"-"+fm.i_tel2.value+"-"+fm.i_tel3.value;    		// 상담신청 연락처
			var _ty   = $("#i_kind option:selected").text();        	// 상담분야
			var _co   = fm.i_content.value;         // 상담 내용


			alert("상담신청이 완료되었습니다.\n\n고객님의 소중한 정보는 상담에만 이용됩니다.\n\n빠른시일내에 답변드리겠습니다. 감사합니다");
			land_it('reset');
		});
*/
	}

	function land_it($mode){
		var fm = document.land;

		if(!$('#agree').is(':checked')) {
			alert("개인정보취급방침에 동의해 주시길 바랍니다.");
			return false;
		}

		if($mode == "insert"){
			if( !$("#land").validate() ) return;
			land_callback();

		}else if($mode == "reset"){


			fm.reset();
		}
	}



	</script>



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




<!-- 컨텐츠 영역 --></body>
</html>