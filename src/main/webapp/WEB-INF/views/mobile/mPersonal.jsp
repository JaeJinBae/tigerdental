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
<link rel="canonical" href="http://tigerdental.co.kr">
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mobile/theme/style.layout.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mobile/theme/style.board.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mobile/theme/style.sub.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.css"><!-- @ CSS 플러그인 파일첨부 -->
<!-- [ 맴버쉽 CSS | 회원가입, 로그인, 계정정보 찾기, 약관동의, 개인정보 취급방침  ]**************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member/mobile/theme/style.member.css"><!-- @ CSS 맴버쉽 -->
<!-- [ 플러그인 ]*************************************************************************************	-->
<script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR6T42597717931&amp;py=0&amp;gd=dgc12&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1571372938536"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.1.12.0.min.js"></script><!-- #1 JS Jquery 1.12.0  -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.1.js"></script><!-- #2 JS 플러그인 Jquery UI  -->
<script src="${pageContext.request.contextPath}/resources/js/fontawesome/js/fontawesome-all.min.js"></script><!-- #3 JS 플러그인 fontawesome -->
<script src="${pageContext.request.contextPath}/resources/js/slick/slick.js"></script><!-- #4 JS 플러그인 Slick -->
<script src="${pageContext.request.contextPath}/resources/js/wow/wow.min.js"></script><!-- #5 JS 플러그인 Wow -->
<script src="${pageContext.request.contextPath}/resources/js/wow/scrollspy.js"></script><!-- #6 JS 플러그인 Scrollspy -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.rwdImageMaps.js"></script><!-- #7 JS 플러그인 rwdImageMaps -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.modernizr.js"></script><!-- #8 JS 플러그인 modernizr -->
<!-- [ 메인 JS ]*************************************************************************************	-->
<!-- [ 서브 JS ]*************************************************************************************	-->
<script src="${pageContext.request.contextPath}/resources/js/mobile/jquery.sub.js"></script><!-- # JS 서브  -->
<script src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.calendar.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.date.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.user.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.js"></script><!-- # JS 플러그인 파일첨부 -->
<!-- [ 공통 JS ]*************************************************************************************	-->
<script src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.layer.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/mobile/jquery.common.js"></script><!-- # JS 공통 -->
<!-- ***********************************************************************************************	-->
<style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style>
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



<div class="gnb-dim"></div>


