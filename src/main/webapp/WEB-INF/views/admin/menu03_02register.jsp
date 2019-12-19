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
	$("#mailcode").change(function(){
		var codee = $(this).val();
		$("#email2").val(codee);
	});
	
	$("#form1").submit(function(){
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		var phone = phone1+"-"+phone2+"-"+phone3;
		$("#phone").val(phone);
		
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		var email = email1+"@"+email2; 
		$("#email").val(email);
		
		var ndate = new Date();
		var year = ndate.getFullYear();
		var month = ndate.getMonth()+1;
		var date = ndate.getDate();
		
		month = (month > 9) ? month+"":"0"+month;
		date = (date > 9) ? date+"":"0"+date;
		
		$("#regdate").val(year+"-"+month+"-"+date);
		
		var reply = $("#reply").val();
		if(reply.length > 0){
			$("#reply_date").val(year+"-"+month+"-"+date);
		}
		
		$("#ip").val(ip());
		$("#access_url").val(document.referrer);
		
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
				<form name="inquire" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu03_02register">
					<input type="hidden" name="regdate" value="" id="regdate">
					<input type="hidden" name="reply_date" value="" id="reply_date">
					<input type="hidden" name="ip" id="ip">
					<input type="hidden" name="access_url" id="access_url">
					<div class=""><h2 style="font-size:20px;"></h2></div>
					<div class="write_area">
						<div class="write_box">
							
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">상담구분</td>
									<td>
										<select name="advice_type" id="i_kind" class="search_sel">
											<option value="임플란트">임플란트</option>
											<option value="치아교정">치아교정</option>
											<option value="심미치료">심미치료</option>
											<option value="치아미백">치아미백</option>
											<option value="스케일링">스케일링</option>
											<option value="충치치료">충치치료</option>
											<option value="신경치료">신경치료</option>
											<option value="사랑니발치">사랑니발치</option>
											<option value="예방진료">예방진료</option>
											<option value="기타">기타</option>
										</select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">상담자</td>
									<td><input type="text" class="w_form_s" name="name" id="name" value=""></td>
								</tr>
								<tr class="cont">
									<td class="title">휴대전화</td>
									<td>
										<select name="phone1" id="phone1" class="search_sel">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>-
										<input type="text" class="w_form_s" maxlength="4" id="phone2" name="phone2" value="">-
										<input type="text" class="w_form_s" maxlength="4" id="phone3" name="phone3" value="">
										<input type="hidden" name="phone" id="phone" value="">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">이메일</td>
									<td>
										<input type="hidden" name="email" id="email" value="">
										<input type="text" class="w_form_s" name="email1" id="email1" value=""> @&nbsp;
										<input type="text" class="w_form_s" name="email2" id="email2" value="">
										<select name="emailcode" id="mailcode" class="search_sel">
											<option value="">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="yahoo.com">yahoo.com</option>
											<option value="nate.com">nate.com</option>
											<option value="paran.com">paran.com</option>
											<option value="google.com">google.com</option>
											<option value="empas.com">empas.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="msn.com">msn.com</option>
											<option value="korea.com">korea.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="chol.com">chol.com</option>
											<option value="empal.com">empal.com</option>
											<option value="lycos.com">lycos.com</option>
											<option value="netian.com">netian.com</option>
										</select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">처리상태</td>
									<td>
										<select name="state" id="state" class="search_sel">
											<option value="상담예정">상담예정</option>
											<option value="상담진행">상담진행</option>
											<option value="상담완료">상담완료</option>
											<option value="기타">기타</option>
										</select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">비밀글</td>
									<td>
										<label><input type="radio" name="secret" class="secret" value="o" checked="checked">예</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="radio" name="secret" class="secret" value="x">아니오</label>&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr class="cont">
									<td class="title">비밀번호</td>
									<td>
										<input type="password" name="pw">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td><input type="text" class="w_form_l" name="title" id="title" value=""></td>
								</tr>
								<tr class="cont">
									<td class="title">문의내용</td>
									<td><textarea name="content" id="content" cols="120" rows="8" class="w_form_txtArea"></textarea></td>
								</tr>
								<tr class="cont">
									<td class="title">상담내용</td>
									<td><textarea name="reply" id="reply" cols="120" rows="8" class="w_form_txtArea"></textarea></td>
								</tr>
								<tr class="cont">
									<td class="title">메모</td>
									<td><textarea name="memo" id="memo" cols="120" rows="8" class="w_form_txtArea"></textarea></td>
								</tr>
								<tr class="cont">
									<td class="title">첨부파일</td>
									<td>
										<div><input type="file" name="upload_origin" style="width:450px"><br></div>
									</td>
								</tr>
							</table>
							
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu03_02'">리스트</button>
							</p>
				
							<p class="btn_right">
								<input type="submit" class="btn_black" value="등록">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu03_02register'">취소</button>
							</p>
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