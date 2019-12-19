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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">

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
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="https://www.google.com/uds/?file=visualization&amp;v=1&amp;packages=corechart" type="text/javascript"></script>
<link href="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/ui+ko.css" type="text/css" rel="stylesheet">
<script src="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/format+ko,default+ko,ui+ko,corechart+ko.I.js" type="text/javascript"></script>
<script>

$(function(){
	$(".left_menu > dl:nth-child(2) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(2) > dd:nth-child(6) > a").addClass("on");
	//게시판 검색
    $("#searchBtn").click(function(){
    	var s=$("select[name='select_key']").val();
		var searchType = encodeURIComponent(s);
		var k=$("input[name='input_key']").val();
		var keyword = encodeURIComponent(k);
		location.href="${pageContext.request.contextPath}/admin/menu02_05${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
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
				<h1>치료후기</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>치료후기</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top"> 
							<!-- <div class="top-left">
								<input type="radio" name="radio_key" id="radio_key1" value="all" checked="checked"> <label for="radio_key1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key2" value="top_notice"> <label for="radio_key2"><i></i>공지</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key3" value="normal_notice"> <label for="radio_key3"><i></i>일반</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div> -->
			
							<form name="search" method="post" action="">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key">
										<option value="">전체</option>
										<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
										<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
										<option value="w" ${cri.searchType=='w'?'selected':''}>작성자</option>
									</select>						
									<input type="text" name="input_key"value="">
									<input type="button" name="submit_btn" value="검색" class="search_btn cursor" id="searchBtn">
								</div>
							</form>
						</div><!-- board_top 끝 -->
			
						<form name="board" id="board">			
							<table class="list_table">
								<colgroup>
									<col width="3%">
									<col width="5%">
			                        <col width="6%">
									<col width="4%">
									<col width="*">
									<col width="10%">
									<col width="10%">
									<col width="5%">
									<col width="5%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>사용유무</th>
			                        <th>메인노출유무</th>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>파일</th>
									<th>조회</th>
								</tr>
								<c:if test="${pageMaker.cri.page == 1}">
									<c:if test="${fn:length(topList) != 0}">
										<c:forEach var="item" items="${topList}">
											<tr class="cont">
												<td><input type="checkbox" name="" value="${item.no}"></td>
												<c:choose>
													<c:when test="${item.use_state == 'o'}">
														<td>
															<img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_on.png" class="cursor vimg" id="delflag_2036">
														</td>
													</c:when>
													<c:otherwise>
														<td>
					                                     	<img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_none.png" class="cursor vimg" id="ismain_2036">
					                                     </td>
													</c:otherwise>
												</c:choose>
												<td>
			                                     	<img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_none.png" class="cursor vimg" id="ismain_2036">
			                                     </td>
												<td><i class="ico notice">공지</i></td>
												<td>
													<a href="${pageContext.request.contextPath}/admin/menu02_05update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><p class="title"> ${item.title}</p></a>
												</td>
												<td>${item.writer}</td>
												<td>${item.regdate}</td>
												<td></td>
												<td>${item.cnt}</td>
											</tr>	
										</c:forEach>
									</c:if>
								</c:if>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="9">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${list}">
												<tr class="cont">
													<td><input type="checkbox" name="" value="${item.no}"></td>
													<c:choose>
														<c:when test="${item.use_state == 'o'}">
															<td><img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_on.png" class="cursor vimg" id="delflag_2036"></td>
														</c:when>
														<c:otherwise>
															<td><img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_none.png" class="cursor vimg" id="ismain_2036"></td>
														</c:otherwise>
													</c:choose>
													<td><img src="${pageContext.request.contextPath}/resources/admin/img/ck_img_none.png" class="cursor vimg" id="ismain_2036"></td>
													<td><i class="ico notice">${num}</i></td>
													<td><a href="${pageContext.request.contextPath}/admin/menu02_05update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><p class="title"> ${item.title}</p></a></td>
													<td>${item.writer}</td>
													<td>${item.regdate}</td>
													<td></td>
													<td>${item.cnt}</td>
												</tr>
												<c:set var="num" value="${num-1}"></c:set>	
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray">선택삭제</button>
							<button type="button" class="btn_gray">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_05register'">등록</button>
						</p>
					</div>
			
					<!-- 페이징 시작 -->
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
					</div>	<!-- 페이징 끝 -->
				</div>
			</div>
		</div><!-- admin_right -->
	</div><!-- container end -->

	<jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>