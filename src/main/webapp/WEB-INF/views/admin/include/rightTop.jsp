<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="right_top_area">
	<input id="session_id" type="hidden" value="${sessionScope.id}">
	<ul class="r_top">
		<li>
			<p class="top_icon_id nanum_b">
				<img src="${pageContext.request.contextPath}/resources/admin/img/top_icon_id.png" alt="id">
				<span class="txt_blue_b">tigerdental</span>
			</p>
		</li>
		<li>
			<p>
				<a href="${pageContext.request.contextPath}/" target="_blank">
					<img src="${pageContext.request.contextPath}/resources/admin/img/top_icon_home.png" alt="home">
					<span class="txt_666_n">Home</span>
				</a>
			</p>
		</li>
		<li>
			<p>
				<a href="${pageContext.request.contextPath}/admin/logout">
					<img src="${pageContext.request.contextPath}/resources/admin/img/top_icon_logout.png" alt="logout">
					<span class="txt_666_n">Logout</span>
				</a>
			</p>
		</li>
	</ul>
	<script>
		$(function(){
			if($("#session_id").val().length < 7){
				alert("세션정보가 없습니다.\n다시 로그인하십시오.");
				location.href="${pageContext.request.contextPath}/admin/logout";
			}
		});
	</script>
</div>