<div id="wrap">
	<!-- 해더 시작  -->
	<jsp:include page="include/mHeader.jsp"></jsp:include>
	<!-- 해더 끝  -->
	
	<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
	<div id="sub-container">	
	
		<!-- 서브 비주얼 시작-->
		<div id="sub-visual" data-menu="멤버쉽" data-menu-second="개인정보보호정책">
			<div class="inner">
				<h2>개인정보보호정책</h2>
			</div>
		</div>
		<!-- 서브 비주얼 끝 -->
		
		
		<!-- BreadCrumb 시작 -->
		<div id="breadcrumb">
			<ul class="full">
				<li class="home">
					<a href="/m"></a>
				</li>
				<li class="gnb">
					<button>멤버쉽</button>
					<ul>
						<li><a href="${pageContext.request.contextPath}/m/menu01_01">타이거치과</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu02_01">퀵 임플란트</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu03_01">퀵 치아성형</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu04_01">퀵 디지털교정</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu05_01">예방·일반진료</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu06_01">커뮤니티</a></li>
					</ul>
				</li>
		
				<li class="lnb">
					<button>개인정보보호정책</button>
					<ul></ul>
				</li>
			</ul>
		</div>
		<!-- BreadCrumb 끝 -->
		
		<!-- 타이틀 시작 -->
		<div class="member-title">
			<h5>개인정보보호정책</h5>
		</div>
		<!-- 타이틀 끝 -->
		
		
		<!-- 로그인 폼 시작 -->
		<div class="privacy">
			<div class="inner">
				개인정보취급방침<br>
				1.개인정보 수집이용에 대한 동의 ‘타이거치과의원’은 회원님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다. 회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며, 회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할 것입니다.<br>
				<br>
				2.개인정보의 수집•이용 목적 회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함, 연락처, 상담내용 등의 정보가 수집됩니다. - 수집항목 : 성명, 연락처, 상담내용 - 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내 고지에 활용<br>
				<br>
				3.보유이용 기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로 파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한<br>
				기간 동안 보존합니다. - 보존 이유 : 회원님의 동의를 통한 정보 유지 - 보존 기간 : 회원정보 삭제 요청 시까지<!--
				<div>&#39;바람K성형외과&#39;는 (이하 &#39;본원&#39;은) 고객님의 개인정보를 중요시하며, 「개인정보보호법」을 준수하고 있습니다.</div>
				
				<div>본원은 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 수집하는 개인정보 항목</div>
				
				<div>본원은 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</div>
				
				<div>&omicron; 수집항목 : 이름 , 로그인ID , 비밀번호 , 주소 , 휴대전화번호 , 이메일 등</div>
				
				<div>&omicron; 개인정보 수집방법 : 홈페이지(회원가입, 상담게시판, 온라인예약 등)</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 개인정보의 수집 및 이용목적</div>
				
				<div>본원은 수집한 개인정보를 다음의 목적을 위해 활용합니다.</div>
				
				<div>&omicron; 서비스 제공에 관한 계약 이행</div>
				
				<div>&omicron; 회원 관리</div>
				
				<div>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인, 불만처리 등 민원처리 , 고지사항 전달</div>
				
				<div>&omicron; 마케팅 및 광고에 활용</div>
				
				<div>이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</div>
				
				<div>&omicron; 휴대폰번호는 나이스평가정보에서 인증 받은 휴대폰 번호를 사용 하고 있습니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 개인정보의 보유 및 이용기간</div>
				
				<div>본원은 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 개인정보의 파기절차 및 방법</div>
				
				<div>본원은 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</div>
				
				<div>&omicron; 파기절차</div>
				
				<div>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.</div>
				
				<div>별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.</div>
				
				<div>&nbsp;</div>
				
				<div>&omicron; 파기방법</div>
				
				<div>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</div>
				
				<div>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 수집한 개인정보의 위탁</div>
				
				<div>본원은 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</div>
				
				<div>&nbsp;</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 이용자의 권리와 그 행사방법</div>
				
				<div>이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다. (단, 만 14세 미만의 아동은 가입이 제한됩니다)</div>
				
				<div>이용자의 개인정보 조회, 수정을 위해서는 &lsquo;개인정보변경&rsquo;(또는 &lsquo;회원정보수정&rsquo; 등)을 가입해지(동의철회)를 위해서는 &ldquo;회원탈퇴&rdquo;를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.</div>
				
				<div>귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.</div>
				
				<div>본원은 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 &ldquo;본원이 수집하는 개인정보의 보유 및 이용기간&rdquo;에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</div>
				
				<div>쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다.</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 개인정보에 관한 민원서비스</div>
				
				<div>본원은 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</div>
				
				<div>- 개인정보책임관리자 : 강상윤</div>
				
				<div>- 문의전화 : 051.731. 7577</div>
				
				<div>&nbsp;</div>
				
				<div>귀하께서는 병원의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 개인정보실무책임자로 신고하실 수 있습니다. 병원는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</div>
				
				<div>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</div>
				
				<div>1.개인분쟁조정위원회 (www.1336.or.kr/1336)</div>
				
				<div>2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</div>
				
				<div>3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</div>
				
				<div>4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</div>
				
				<div>&nbsp;</div>
				
				<div>❑ 환자의 권리와 의무(제1조의2 제1항 관련)</div>
				
				<div>&nbsp;</div>
				
				<div>&nbsp;</div>
				
				<div>1. 환자의 권리</div>
				
				<div>&nbsp;</div>
				
				<div>가. 진료 받을 권리</div>
				
				<div>환자는 자신의 건강보호를 위해 적절한 보건의료서비스를 받고, 성별 나이&middot;종교&middot;신분&middot;경제적 사정등을</div>
				
				<div>이유로 이를 침해받지 아니하며, 의료인은 정당한 사유없이 진료를 거부하지 못한다.</div>
				
				<div>&nbsp;</div>
				
				<div>나. 알 권리 및 자기결정권</div>
				
				<div>환자는 자신의 건강보호를 위해 적절한 보건의료서비스를 받고, 성별 나이&middot;종교&middot;신분&middot;경제적 사정등을</div>
				
				<div>이유로 이를 침해받지 아니하며, 의료인은 정당한 사유없이 진료를 거부하지 못한다.</div>
				
				<div>&nbsp;</div>
				
				<div>다. 비밀을 보호받을 권리</div>
				
				<div>환자는 진료와 관련된 신체상&middot;건강상 비밀을 보호받으며, 의료인과 의료기관은 환자의 동의를 받지 않거나</div>
				
				<div>범죄수사 등 법률이 정한 경우 외에는 비밀을 누설&middot;발표하지 못한다.</div>
				
				<div>&nbsp;</div>
				
				<div>라. 피해를 구제받을 권리</div>
				
				<div>환자는 권리를 침해 받아 생명&middot;신체적&middot;금전적 피해가 발생한 경우,</div>
				
				<div>한국의료분쟁조정중재원(02-6210-0114, www.k-medi.or.kr)에 상담 및 구제 신청을 할 수 있다.</div>
				
				<div>&nbsp;</div>
				
				<div>&nbsp;</div>
				
				<div>2. 환자의 의무</div>
				
				<div>&nbsp;</div>
				
				<div>가. 의료인에 대한 신뢰&middot;존중 의무</div>
				
				<div>환자는 자신의 건강관련 정보를 의료인에게 정확히 알리고, 의료인의 치료 계획에 대해 신뢰하고 존중하여야 한다.</div>
				
				<div>&nbsp;</div>
				
				<div>나. 부정한 방법으로 진료를 받지 않을 의무</div>
				
				<div>환자는 진료 전에 본인의 신분을 밝혀야하고, 타인의 명의로 진료를 받는 등 거짓이나 부정한 방법으로 진료를 받지 아니한다.</div>
				
				<div>&nbsp;</div>
				
				<div>&nbsp;</div>
				
				<div>부칙</div>
				
				<div>이 약관은 2017년 2월 15일 시행합니다.</div>-->
			</div>
		</div>
		<!-- 로그인 폼 끝 -->
		
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

</div>
</body>
</html>