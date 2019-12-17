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
<style>
.b02_{
	margin-left: 2% !important;
}
</style>
<script>
function draw_browser_chart(info){
	var res_arr = [["\ube0c\ub77c\uc6b0\uc838\ubcc4\ud1b5\uacc4","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	
	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	
	var data = google.visualization.arrayToDataTable(res_arr);
	/* [["\ube0c\ub77c\uc6b0\uc838\ubcc4\ud1b5\uacc4","\uc811\uc18d\uc790"],
													["Chrome",54], ["FireFox",3],["Gecko",29],["Mozilla",2],["MSIE 10.0",2],
													["MSIE 11",11], ["MSIE 8",2],["MSIE 9",3],["Robot",1],["unknown",7]] */
	var options = {
		  title: '브라우저별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('log1'));
	
	chart.draw(data, options);
}

function draw_time_chart(info){
	var res_arr = [["\uc2dc","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	for(var i=0;i<24;i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	
	var data = google.visualization.arrayToDataTable(res_arr);
	var options = {
		  title: '시간별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('log2'));
	
	chart.draw(data, options);
}

function sttGet(type, d1, d2){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/menu06_01InfoGet/"+type+"/"+d1+"/"+d2,
		type:"get",
		contentType : "application/json; charset=UTF-8",
		dataType:"json",
		async:false,
		success:function(json){
			//console.log(json);
			if(type == "time"){
				draw_time_chart(json);
			}else if(type == "browser"){
				draw_browser_chart(json);
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
};
google.load("visualization", "1", {packages:["corechart"]});
$(function(){
	
	/* google.setOnLoadCallback(draw_browser_chart);
	google.setOnLoadCallback(draw_time_chart);
	*/
	var ndate = new Date();
	var year = ndate.getFullYear();
	var month = ndate.getMonth()+1;
	var date = ndate.getDate();
	month = (month > 9) ? month+"":"0"+month;
	date = (date > 9) ? date+"":"0"+date;
	sttGet("time", year+"-"+month+"-"+date, year+"-"+month+"-"+date);
	sttGet("browser", year+"-"+month+"-"+date, year+"-"+month+"-"+date);
	$("#chart1 > span").text(year+"년 "+month+"월 "+date+"일 ");
	$("#chart2 > span").text(year+"년 "+month+"월 "+date+"일 ");
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
				<h1>기본환경설정</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="board_area">
					<div class="bdr-wrap">
						<div class="b01 board_layout">
							<div class="board_top">
								<h2>전문의상담</h2>
								<a href="javascript:;" class="more_btn" onclick="location.href='${pageContext.request.contextPath}/admin/menu03_01'">더보기 &gt;</a>
							</div>
							<table class="main_board">
								<colgroup>
									<col width="18%">
									<col width="*">
									<col width="25%">
									<col width="15%">
									<col width="13%">
								</colgroup>
								<tr>
									<th>이름</th>
									<th>처리상태</th>
									<th>등록일</th>
									<th>답변상태</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="4">미답변 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${list}">
												<tr class="cont">
													<td class="b_id"><a href="${pageContext.request.contextPath}/admin/menu03_01update?page=1&perPageNum=10&searchType&keyword&no=${item.no}">${item.name}</a></td>
													<td class="b_id"><a href="${pageContext.request.contextPath}/admin/menu03_01update?page=1&perPageNum=10&searchType&keyword&no=${item.no}">${item.state}</a></td>
													<td class="b_id">${item.regdate}</td>
													<td class="b_id">
														<c:if test="${item.reply ==''}">미답변</c:if>
														<c:if test="${item.reply !=''}">답변</c:if>
													</td>
												</tr>
												<c:set var="num" value="${num-1}"></c:set>	
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						
						<div class="b01 board_layout b02_">
							<div class="board_top">
								<h2>진료예약</h2>
								<a href="javascript:;" class="more_btn" onclick="location.href='${pageContext.request.contextPath}/admin/menu03_02'">더보기 &gt;</a>
							</div>
							<table class="main_board">
								<colgroup>
									<col width="18%">
									<col width="*">
									<col width="25%">
									<col width="15%">
									<col width="13%">
								</colgroup>
								<tr>
									<th>이름</th>
									<th>처리상태</th>
									<th>등록일</th>
									<th>답변상태</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(resList) ==0 }">
										<tr><td colspan="4">미답변 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${resList}">
												<tr class="cont">
													<td class="b_id"><a href="${pageContext.request.contextPath}/admin/menu03_02update?page=1&perPageNum=10&searchType&keyword&no=${item.no}">${item.name}</a></td>
													<td class="b_id"><a href="${pageContext.request.contextPath}/admin/menu03_02update?page=1&perPageNum=10&searchType&keyword&no=${item.no}">${item.state}</a></td>
													<td class="b_id">${item.regdate}</td>
													<td class="b_id">
														<c:if test="${item.reply ==''}">미답변</c:if>
														<c:if test="${item.reply !=''}">답변</c:if>
													</td>
												</tr>
												<c:set var="num" value="${num-1}"></c:set>	
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
					</div>
				</div>


				<div class="log_area">
					<div class="log_layout">
						<div class="log_top">
							<h2 id="chart1"><span></span> - 브라우저별 접속 통계</h2>
							<a href="javascript:;" class="more_btn" onclick="location.href='${pageContext.request.contextPath}/admin/menu06_01'">더보기 &gt;</a>
						</div>
						<div class="log1" id="log1"></div>
					</div>
					
					<div class="log_layout second">
						<div class="log_top">
							<h2 id="chart1"><span></span> - 시간별 접속 통계</h2>
							<a href="javascript:;" class="more_btn" onclick="location.href='${pageContext.request.contextPath}/admin/menu06_01'">더보기 &gt;</a>
						</div>
						<div class="log2" id="log2"></div>
					</div>	
				</div><!-- log_area 끝 -->
			</div><!-- main_bottom_area 끝 -->
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->


</body>
</html>