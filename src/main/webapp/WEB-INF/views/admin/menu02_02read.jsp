<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시원항병원 관리자페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style_admin.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/jquery-ui.css" type="text/css">

<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-ui-1.11.1.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.default.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.layer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.admin.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/function.validate.js" type="text/javascript"></script>
<script>
$(function(){
	$("#btn_withdraw").click(function(){
		
		$(".sel_chkbox:checked").each(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/admin/menu02_02withdraw/"+$(this).val()+"/x",
				type:"get",
				contentType : "application/json; charset=UTF-8",
				dataType:"text",
				async:false,
				success:function(json){
					console.log(json);
				},
				error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
		location.href="${pageContext.request.contextPath}/admin/menu02_02";
	});
	
$("#btn_delete").click(function(){
		
		$(".sel_chkbox:checked").each(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/admin/menu02_02delete/"+$(this).val(),
				type:"get",
				contentType : "application/json; charset=UTF-8",
				dataType:"text",
				async:false,
				success:function(json){
					console.log(json);
				},
				error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
		location.href="${pageContext.request.contextPath}/admin/menu02_02";
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
				<h1>탈퇴회원</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>회원 관리&nbsp;&gt;&nbsp;</li>
					<li>탈퇴회원</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="write_area">
					<div class="write_box">
			
						<form name="withdrawal" id="withdrawal" method="post" action="">
			
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">아이디</td>
									<td>${item.id}</td>
								</tr>
								<tr class="cont">
									<td class="title">사용자명</td>
									<td>${item.name}</td>
								</tr>
								<tr class="cont">
									<td class="title">등급</td>
									<td>일반회원</td>
								</tr>
								<tr class="cont">
									<td class="title">휴대전화</td>
									<td>${item.phone}</td>
								</tr>
								<tr class="cont">
									<td class="title">생년월일</td>
									<td>${item.birth}</td>
								</tr>
								<tr class="cont">
									<td class="title">성별</td>
									<td>
										<c:if test="${item.gender == 'm'}">
											남
										</c:if>
										<c:if test="${item.gender == 'f'}">
											여
										</c:if>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">이메일</td>
									<td>${item.email}</td>
								</tr>
								<tr class="cont">
									<td class="title">탈퇴일</td>
									<td>${item.withdraw_date}</td>
								</tr>
								<tr class="cont">
									<td class="title">탈퇴사유</td>
									<td>${item.reason}</td>
								</tr>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_02'">리스트</button>
						</p>
			
						<p class="btn_right">
							<button type="button" class="btn_red" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_02delete/${item.no}'">삭제</button>&nbsp;
							<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_02withdraw/${item.no}/x'">탈퇴취소</button> 
						</p>
					</div>
			
				</div>
			</div>
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>