<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="common-banner">
	<div class="full">
		<img src="${pageContext.request.contextPath}/resources/img/common/theme/visual_footer_bg.jpg" alt="">
	</div>
</div>

<!-- 공통(진료시간, 고객센터, 오시는길) 시작 -->
<div id="tiger-section06">
	<div class="inner">
		<div class="timetable">
			<h5>진료시간</h5>
			<ul>
				<li><b>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 19:00</li>
				<li><b>화&nbsp;&nbsp;&nbsp;요&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 21:00 (야간)</li>
				<li><b>토&nbsp;&nbsp;&nbsp;요&nbsp;&nbsp;&nbsp;일</b>: 10:00 ~ 14:00 <span style="letter-spacing:-2px">(점심시간없음)</span></li>
				<li><b>점&nbsp;심&nbsp;시&nbsp;간</b>: 13:00 ~ 14:00</li>
			</ul>
			<p>일·공휴일은 휴진입니다.</p>
			<p>화요일 공휴일 시 목요일 야간 진료</p>
		</div>
		<div class="customer">
			<h5>고객센터</h5>
			<ul>
				<li><img src="${pageContext.request.contextPath}/resources/img/web/main/theme/customer_call.png" alt=""></li>
				<!--<li>
					<b>카카오톡상담</b>
					@타이거치과
				</li>-->
			</ul>

			<div class="customer-btn">
				<!--<a href="#" class="btn-kakao"></a>-->
				<a href="${pageContext.request.contextPath}/menu06_05" class="btn-counsel">온라인<br>상담 +</a>
			</div>
		</div>
		<div class="location">
			<h5>오시는길</h5>
			<ul>
				<li>서울특별시 강남구 도산대로 134,</li>
				<li>페이토빌딩 B1</li>
			</ul>
			<a href="${pageContext.request.contextPath}/menu01_05" class="more">자세히보기 +</a>
		</div>
	</div>
</div>