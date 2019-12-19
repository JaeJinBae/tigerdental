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
	 $("#searchBtn").click(function(){
    	var s=$("select[name='select_key']").val();
		var searchType = encodeURIComponent(s);
		var k=$("input[name='input_key']").val();
		var keyword = encodeURIComponent(k);
		location.href="${pageContext.request.contextPath}/admin/menu03_02${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
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
				<h1>빠른상담</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>상담관리&nbsp;&gt;&nbsp;</li>
					<li>빠른상담</li>
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
										<option value="n" ${cri.searchType=='t'?'selected':''}>이름</option>
										<option value="p" ${cri.searchType=='c'?'selected':''}>전화번호</option>
										<option value="t" ${cri.searchType=='w'?'selected':''}>제목</option>
										<option value="c" ${cri.searchType=='c'?'selected':''}>문의내용</option>
										<option value="s" ${cri.searchType=='c'?'selected':''}>처리상태</option>
									</select>						
									<input type="text" name="input_key" class="search_t_box" value="">
									<input type="button" name="submit_btn" value="검색" class="search_btn cursor" id="searchBtn">
								</div>
							</form>
						</div>
			
						<form name="inquire" id="inquire" method="post" action="">
							<table class="list_table">
								<colgroup>
									<col width="4%">
									<col width="4%">
									<col width="10%">
									<col width="7%">
									<col width="9%">
									<col width="8%">
									<col width="13%">
									<col width="9%">
									<col width="5%">
									<col width="8%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>번호</th>
									<th>상담분야</th>
									<th>이름</th>
									<th>전화번호</th>
									<th>등록일</th>
									<th>처리상태</th>
									<th>유입경로</th>
									<th>답변일</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="9">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${list}">
												<tr class="cont">
													<td><input type="checkbox" name="seq_list[]" value="${item.no}"></td>
													<td>${num}</td>
													<td>${item.advice_type}</td>
													<td>
														<a href="${pageContext.request.contextPath}/admin/menu03_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.name}</a>
														<img src="${pageContext.request.contextPath}/resources/img/common/lock.gif" class="vimg" alt="비밀글아이콘">
													</td>
													<td><a href="${pageContext.request.contextPath}/admin/menu03_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.phone}</a></td>
													<td>${item.regdate}</td>
													<td><a href="${pageContext.request.contextPath}/admin/menu03_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.state}</a></td>
													<td><a href="javascript:;" id="tooltip_2474" onclick="tooltip_it('2474')">보기</a></td>
													<td>${item.reply_date}</td>
												</tr>
												<c:set var="num" value="${num-1}"></c:set>	
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left" style="display:none;">
							<button type="button" class="btn_gray" onclick="">전체 Excel저장</button>
							<button type="button" class="btn_gray" onclick="">Excel저장</button>
							<button type="button" class="btn_gray" onclick="">선택삭제</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="location.href='${pageContext.request.contextPath}/admin/menu03_02register'">등록</button>
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