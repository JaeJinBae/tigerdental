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
function id_chk(id){
	$.ajax({
		url:"${pageContext.request.contextPath}/id_duplicate_chk/"+id,
		type:"POST",
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		async:false,
		success:function(json){
			if(json == "empty"){
				alert("사용가능한 아이디입니다.");
				$("#idchkval").val("o");
			}else if(json == "exist"){
				alert("이미 사용중인 아이디입니다.");
				$("#idchkval").val("x");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function addr_func(){
	new daum.Postcode({
        oncomplete: function(data) {
        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}
$(function(){
	$(".left_menu > dl:nth-child(4) > dt > a").addClass("on");
	$(".left_menu > dl:nth-child(4) > dd:nth-child(2) > a").addClass("on");
	
	$("#id_duplicate_chk_btn").click(function(){
		var id=$("#id").val();
		id_chk(id);
	});
	
	$("#mailcode").change(function(){
		var codee = $(this).val();
		$("#email2").val(codee);
	});
	
	$("#form1").submit(function(){
		if($("#idchkval").val() == "x"){
			alert("아이디 중복확인을 진행하세요.");
			return false;
		}
		
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
		
		month = (month > 10) ? month+"":"0"+month;
		date = (date > 10) ? date+"":"0"+date;
		
		$("#regdate").val(year+"-"+month+"-"+date);
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
				<h1>가입회원</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>회원관리&nbsp;&gt;&nbsp;</li>
					<li>가입회원</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form name="member" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu04_01register">
					<input type="hidden" name="regdate" id="regdate">
					<div class="write_area">
						<div class="write_box">
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">아이디</td>
									<td>
										<input type="text" class="w_form_m" name="id" id="id" value="">
										<input type="hidden" id="idchkval" value="x">
										<button type="button" id="id_duplicate_chk_btn">중복확인</button>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">사용자명</td>
									<td><input type="text" class="w_form_m" name="name" id="name" value=""></td>
								</tr>
								<tr class="cont">
									<td class="title">등급</td>
									<td>
										<select name="lv" id="lv" class="search_sel"><option value="9">일반회원</option></select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">비밀번호</td>
									<td><input type="password" class="w_form_m" name="pw" id="pw"></td>
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
								<!-- <tr class="cont">
									<td class="title">생년월일</td>
									<td>
										<input type="text" class="w_form_s" id="birth" name="birth" value=""> (YYYY-MM-DD)
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr> -->
								<tr class="cont">
									<td class="title">성별</td>
									<td>
										<label><i></i><input type="radio" name="gender" class="gender" value="m">남</label>&nbsp;&nbsp;&nbsp;
										<label><i></i><input type="radio" name="gender" class="gender" value="f">여</label>&nbsp;&nbsp;&nbsp;
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
							</table>
							
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01'">리스트</button>
							</p>
							<p class="btn_right">
								<input type="submit" class="btn_black" value="등록">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01register'">취소</button>
							</p>
						</div>
				
					</div><!-- write_area end -->
				</form>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <jsp:include page="include/footer.jsp"></jsp:include>
</div><!-- wrap 끝 -->

</body>
</html>