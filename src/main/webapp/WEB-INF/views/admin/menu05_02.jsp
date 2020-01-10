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
<script>
$(function(){
	$(".left_menu > dl:nth-child(5) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(5) > dd:nth-child(2) > a").addClass("on");
	
	$("#searchBtn").click(function(){
    	var s=$("select[name='select_key']").val();
		var searchType = encodeURIComponent(s);
		var k=$("input[name='input_key']").val();
		var keyword = encodeURIComponent(k);
		location.href="${pageContext.request.contextPath}/admin/menu05_02${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
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
				<div class=""><h2 style="font-size:20px;"></h2></div>
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<form name="search" onsubmit="return false;">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel">
										<option value="">전체</option>
										<option value="t" ${cri.searchType=='w'?'selected':''}>제목</option>
										<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
									</select>						
									<input type="text" name="input_key" class="search_t_box" value="">
									<input type="button" name="submit_btn" value="검색" class="search_btn cursor" id="searchBtn">
								</div>
							</form>
						</div>
			
						<form name="mail" id="mail" method="post" action="mail_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
			
							<table class="list_table" cellpadding="0">
								<colgroup>
									<col width="3%">
									<col width="5%">
									<col width="*">
									<col width="10%">
									<col width="10%">
									<col width="6%">
								</colgroup>
								<tbody><tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>번호</th>
									<th>제목</th>
									<th>대상</th>
									<th>등록일</th>
									<th>발송유무</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="6">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
								        <c:forEach var="item" items="${list}">
											<tr class="cont">
												<td><input type="checkbox" name="seq_list[]" value="${item.no}"></td>
												<td>${item.no}</td>
												<td><a href="${pageContext.request.contextPath}/admin/menu05_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><p class="title">[타이거치과의원] 상담요청이 등록되었습니다</p></a></td>
												<td>개별</td>
												<td>${item.regdate}</td>
												<td>발송</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_right">
							<%-- <button type="button" class="btn_black" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_01register'">등록</button> --%>
						</p>
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
				</div><!-- list_area end -->
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>