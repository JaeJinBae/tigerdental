<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이거치과의원 관리자페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style_admin.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/jquery-ui.css" type="text/css">

<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-ui-1.11.1.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.default.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.layer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.admin.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.validate.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js" type="text/javascript"></script>

<!-- <script type="text/javascript" src="http://siwonhang.com/lib/js/ckeditor/config.js?t=F7J9"></script>
<link rel="stylesheet" type="text/css" href="http://siwonhang.com/lib/js/ckeditor/skins/moono/editor.css?t=F7J9">
<script type="text/javascript" src="http://siwonhang.com/lib/js/ckeditor/lang/ko.js?t=F7J9"></script>
<script type="text/javascript" src="http://siwonhang.com/lib/js/ckeditor/styles.js?t=F7J9"></script> -->
<style>
.cke{visibility:hidden;}
.left_menu > dl:nth-child(2) > dd{
	display: block !important;
}
</style>
<script>
$(function(){
	//$.ajaxSetup({cache:false});
	$(".left_menu > dl:nth-child(2) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(2) > dd:nth-child(5) > a").addClass("on");
	
	var ndate = new Date();
	var year = ndate.getFullYear();
	var month = ndate.getMonth()+1;
	var date = ndate.getDate();
	
	month = (month > 9) ? month+"":"0"+month;
	date = (date > 9) ? date+"":"0"+date;
	
	$("#regdate").val(year+"-"+month+"-"+date);
	
	$("#regdate").datepicker({
		changeMonth: true, 
		changeYear: true,
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yy-mm-dd"
    });
	
	//예외처리
	$("#form1").submit(function(){
		if($("input[name='writer']").val()==""){
			alert("작성자를 입력해주세요.");
			return false;
		}
		if($("input[name='title']").val()==""){
			alert("제목을 입력해주세요.");
			return false;
		}
	});
});
</script>
</head>
<body>
<div id="Mask"></div>
<div id="wrap" class="body_main">
	<div id="container">
		<div id="admin_left">
			<jsp:include page="include/leftMenu.jsp"></jsp:include><!-- 왼쪽 메뉴 -->
		</div>

		<div id="admin_right">
			
			<jsp:include page="include/rightTop.jsp"></jsp:include><!-- 오른쪽 상단 -->

			<div class="naviText_area">
				<h1>언론보도</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>언론보도</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form id="form1" method="post" action="${pageContext.request.contextPath}/admin/menu02_04register${pageMaker.makeSearch(pageMaker.cri.page)}">
					<input type="hidden" name="no" value="0">
					<div class="write_area">
						<div class="write_box">
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">사용유무</td>
									<td>
										<label><input type="radio" name="use_state" id="b_notice1" value="o" checked="checked"><i></i>사용</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="radio" name="use_state" id="b_notice2" value="x"><i></i>미사용</label>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">공지</td>
									<td>
										<label><input type="radio" name="top_state" id="b_notice1" value="o"><i></i>공지</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="radio" name="top_state" id="b_notice2" value="x" checked="checked"><i></i>일반</label>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성자</td>
									<td>
										<input type="text" class="w_form_s" name="writer" value="관리자">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성일</td>
									<td>
										<input type="text" id="regdate" class="w_form_s" name="regdate" value="" autocomplete="off">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">조회수</td>
									<td>
										<input type="text" class="w_form_s" name="cnt" value="0">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td>
										<input type="text" class="w_form_l" name="title" value="">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td>
										<textarea id="b_content" name="content"></textarea>
										<script type="text/javascript">
											CKEDITOR.replace('content',{filebrowserUploadUrl:"${pageContext.request.contextPath}/admin/imgUpload/news",height:500});
										</script>
									</td>
								</tr>
							</table>
						</div><!-- write_box end -->
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_04'">리스트</button>
							</p>
							<p class="btn_right">
								<input type="submit" class="btn_black" value="등록">&nbsp;
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_04register'">취소</button>
							</p>
						</div><!-- btn_area end -->
					</div><!-- write_area end -->
				</form>
			</div><!-- main_bottom_area -->
			
			
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->


</body>
</html>