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
	<!--  닫기 [위치 : include_web_footer.html ]  -->
	
	
		<!-- 서브 비주얼 시작-->
		<div id="sub-visual" data-menu="커뮤니티" data-menu-second="온라인 상담">
			<div class="inner">
				<h2>온라인 상담</h2>
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
					<button>커뮤니티</button>
					<ul>
						<jsp:include page="include/breadcrumb.jsp"></jsp:include>
					</ul>
				</li>
				<li class="lnb">
					<button>온라인 상담</button>
					<ul>
						<li><a href="${pageContext.request.contextPath}/m/menu06_01">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu06_02">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu06_03">치료사례</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu06_04">치료후기</a></li>
						<li><a href="${pageContext.request.contextPath}/m/menu06_05">온라인 상담</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- BreadCrumb 끝 -->
		
		<form name="inquire" id="inquire" method="post" action="" enctype="multipart/form-data" onsubmit="return false" autocomplete="off">
			<input type="hidden" name="fparam" value="pCode=516&amp;action=&amp;psseq=&amp;pagecode=&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/516/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;data_array=Y&amp;mode=modify&amp;im_id=&amp;seq=396&amp;nextmode=">
			<input type="hidden" name="distinction" value="proc">
			<input type="hidden" name="backpage" value="/m/index.html">
			<input type="hidden" name="file_cnt" value="1">
			
			
			<!-- 타이틀 시작 -->
			<div class="board-title">
				<h5>온라인 상담</h5>
			</div>
			<!-- 타이틀 끝 -->
			
			<div class="full">
				<table class="board-cousel-form">
					<caption>상담 게시판 상세</caption>
					<tbody>
						<tr>
							<th>상담구분</th>
							<td>
								<select name="i_kind" id="i_kind" class="search_sel"><option value="임플란트" selected="">임플란트</option><option value="치아교정">치아교정</option><option value="심미치료">심미치료</option><option value="치아미백">치아미백</option><option value="스케일링">스케일링</option><option value="충치치료">충치치료</option><option value="신경치료">신경치료</option><option value="사랑니발치">사랑니발치</option><option value="예방진료">예방진료</option><option value="기타">기타</option></select>				</td>
						</tr>
						
									<tr>
										<th scope="row">이름</th>
										<td><input type="text" name="i_name" id="i_name" class="default" valid="required" element-name="이름" value="김서진"></td>
									</tr>
														<tr>
							<th>제목</th>
							<td>
								<input type="text" name="i_title" id="i_title" maxlength="200" valid="required" element-name="제목" value="미백이랑 충치상담 가능한가요?">
							</td>
						</tr>
			
						<tr>
							<th>연락처</th>
							<td>
								<select name="i_phone1" id="i_phone1" class="small"><option value="010" selected="">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select> -
								<input type="text" name="i_phone2" id="i_phone2" maxlength="4" valid="required,phone_tel34" element-name="연락처" value="3333" autocomplete="off"> -
								<input type="text" name="i_phone3" id="i_phone3" maxlength="4" valid="required,phone_tel44" element-name="연락처" value="4444" autocomplete="off"><br><br>
								 * 전화번호를 남겨주시면 답변 등록 시 문자드립니다.
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea name="i_content" id="i_content" valid="required" element-name="내용">타이거치과</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="file_cnt">첨부파일</label></th>
							<td>
								<div class="form-file">
								
							<div class="addFile">
								<label for="filename">파일첨부</label>
								<input class="upload-name" value="파일선택" disabled="disabled">
								<input type="file" name="upload[0]" id="filename" class="upload-hidden" tabindex="-1" style="position: absolute; clip: rect(0px, 0px, 0px, 0px); display: none;"><div class="jfilestyle jfilestyle-corner  jfilestyle-theme-default"><div name="filedrag" style="position: absolute; width: 100%; height: 35px; z-index: -1;"></div><input type="text" style="width:150px" placeholder="" disabled=""> <span class="focus-jfilestyle" tabindex="0"><label for="filename"><span>파일첨부</span></label></span></div>
							</div>
												</div>
								<script>
									$('.form-file input[type="file"]').jfilestyle({
										//placeholder: '사진첨부',
										text : '파일첨부'
									})
								</script>
							</td>
						</tr>
						<input type="hidden" name="i_secret" id="i_secret" value="Y">
					</tbody>
				</table>
			
				<div class="private-agree">
					<textarea name="b_mem_personal" id="b_mem_personal" cols="124" rows="10" class="full" element-name="개인정보수집동의" readonly="">개인정보취급방침
			1.개인정보 수집이용에 대한 동의 ‘타이거치과의원’은 회원님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다. 회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며, 회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할 것입니다.
			
			2.개인정보의 수집•이용 목적 회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함, 연락처, 상담내용 등의 정보가 수집됩니다. - 수집항목 : 성명, 연락처, 상담내용 - 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내 고지에 활용
			
			3.보유이용 기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로 파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한
			기간 동안 보존합니다. - 보존 이유 : 회원님의 동의를 통한 정보 유지 - 보존 기간 : 회원정보 삭제 요청 시까지</textarea>
					<p>
						<input type="checkbox" id="agree" valid="required" element-name="개인정보취급방침" name="agree" value="Y" checked="">
						<label for="agree">개인정보취급방침에 동의합니다.</label>
					</p>
				</div>
				
			
				<!-- 게시판 버튼 시작 -->
				<div class="btn-group-center">
					<div class="brick">
						<button type="button" class="btn btn-submit" onclick="inquire_it('submit')">글쓰기</button>
						<button type="button" class="btn btn-cancel" onclick="inquire_it('reset', '')">취소</button>
					</div>
				</div>
				<!-- 게시판 버튼 끝 -->
			
				<script type="text/javascript" src="/lib/js/board.js"></script>
			
			</div>
		</form>
		
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