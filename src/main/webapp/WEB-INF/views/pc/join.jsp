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
<meta property="og:url" content="http://www.tigerdental.co.kr/html">
<meta property="og:title" content="타이거치과의원">
<meta property="og:description" content="">
<meta property="og:image" content="http://www.tigerdental.co.kr/resources/img/common/logo.png">
<meta property="og:image:alt" content="">
<!-- [ Twitter Card Type ]****************************************************************************	-->
<meta name="twitter:card" content="summary">
<meta name="twitter:domain" content="http://www.tigerdental.co.kr">
<meta name="twitter:title" content="타이거치과의원">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="http://www.tigerdental.co.kr/resources/img/common/logo.png">
<!-- [ 네이버 웹마스터도구 인증 ]************************************************************************	-->
<meta name="naver-site-verification" content="#">
<!-- [ 표준 페이지 및 문서 파비콘 설정 ]*****************************************************************	-->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/common/favicon.ico">
<link rel="canonical" href="http://www.tigerdental.co.kr">
<!-- [ 공통 CSS | 분류 : @ = 스타일, # = 자바스크립트]***************************************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.reset.css"><!-- @1	 CSS 초기화			**삭제/수정금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.common.css"><!-- @2  CSS 공통	 			**삭제금지/수정금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.fonts.css"><!-- @3  CSS 폰트  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.popup.css"><!-- @4  CSS 팝업  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.board.button.css"><!-- @5  CSS 버튼  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/style.board.paging.css"><!-- @6  CSS 페이징  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick.css"><!-- @7  CSS 플러그인 Slick -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick-theme.css"><!-- @8  CSS 플러그인 Slick Theme -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/wow/animate.css"><!-- @9  CSS 플러그인 Animate CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/web/theme/style.layout.css"><!-- @10 CSS 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/twentytwenty/twentytwenty.css"><!-- @9  CSS 플러그인  -->
<!-- [ 메인 CSS ]*************************************************************************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/web/theme/style.layout.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/web/theme/style.board.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/web/theme/style.support.css"><!-- @ CSS 서포트 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/web/theme/style.sub.css"><!-- @ CSS 서브 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.css"><!-- @ CSS 플러그인 파일첨부 -->
<!-- [ 맴버쉽 CSS | 회원가입, 로그인, 계정정보 찾기, 약관동의, 개인정보 취급방침  ]**************************	-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member/web/theme/style.member.css"><!-- @ CSS 맴버쉽 -->
<!-- [ 플러그인 ]*************************************************************************************	-->
<script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AR6T42597717931&amp;py=0&amp;gd=dgc12&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1571284548655"></script>
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
<script src="${pageContext.request.contextPath}/resources/js/web/jquery.sub.js"></script><!-- # JS 서브  -->
<script src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.calendar.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.date.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.user.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.js"></script><!-- # JS 플러그인 파일첨부 -->
<!-- [ 공통 JS ]*************************************************************************************	-->
<script src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/function.layer.js"></script><!-- # JS 필수 -->
<script src="${pageContext.request.contextPath}/resources/js/web/jquery.common.js"></script><!-- # JS 공통 -->
<!-- ***********************************************************************************************	-->
<style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style>
<script>
$(function(){
	$(".gnb:nth-child(1)").addClass("active");
	$(".gnb:nth-child(1) .lnb:nth-child(1)").addClass("active"); 
});	
</script>
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
	<jsp:include page="include/pcHeader.jsp"></jsp:include>
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
		<div class="member-title">회원가입</div>
		
		<div id="join-member">
			<ul class="inner">
				<li class="private">
					<div>
						개인정보취급방침<br>
						1.개인정보 수집이용에 대한 동의 ‘타이거치과의원’은 회원님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다. 회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며, 회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할 것입니다.<br>
						<br>
						2.개인정보의 수집•이용 목적 회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함, 연락처, 상담내용 등의 정보가 수집됩니다. - 수집항목 : 성명, 연락처, 상담내용 - 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내 고지에 활용<br>
						<br>
						3.보유이용 기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로 파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한<br>
						기간 동안 보존합니다. - 보존 이유 : 회원님의 동의를 통한 정보 유지 - 보존 기간 : 회원정보 삭제 요청 시까지
					</div>
					<input type="checkbox" name="agree" id="agree" value="Y">
					<label for="agree">개인정보 취급방침에 동의합니다.</label>
				</li>
				<li>
					<span class="required"><b>*</b> 표시는 필수 입력 사항입니다.</span>
					<div class="join-form">
						<!-- form join -->
						<form name="member" id="member" method="post" enctype="multipart/form-data">
							<input type="hidden" name="data_array" value="Y">
							<input type="hidden" name="mode" value="insert">
							<input type="hidden" name="seq" value="">
							<input type="hidden" name="member_seq" value="">
							<input type="hidden" name="distinction" value="proc">
							<input type="hidden" name="backpage" value="/join">
							<input type="hidden" name="nicechk" value="0">
						
							<div class="join-form-list">
								<label for="m_name">이름<i class="required">*</i></label>
								<input type="text" id="m_name" name="m_name" value="" data-name="이름" required="">
								<p class="cap">* 실명을 사용해 주세요.</p>
							</div>
							<div class="join-form-list">
								<label for="m_id">아이디<i class="required">*</i></label>
					
								<input type="text" id="m_id" name="m_id" maxlength="13" data-name="아이디" required="">
								<button type="button" id="btnIdCheck">아이디 중복확인</button>
			
								<p class="cap">* 영문으로 시작하는 영문소문자, 영문소문자+숫자4~13자 입력해주세요.</p>
								<input type="hidden" name="m_id_check" value="0">
								<input type="hidden" name="m_id_hidden">
							</div>
				
							<div class="join-form-list">
								<label for="m_pass">비밀번호<i class="required">*</i></label>
								<input type="password" id="m_pass" name="m_pass" maxlength="13" data-name="비밀번호" required="">
								<p class="cap">* 영문자, 영문자+숫자를 4~13자 입력해주세요.</p>
							</div>
							<div class="join-form-list">
								<label for="m_repass">비밀번호 확인<i class="required">*</i></label>
								<input type="password" id="m_repass" name="m_repass" maxlength="13" data-name="비밀번호 확인" required="">
							</div>
							<div class="join-form-list">
								<label for="birth_year">생년월일<i class="required">*</i></label>
								<select name="birth_year" id="birth_year" data-name="생년월일" required="">
									<option value="" selected="">선택</option><option value="2019">2019</option><option value="2018">2018</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option>
								</select><span>년</span>
								<select name="birth_month" id="birth_month" data-name="생년월일" required="">
									<option value="" selected="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
								</select><span>월</span>
								<select name="birth_date" id="birth_date" data-name="생년월일" required="">
									<option value="" selected="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
								</select><span>일</span>
							</div>
							<div class="join-form-list">
								<label for="m_solar1">양력음력</label>
								<div>
									<input type="radio" name="m_solar" id="m_solar1" value="1" data-name="양력음력" required=""> <label for="m_solar1"><i></i>양력</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="m_solar" id="m_solar2" value="2" data-name="양력음력" required=""> <label for="m_solar2"><i></i>음력</label>&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							<div class="join-form-list">
								<label for="phone1">휴대폰<i class="required">*</i></label>
								<select name="phone1" id="phone1" data-name="휴대전화">
									<option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option>
								</select><span>-</span>
								<input type="text" id="phone2" name="phone2" maxlength="4" value="" data-name="휴대전화"><span>-</span>
								<input type="text" id="phone3" name="phone3" maxlength="4" value="" data-name="휴대전화">
							</div>
							<div class="join-form-list">
								<label for="m_sex1">성별</label>
								<div>
									<input type="radio" name="m_sex" id="m_sex1" value="M" data-name="성별" required=""> <label for="m_sex1"><i></i>남자</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="m_sex" id="m_sex2" value="F" data-name="성별" required=""> <label for="m_sex2"><i></i>여자</label>&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							<div class="join-form-list">
								<label for="m_email1">이메일<i class="required">*</i></label>
								<input type="text" name="m_email1" id="m_email1" maxlength="13" value="" data-name="이메일" required=""><span>@</span>
								<input type="text" name="m_email2" id="m_email2" maxlength="13" value="" data-name="이메일" required="">
								<select name="m_emailcode" id="m_emailcode" data-name="이메일">
									<option value="" selected="">직접입력</option><option value="EM01">naver.com</option><option value="EM02">daum.net</option><option value="EM03">gmail.com</option><option value="EM04">yahoo.co.kr</option><option value="EM05">yahoo.com</option><option value="EM06">nate.com</option><option value="EM07">paran.com</option><option value="EM08">google.com</option><option value="EM09">empas.com</option><option value="EM10">hotmail.com</option><option value="EM11">msn.com</option><option value="EM12">korea.com</option><option value="EM13">dreamwiz.com</option><option value="EM14">hanafos.com</option><option value="EM15">freechal.com</option><option value="EM16">chol.com</option><option value="EM17">empal.com</option><option value="EM18">lycos.com</option><option value="EM19">netian.com</option>
								</select>
								<p class="cap">* 비밀번호를 잊어버렸을 때, 임시비밀번호가 발송될 메일입니다.</p>
							</div>
							<div class="join-form-list">
								<label for="m_zipcode">주소</label>
								<input type="text" id="m_zipcode" name="m_zipcode" readonly="" value="" data-name="우편번호">
								<button type="button" onclick="zipcode_it({z:'m_zipcode',a1:'m_addr1',a2:'m_addr2'})">우편번호 검색</button>
								<input type="text" id="m_addr1" name="m_addr1" readonly="" value="" data-name="기본주소">
								<input type="text" id="m_addr2" name="m_addr2" value="" data-name="상세주소">
							</div>
						</form>
						<!-- form end -->
						
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js">
						</script><script charset="UTF-8" type="text/javascript" src="http://t1.daumcdn.net/postcode/api/core/191007/1570443254160/191007.js"></script>
						<script>
							$(function(){
								$("#m_name").blur(function(){
									var $mode = "insert",
										$val = $(this).val();
						
									if( ($mode == "insert") && ($val) ){
										$.post("/html/member/member_proc.php", {mode : "check_name", val : $val}, function(data){
											if(data == 0){
												alert("사용이 금지된 이름입니다");
												$("#m_name").val('').focus();
												return;
											}
										});
									}
								});
						
						
								$("#btnIdCheck").on("click", function(){
									var $id = $.trim($("#m_id").val());
						
									if(!$id){
										alert("아이디 항목은 필수입니다");
										$("#m_id").val('').focus();
										return;
									}else{
										$.post("/html/member/member_proc.php", {mode : "check_id", val : $id}, function(data){
											if( (data == 3) || (data == 2) ){
												alert("사용이 금지된 아이디입니다");
												$("input[name=m_id_check]").val('0');
												$("input[name=m_id_hidden]").val('');
												$("#m_id").select();
												return;
											}else if(data == 0){
												alert("이미 사용중인 아이디입니다");
												$("input[name=m_id_check]").val('0');
												$("input[name=m_id_hidden]").val('');
												$("#m_id").select();
												return;
											}else{
												alert("사용가능한 아이디 입니다");
												$("input[name=m_id_check]").val('1');
												$("input[name=m_id_hidden]").val($id);
												$("#m_pass").focus();
											}
										});
									}
								});
							});
						</script>
					</div><!-- .join-form end -->
				</li>
			</ul><!-- .inner end -->
		</div><!-- #join-member end -->
		
		<!-- 게시판 버튼 시작 -->
		<div class="btn-group-center">
			<div class="inner">
				<div class="brick">
					<button type="button" class="btn btn-submit" onclick="">회원가입</button>
					<button type="button" class="btn btn-cancel" onclick="member_it('reset')">취소</button>
				</div>
			</div>
		</div>
		<!-- 게시판 버튼 끝 -->
		
		
		<form name="form_chk" method="post">
			<input type="hidden" name="m" value="checkplusSerivce">
			<input type="hidden" name="EncodeData" value="">
		</form>

		<!-- 공통(진료시간, 고객센터, 오시는길) 끝 -->
		<jsp:include page="include/pcBottom.jsp"></jsp:include>
		<!-- 공통(진료시간, 고객센터, 오시는길) 끝 -->

	</div> <!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->

	<!-- 풋터 시작 (style.layout.css) -->
	<jsp:include page="include/pcFooter.jsp"></jsp:include>
	<!-- 풋터 끝 (style.layout.css) -->

</div> <!-- #wrap 닫기 -->



	<!-- 빠른상담 신청하기 퀵버튼 시작 -->
	<jsp:include page="include/pcQuick.jsp"></jsp:include>
	<!-- 빠른상담 신청하기 퀵버튼 끝 -->


</body>
</html>