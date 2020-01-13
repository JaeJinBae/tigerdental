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
	
	var getOutputType = $("#outputType").val();
	$(".output_type[value='"+getOutputType+"']").prop("checked", "checked");
	
	var getUseState = $("#useState").val();
	$(".use_state[value='"+getUseState+"']").prop("checked", "checked");
	
	//삭제
	$("#delBtn").click(function(){
		var no = $("input[name='no']").val();
		
		$.ajax({
			url:"${pageContext.request.contextPath}/admin/menu05_01delete/"+no,
			type:"get",
			dataType:"text",
			async:false,
			success:function(json){
				location.href="${pageContext.request.contextPath}/admin/menu05_01";
			} 
		});
		
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
				<h1>메일관리</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>기타관리&nbsp;&gt;&nbsp;</li>
					<li>메일관리</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="write_area">
					<div class="write_box">
			
						<form name="mail" id="mail" method="post" enctype="multipart/form-data" action="mail_proc.php">
			
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
			
								<tr class="cont">
									<td class="title">대상</td>
									<td><input type="radio" name="m_type" id="m_type1" value="A"> <label for="m_type1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="m_type" id="m_type2" value="P" checked="checked"> <label for="m_type2"><i></i>개별</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
								<tr class="cont" id="tr_to" style="display:" ''="">
									<td class="title">수신인</td>
									<td>
										<input type="text" class="w_form_l" id="m_to" name="m_to" value="${item.receiver}">
										<button type="button" class="btn_black btn_small" onclick="mail_it('search')">검색</button>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td><input type="text" class="w_form_l" id="m_title" name="m_title" value="[타이거치과의원] 상담요청이 등록되었습니다" valid="required" element-name="제목"></td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td>
										${item.content}
									
									</td>
								</tr>				
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_02'">리스트</button>
						</p>
			
						<p class="btn_right">
							<!--<button type="button" class="btn_black" onClick="mail_it('submit')">수정</button>-->
			
							<button type="button" class="btn_red" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_02delete/${item.no}'">삭제</button>
							<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_02'">취소</button>
						</p>
					</div>
			
				</div>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>