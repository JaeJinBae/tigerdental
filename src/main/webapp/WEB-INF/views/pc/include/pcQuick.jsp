<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="quick-counsel-button">
		<button class="toggle-button trn">빠른상담 신청하기</button>
	</div>
	<!-- 빠른상담 신청하기 퀵버튼 끝 -->

	<!-- 빠른상담 신청하기 폼 시작 -->
	<section id="quick-counsel" class="trn">
		<div class="inner">
			<form name="land" id="land" method="post" action="promotion_proc.php">
			<fieldset>
			<legend>상담신청자의 정보 입력</legend>
			<input type="hidden" name="mode" value="insert">
			<ul class="quick-counsel-form">
				<li>
					<div>
						<label for="i_name">고객명</label>
						<input name="i_name" id="i_name" type="text" element-name="고객명" valid="required">
					</div>
					<div>
						<label for="i_tel1">연락처</label>
						<input name="i_tel1" id="i_tel1" type="text" maxlength="3" element-name="연락처1" valid="required,phone_tel33">
						<input name="i_tel2" id="i_tel2" type="text" maxlength="4" element-name="연락처2" valid="required,phone_tel34">
						<input name="i_tel3" id="i_tel3" type="text" maxlength="4" element-name="연락처3" valid="required,phone_tel44">
					</div>
					<div>
						<label for="i_kind">상담분야</label>
						<select name="i_kind" id="i_kind" element-name="상담분야">
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
					</div>
				</li>
				<li>
					<div>
						<label element-name="상담내용">상담내용</label>
						<textarea name="i_content" id="i_content" rows="*" cols="*" element-name="상담내용" valid="required" placeholder="상담 가능한 시간대나 상담 내용을 입력하여 주세요."></textarea>
					</div>
					<div>
						<span class="private">
							<input title="약관동의" id="agree" type="checkbox" checked="" value="Y">
							<label element-name="동의" for="agree">동의</label>
						</span>
						<button type="button" class="btn-private">개인정보 취급방침</button>
					</div>
				</li>
				<li>
					<p>
						<button type="button" onclick="land_it('insert')" element-name="빠른상담신청">빠른상담접수</button>
					</p>
				</li>
			</ul>
			</fieldset>
			</form>
		</div>
	</section>
	<!-- 빠른상담 신청하기 폼 끝 -->


	<!-- 개인정보 취급방침 팝업 시작 -->
	<div class="pop-private">
		<div class="pop-inner">
			<h3><svg class="svg-inline--fa fa-lock fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"></path></svg><!-- <i class="fas fa-lock"></i> --> 개인정보 취급방침</h3>
			<p>
				<b>1.개인정보 수집이용에 대한 동의</b>
				‘타이거 치과의원’는 회원님의 개인정보를 중요시하며, “정보통신망
				이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다.
				회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며,
				회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,
				개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
				또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할
				것입니다.<br><br><br>

				<b>2.개인정보의 수집•이용 목적</b>
				회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함,
				연락처, 상담내용 등의 정보가 수집됩니다.
				- 수집항목 : 성명, 연락처, 상담내용
				- 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내
				고지에 활용<br><br><br>

				<b>3.보유이용 기간</b>
				원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로
				파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한기간 동안 보존합니다.
				- 보존 이유 : 회원님의 동의를 통한 정보 유지
				- 보존 기간 : 회원정보 삭제 요청 시까지
			</p>
			<button class="pop-close" type="button"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --> 닫기</button>
		</div>
	</div>
	<!-- 개인정보 취급방침 팝업 끝 -->

	<!-- 최상단으로 올라가기 버튼 시작 -->
	<div id="top">
		<a href="#wrap"><img src="${pageContext.request.contextPath}/resources/img/landing/top.png" alt=""></a>
	</div>
	<!-- 최상단으로 올라가기 버튼 끝 -->

	<script>
	$("#top").click(function(e){
		e.preventDefault();
		$("html, body").animate({scrollTop: $("#wrap").offset().top},500);
	});
	$('.toggle-button').on('click', function() {
		$('#quick-counsel').toggleClass('active');
		$(this).toggleClass('active');
	});

	$('.btn-private').on('click', function() {
		$('.pop-private').fadeIn();
	});

	$('.pop-close').on('click', function() {
		$('.pop-private').fadeOut();
	});

	function land_callback(){
		var fm = document.land;

		if( !$("#land").validate() ) return;
		fm.submit();
/*
		$.post("/html/landing/promotion_proc.php", $("#land").serialize(), function(data){
			var fm = document.land;
			var _nm   = fm.i_name.value ;         // 상담신청 고객명
			var _hp   = fm.i_tel1.value+"-"+fm.i_tel2.value+"-"+fm.i_tel3.value;    		// 상담신청 연락처
			var _ty   = $("#i_kind option:selected").text();        	// 상담분야
			var _co   = fm.i_content.value;         // 상담 내용


			alert("상담신청이 완료되었습니다.\n\n고객님의 소중한 정보는 상담에만 이용됩니다.\n\n빠른시일내에 답변드리겠습니다. 감사합니다");
			land_it('reset');
		});
*/
	}

	function land_it($mode){
		var fm = document.land;

		if(!$('#agree').is(':checked')) {
			alert("개인정보취급방침에 동의해 주시길 바랍니다.");
			return false;
		}

		if($mode == "insert"){
			if( !$("#land").validate() ) return;
			land_callback();

		}else if($mode == "reset"){


			fm.reset();
		}
	}



	</script>