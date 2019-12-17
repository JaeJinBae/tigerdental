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
<link href="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/ui+ko.css" type="text/css" rel="stylesheet">
<script src="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/format+ko,default+ko,ui+ko,corechart+ko.I.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<style type="text/css">
.search_span{
	display: none;
}
#time_span{
	display: inline-block;
}
</style>
<script>
google.load("visualization", "1", {packages:["corechart"]});

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
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_date_chart(info){
	var res_arr = [["\uc77c\uc790\ubcc4","\uc811\uc18d\uc790"]];
	var temp_arr = [];

	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	
	var data = google.visualization.arrayToDataTable(res_arr);
	var options = {
		  title: '날짜별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_dayofweek_chart(info){
	var res_arr = [["\uc694\uc77c","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	
	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	/* [["\uc694\uc77c","\uc811\uc18d\uc790"],["\uc77c",480],["\uc6d4",926],["\ud654",697],
													["\uc218",580],["\ubaa9",473], ["\uae08",458],["\ud1a0",389]] */
	var data = google.visualization.arrayToDataTable(res_arr);
	var options = {
		  title: '요일별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_month_chart(info){
	var res_arr = [["\uc6d4\ubcc4","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	
	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	/* [["\uc6d4\ubcc4","\uc811\uc18d\uc790"],["2018-06",4],["2018-07",3447],
													["2018-08",5920],["2018-09",5221],["2018-10",5508],["2018-11",5870],["2018-12",5441]] */
	var data = google.visualization.arrayToDataTable(res_arr);
	var options = {
		  title: '월별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_year_chart(info){
	var res_arr = [["\ub144\ubcc4","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	
	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	
	var data = google.visualization.arrayToDataTable(res_arr);
	/* [["\ub144\ubcc4","\uc811\uc18d\uc790"],["2018",31411],["2019",49834]] */
	var options = {
		  title: '년도별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

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
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_os_chart(info){
	var res_arr = [["OS\ud1b5\uacc4","\uc811\uc18d\uc790"]];
	var temp_arr = [];
	
	for(var i=0;i<$(info).size();i++){
		temp_arr.push(info[i][0]);
		temp_arr.push(Number(info[i][1]));
		res_arr.push(temp_arr);
		temp_arr=[];
	}
	
	var data = google.visualization.arrayToDataTable(res_arr);
	/* [["OS\ud1b5\uacc4","\uc811\uc18d\uc790"],["Linux",46],
													["MAC",29],["Mozilla",8], ["Robot",3],["unknown",7],["Windows 7",14],
													["Windows 8",2], ["Windows Vista",1],["Windows XP",4]] */
	var options = {
		  title: 'OS별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function sttGet(type, d1, d2){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/menu05_01InfoGet/"+type+"/"+d1+"/"+d2,
		type:"get",
		contentType : "application/json; charset=UTF-8",
		dataType:"json",
		async:false,
		success:function(json){
			//console.log(json);
			if(type == "time"){
				draw_time_chart(json);
			}else if(type == "date"){
				draw_date_chart(json);
			}else if(type == "dayofweek"){
				draw_dayofweek_chart(json);
			}else if(type == "month"){
				draw_month_chart(json);
			}else if(type == "year"){
				draw_year_chart(json);
			}else if(type == "browser"){
				draw_browser_chart(json);
			}else if(type == "os"){
				draw_os_chart(json);
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
};

$(function(){
	google.setOnLoadCallback(draw_time_chart);
	
	$(".search_t_box100").datepicker({
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
	$("#start_monthy_key > option[value='"+year+"']").prop("selected", true);
	$("#end_monthy_key > option[value='"+year+"']").prop("selected", true);
	$("#start_monthm_key > option[value='1']").prop("selected", true);
	$("#end_monthm_key > option[value='12']").prop("selected", true);
	
	$("#start_year_key > option[value='"+year+"']").prop("selected", true);
	$("#end_year_key > option[value='"+year+"']").prop("selected", true);
	
	month = (month > 9) ? month+"":"0"+month;
	date = (date > 9) ? date+"":"0"+date;
	
	$(".search_t_box100").val(year+"-"+month+"-"+date);
	
	sttGet("time", year+"-"+month+"-"+date, year+"-"+month+"-"+date);
	
	$("#select_key").change(function(){
		var sel_type = $(this).val();
		$(".search_span").css("display", "none");
		$("#"+sel_type+"_span").css("display", "inline-block");
	});
	
	$(".search_btn").click(function(){
		var searchType = $("#select_key").val();
		var s_d = "";
		var e_d = "";
		if(searchType == "time"){
			s_d = $("#start_time_key").val();
			e_d = $("#end_time_key").val();
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "date"){
			s_d = $("#start_day_key").val();
			e_d = $("#end_day_key").val();
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "dayofweek"){
			s_d = $("#start_weekend_key").val();
			e_d = $("#end_weekend_key").val();
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "month"){
			s_d = $("#start_monthy_key").val()+"-"+$("#start_monthm_key").val()+"-01";
			e_d = $("#end_monthy_key").val()+"-"+$("#end_monthm_key").val()+"-31";
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "year"){
			s_d = $("#start_year_key").val()+"-01-01";
			e_d = $("#end_year_key").val()+"-12-31";
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "browser"){
			s_d = $("#start_browser_key").val();
			e_d = $("#end_browser_key").val();
			sttGet(searchType, s_d, e_d);
		}else if(searchType == "os"){
			s_d = $("#start_os_key").val();
			e_d = $("#end_os_key").val();
			sttGet(searchType, s_d, e_d);
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
				<h1>트래픽분석</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>마케팅분석&nbsp;&gt;&nbsp;</li>
					<li>트래픽분석</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top" style="margin-right:100px">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel">
										<option value="time">시간별통계</option>
										<option value="date">일자별통계</option>
										<option value="dayofweek">요일별통계</option>
										<option value="month">월별통계</option>
										<option value="year">년별통계</option>
										<option value="browser">브라우져별통계</option>
										<option value="os">OS통계</option>
									</select>
									<!-- 시간별통계 -->
									<span id="time_span" class="search_span">
										<input type="text" name="start_time_key" id="start_time_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_time_key" id="end_time_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 일자별통계 -->
									<span id="date_span" class="search_span">
										<input type="text" name="start_day_key" id="start_day_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_day_key" id="end_day_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 요일별통계 -->
									<span id="dayofweek_span" class="search_span">
										<input type="text" name="start_weekend_key" id="start_weekend_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_weekend_key" id="end_weekend_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 월별통계 -->
									<span id="month_span" class="search_span">
										<select name="start_monthy_key" id="start_monthy_key" class="search_sel_70">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023">2023</option>
											<option value="2024">2024</option>
											<option value="2025">2025</option>
											<option value="2026">2026</option>
											<option value="2027">2027</option>
											<option value="2028">2028</option>
											<option value="2029">2029</option>
											<option value="2030">2030</option>
											<option value="2031">2031</option>
											<option value="2032">2032</option>
											<option value="2033">2033</option>
											<option value="2034">2034</option>
											<option value="2035">2035</option>
											<option value="2036">2036</option>
											<option value="2037">2037</option>
											<option value="2038">2038</option>
											<option value="2039">2039</option>
											<option value="2040">2040</option>
										</select>
										<select name="start_monthm_key" id="start_monthm_key" class="search_sel_70">
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>~
										<select name="end_monthy_key" id="end_monthy_key" class="search_sel_70">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023">2023</option>
											<option value="2024">2024</option>
											<option value="2025">2025</option>
											<option value="2026">2026</option>
											<option value="2027">2027</option>
											<option value="2028">2028</option>
											<option value="2029">2029</option>
											<option value="2030">2030</option>
											<option value="2031">2031</option>
											<option value="2032">2032</option>
											<option value="2033">2033</option>
											<option value="2034">2034</option>
											<option value="2035">2035</option>
											<option value="2036">2036</option>
											<option value="2037">2037</option>
											<option value="2038">2038</option>
											<option value="2039">2039</option>
											<option value="2040">2040</option>
										</select>							
										<select name="end_monthm_key" id="end_monthm_key" class="search_sel_70">
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>		
									</span>
			
									<!-- 년별통계 -->
									<span id="year_span" class="search_span">
										<select name="start_year_key" id="start_year_key" class="search_sel">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023">2023</option>
											<option value="2024">2024</option>
											<option value="2025">2025</option>
											<option value="2026">2026</option>
											<option value="2027">2027</option>
											<option value="2028">2028</option>
											<option value="2029">2029</option>
											<option value="2030">2030</option>
											<option value="2031">2031</option>
											<option value="2032">2032</option>
											<option value="2033">2033</option>
											<option value="2034">2034</option>
											<option value="2035">2035</option>
											<option value="2036">2036</option>
											<option value="2037">2037</option>
											<option value="2038">2038</option>
											<option value="2039">2039</option>
											<option value="2040">2040</option>
										</select>							~
										<select name="end_year_key" id="end_year_key" class="search_sel">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023">2023</option>
											<option value="2024">2024</option>
											<option value="2025">2025</option>
											<option value="2026">2026</option>
											<option value="2027">2027</option>
											<option value="2028">2028</option>
											<option value="2029">2029</option>
											<option value="2030">2030</option>
											<option value="2031">2031</option>
											<option value="2032">2032</option>
											<option value="2033">2033</option>
											<option value="2034">2034</option>
											<option value="2035">2035</option>
											<option value="2036">2036</option>
											<option value="2037">2037</option>
											<option value="2038">2038</option>
											<option value="2039">2039</option>
											<option value="2040">2040</option>
										</select>
									</span>
			
									<!-- 브라우져별통계 -->
									<span id="browser_span" class="search_span">
										<input type="text" name="start_browser_key" id="start_browser_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_browser_key" id="end_browser_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- OS통계 -->
									<span id="os_span" class="search_span">
										<input type="text" name="start_os_key" id="start_os_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_os_key" id="end_os_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<button type="button" name="submit_btn" class="search_btn cursor">검색</button>
								</div>
						</div><br>
			
						<div id="chart_div" style="width:100%; height:600px;"></div>
					</div>
				</div>
			</div><!-- main_bottom_area end -->
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>