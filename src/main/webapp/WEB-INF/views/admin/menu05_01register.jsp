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
<script>
$(function(){
	$(".left_menu > dl:nth-child(5) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(5) > dd:nth-child(2) > a").addClass("on");
	
	$("#startdate, #enddate").datepicker({
		changeMonth: true, 
		changeYear: true,
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yy-mm-dd"
    });
	
	var ndate = new Date();
	var year = ndate.getFullYear();
	var month = ndate.getMonth()+1;
	var date = ndate.getDate();
	
	month = (month > 9) ? month+"":"0"+month;
	date = (date > 9) ? date+"":"0"+date;
	
	$("#regdate").val(year+"-"+month+"-"+date);
	
	//예외처리
	$("#form1").submit(function(){
		if($("input[name='startdate']").val()==""){
			alert("시작일을 입력해주세요.");
			return false;
		}
		if($("input[name='enddate']").val()==""){
			alert("종료일을 입력해주세요.");
			return false;
		}
		if($("input[name='title']").val()==""){
			alert("제목을 입력해주세요.");
			return false;
		}
		if($("input[name='content']").val()==""){
			alert("내용을 입력해주세요.");
			return false;
		}
		if($("input[name='link']").val()==""){
			$("input[name='link']").val(" ");
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
				<h1>팝업관리</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>기타관리&nbsp;&gt;&nbsp;</li>
					<li>팝업관리</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				
				<div class="write_area">
					<form id="form1" method="post" action="${pageContext.request.contextPath}/admin/menu05_01register${pageMaker.makeSearch(pageMaker.cri.page)}">
						<div class="write_box">
							<input type="hidden" name="no" value="0">
							<input type="hidden" id="regdate" name="regdate" value="">
			
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
			
								<!-- <tr class="cont">
									<td class="title">팝업종류</td>
									<td><input type="radio" name="p_mode" id="p_mode1" value="L" checked="checked"><label for="p_mode1"><i></i>레이어</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="p_mode" id="p_mode2" value="W"> <label for="p_mode2"><i></i>새창</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr> -->
								<tr class="cont">
									<td class="title">출력종류</td>
									<td><input type="radio" name="output_type" id="t_mode1" value="pc" checked="checked"><label for="t_mode1"><i></i>웹</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="output_type" id="t_mode2" value="mobile"> <label for="t_mode2"><i></i>모바일</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
								<tr class="cont">
									<td class="title">출력기간</td>
									<td>
										<input type="text" id="startdate" class="w_form_s" name="startdate" value="" autocomplete="off"> ~
										<input type="text" id="enddate" class="w_form_s" name="enddate" value="" autocomplete="off">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">출력순서</td>
									<td>
										<input type="text" class="w_form_s" id="p_sun" name="orderno" value="0" element-name="출력순서">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">위치</td>
									<td>
										X : <input type="text" class="w_form_s" name="p_left" value="0" valid="none,number" element-name="위치">
										Y : <input type="text" class="w_form_s" name="p_top" value="0" valid="none,number" element-name="위치">
										(미입력시 X : 0, Y : 0 으로 입력됩니다)
									</td>
								</tr>
								<!-- <tr class="cont" id="tr_width">
									<td class="title">크기</td>
									<td>
										가로 : <input type="text" class="w_form_s" name="p_width" value="" valid="none,number" element-name="크기">
										세로 : <input type="text" class="w_form_s" name="p_height" value="" valid="none,number" element-name="크기">
									</td>
								</tr> -->
								<tr class="cont">
									<td class="title">상태</td>
									<td>
										<input type="radio" name="use_state" id="p_delflag1" value="Y" checked> <label for="p_delflag1"><i></i>사용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" name="use_state" id="p_delflag2" value="N"> <label for="p_delflag2"><i></i>미사용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<!-- <tr class="cont">
									<td class="title">하루동안닫기</td>
									<td>
										<input type="radio" name="p_cookie" id="p_cookie1" value="Y"> <label for="p_cookie1"><i></i>사용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="p_cookie" id="p_cookie2" value="N"> <label for="p_cookie2"><i></i>미사용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							(미입력시 사용으로 선택됩니다)
									</td>
								</tr> -->
								<tr class="cont">
									<td class="title">링크</td>
									<td><input type="text" class="w_form_l" name="link" value="" placeholder="ex) http://www.xxx.co.kr/html/?pCode=417"></td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td><input type="text" class="w_form_l" name="title" value="" valid="required" element-name="제목"></td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td>
										<textarea id="contnet" name="content"></textarea>
										<script type="text/javascript">
											CKEDITOR.replace('content',{filebrowserUploadUrl:"${pageContext.request.contextPath}/admin/imgUpload/popup",height:500});
										</script>
									</td>
								</tr>
			
							</table>
							
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_01'">리스트</button>
							</p>
				
							<p class="btn_right">
								<input type="submit" class="btn_black" value="등록">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_01register'">취소</button>
							</p>
						</div>
					</form>
				</div>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>