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
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<script src="https://www.google.com/uds/?file=visualization&amp;v=1&amp;packages=corechart" type="text/javascript"></script>
<script>

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
				<h1>유입경로</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>마케팅분석&nbsp;&gt;&nbsp;</li>
					<li>유입경로</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form name="crboard_teacher" id="crboard_teacher" method="post" action="">
					<div class="list_area">
						<div class="list_box">				
							<table class="list_table">
								<colgroup>
									<col width="*">
									<col width="12%">
								</colgroup>
								<tr class="cont">
									<th>유입경로</th>
									<th>접속일시</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="2">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="item" items="${list}">
											<tr class="cont">
												<td><p class="title"><a href="${item.prev_url}" target="'_blank'">${item.prev_url}</a></p></td>
												<td>${item.date} ${item.hour}:${item.minute}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						
						<div class="board_paging no_print">
							<a href="${pageMaker.makeSearch(1)}" class="direction">&lt;&lt;</a>
							<c:if test="${!pageMaker.prev}"><!-- 이전페이지가 존재하지 않는경우 -->
								<a href="${pageMaker.makeSearch(pageMaker.cri.page)}" class="direction">&lt;</a>
							</c:if>
							<c:if test="${pageMaker.prev}"><!-- 이전페이지가 존재하는 경우 -->
								<a href="${pageMaker.makeSearch(pageMaker.startPage-1)}" class="direction">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=on':''}>${idx}</a>
							</c:forEach>
							<c:if test="${pageMaker.next}"><!-- 뒤에페이지가 존재하는경우 -->
								<a href="${pageMaker.makeSearch(pageMaker.endPage+1)}" class="direction">&gt;</a>
							</c:if>
							<c:if test="${!pageMaker.next}"><!-- 뒤에 페이지가 존재하지 않는 경우 -->
								<a href="${pageMaker.makeSearch(pageMaker.cri.page)}" class="direction">&gt;</a>
							</c:if>
							<a href="${pageMaker.makeSearch(pageMaker.finalPage+1)}" class="direction">&gt;&gt;</a>
						</div>
					</div>
				</form>
			</div><!-- main_bottom_area end -->
		</div><!-- admin_right 끝 -->
		
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>