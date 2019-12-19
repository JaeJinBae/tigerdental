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
<style>
.left_menu > dl:nth-child(2) > dd{
	display: block !important;
}
</style>
<script>
$(function(){
	$.ajaxSetup({cache:false});
	
	$(".left_menu > dl:nth-child(2) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(2) > dd:nth-child(3) > a").addClass("on");
	
	$( "#regdate" ).datepicker({
		changeMonth: true, 
		changeYear: true,
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yy-mm-dd"
    });
	
	$("#result").click(function(){
		alert($("input[name='regdate']").val());
	});
	
	//예외처리
	$("#form1").submit(function(){
		if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
			alert("작성자를 입력해주세요.");
			return false;
		}else if($("input[name='title']").val()==""||$("input[name='title']").val()==null){
			alert("제목을 입력해주세요.");
			return false;
		}
	})
	
	$("#delBtn").click(function(){
		var no = $("input[name='no']").val();
		
		$.ajax({
			url:"${pageContext.request.contextPath}/admin/menu02_02delete/"+no,
			type:"get",
			dataType:"text",
			async:false,
			success:function(json){
				location.href="${pageContext.request.contextPath}/admin/menu02_02";
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
				<h1>치료사례</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>치료사례</li>
				</ul>
			</div>
			
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js"></script>
			
			<div class="main_bottom_area">
				<form id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu02_02update${pageMaker.makeSearch(pageMaker.cri.page)}">
					<input type="hidden" name="no" value="${item.no}">
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
										<c:if test="${item.use_state == 'o'}">
											<label><input type="radio" name="use_state" id="b_notice1" value="o" checked="checked"><i></i>사용</label>&nbsp;&nbsp;&nbsp;&nbsp;
											<label><input type="radio" name="use_state" id="b_notice2" value="x"><i></i>미사용</label>&nbsp;&nbsp;&nbsp;&nbsp;
										</c:if>
										<c:if test="${item.use_state == 'x'}">
											<label><input type="radio" name="use_state" id="b_notice1" value="o"><i></i>사용</label>&nbsp;&nbsp;&nbsp;&nbsp;
											<label><input type="radio" name="use_state" id="b_notice2" value="x" checked="checked"><i></i>미사용</label>&nbsp;&nbsp;&nbsp;&nbsp;
										</c:if>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성자</td>
									<td>
										<input type="text" class="w_form_s" name="writer" value="${item.writer}">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성일</td>
									<td>
										<input type="text" id="regdate" class="w_form_s" name="regdate" value="${item.regdate}" autocomplete="off">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">조회수</td>
									<td>
										<input type="text" class="w_form_s" name="cnt" value="${item.cnt}">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td>
										<input type="text" class="w_form_l" name="title" value="${item.title}">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td>
										<textarea id="b_content" name="content">${item.content}</textarea>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">첨부파일</td>
									<td id="attach">
										<input type="hidden" id="imgBeforeChange" name="imgBeforeChange" value="x">
										<input type="hidden" id="imgAfterChange" name="imgAfterChange"value="x">
										<!-- 시술 전 사진 -->
										<c:choose>
											<c:when test="${item.img_before_origin == ''}">
												<div><input type="file" name="img_before"></div>
											</c:when>
											<c:otherwise>
												<div>
													<a id="downBtn_before" href="${pageContext.request.contextPath}/admin/filedown?dPath=uploadBeforeAfter">${item.img_before_origin}</a>
													<img id="img_b" src="${pageContext.request.contextPath}/resources/img/admin/icon_x.png" class="vimg cursor">
													<input type="hidden" name="img_before" value="${item.img_before_origin}">
													<input type="hidden" name="img_before_stored" value="${item.img_before_stored}">
												</div>
											</c:otherwise>
										</c:choose>
										<!-- 시술 후 사진 -->
										<c:choose>
											<c:when test="${item.img_after_origin == ''}">
												<div><input type="file" name="img_after"></div>
											</c:when>
											<c:otherwise>
												<div class="marginT10">
													<a id="downBtn_after" href="${pageContext.request.contextPath}/admin/filedown?dPath=uploadBeforeAfter">${item.img_after_origin}</a>
													<img id="img_a" src="${pageContext.request.contextPath}/resources/img/admin/icon_x.png" class="vimg cursor">
													<input type="hidden" name="img_after" value="${item.img_after_origin}">
													<input type="hidden" name="img_after_stored" value="${item.img_after_stored}">
												</div>
											</c:otherwise>
										</c:choose>
										<br>
									</td>
								</tr>
							</table>
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_02'">리스트</button>
							</p>
							<p class="btn_right">
								<input type="submit" class="btn_black" value="수정">&nbsp;
								<button type="button" class="btn_red" id="delBtn">삭제</button>
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_02'">취소</button>
							</p>
						</div>
				
					</div>
				</form>
			</div>
			
			<script type="text/javascript">
					CKEDITOR.replace('b_content',{filebrowserUploadUrl:"/admin/imgUpload/beforeAfter", width:'100%', height:'500px'});
			</script>
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->


</body>
</html>