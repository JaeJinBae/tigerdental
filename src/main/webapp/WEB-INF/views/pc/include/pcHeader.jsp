<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header id="header" class="">
	<div class="header-group">
		<ul class="header-group-call">
			<li>
				<img src="${pageContext.request.contextPath}/resources/img/common/theme/call.png" alt="">
			</li>
		</ul>

		<ul class="header-group-member">
			<li>
				<img src="${pageContext.request.contextPath}/resources/img/common/theme/member_arrow.png" alt=""><a href="/login" class="login trn">LOGIN</a>
				<img src="${pageContext.request.contextPath}/resources/img/common/theme/member_arrow.png" alt=""><a href="/join" class="join trn">JOIN</a>
				<a href="https://www.facebook.com/stigerdental/" target="_blank" data-menu="페이스북"><img src="${pageContext.request.contextPath}/resources/img/common/theme/sns01.png" alt=""></a>
				<a href="https://www.instagram.com/tigerdental/" target="_blank" data-menu="인스타그램"><img src="${pageContext.request.contextPath}/resources/img/common/theme/sns03.png" alt=""></a>
				<a href="https://blog.naver.com/tigerdental" target="_blank" data-menu="블로그"><img src="${pageContext.request.contextPath}/resources/img/common/theme/sns02.png" alt=""></a>
			</li>
		</ul>

		<div id="logo"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/common/theme/logo.png" alt=""></a></div>

		<ul class="header-group-quick">
			<li class="gnb-all">
				<button class="trn">
					<img src="${pageContext.request.contextPath}/resources/img/common/theme/btn_gnb.png" alt="">
				</button>
			</li>
		</ul>
	</div><!-- .header-group end -->
	<div id="gnb" class="">
		<ul>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu01_01" data-text="타이거치과"><span>타이거치과</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu01_01" data-text="타이거의 특별함"><span>타이거의 특별함</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu01_02" data-text="의료진 소개"><span>의료진 소개</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu01_03" data-text="진료안내"><span>진료안내</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu01_04" data-text="내부시설"><span>내부시설</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu01_05" data-text="찾아오시는 길"><span>찾아오시는 길</span></a>
					</li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu02_01" data-text="퀵 임플란트"><span>퀵 임플란트</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu02_01" data-text="타이거치과 임플란트 차별성"><span>타이거치과 임플란트 차별성</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu02_02" data-text="HERI 임플란트"><span>HERI 임플란트</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu02_03" data-text="3D 네비게이션 임플란트"><span>3D 네비게이션 임플란트</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu02_04" data-text="자외선 임플란트"><span>자외선 임플란트</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu02_05" data-text="1DAY 임플란트"><span>1DAY 임플란트</span></a>
					</li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu03_01" data-text="퀵 치아성형"><span>퀵 치아성형</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu03_01" data-text="타이거치과 심미치료 차별성"><span>타이거치과 심미치료 차별성</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu03_02" data-text="타라미 1.5"><span>타라미 1.5</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu03_03" data-text="타세라 1.5"><span>타세라 1.5</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu03_04" data-text="타지르 1.5"><span>타지르 1.5</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu03_05" data-text="오스템 치아미백"><span>오스템 치아미백</span></a>
					</li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu04_01" data-text="퀵 디지털교정"><span>퀵 디지털교정</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu04_01" data-text="타이거치과 교정 차별성"><span>타이거치과 교정 차별성</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu04_02" data-text="퀵 디지털 교정"><span>퀵 디지털 교정</span></a>
					</li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu05_01" data-text="예방·일반진료"><span>예방·일반진료</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu05_01" data-text="아프지 않은 스케일링"><span>아프지 않은 스케일링</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu05_02" data-text="OBD진단(치주질환 세균분석)"><span>OBD진단(치주질환 세균분석)</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu05_03" data-text="OBT치료(박테리아 테라피)"><span>OBT치료(박테리아 테라피)</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu05_04" data-text="충치치료"><span>충치치료</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu05_05" data-text="사랑니 발치"><span>사랑니 발치</span></a>
					</li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu06_01" data-text="커뮤니티"><span>커뮤니티</span></a>
				<ul class="lnb-wrap">
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu06_01" data-text="공지사항"><span>공지사항</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu06_02" data-text="언론보도"><span>언론보도</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu06_03" data-text="치료사례"><span>치료사례</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu06_04" data-text="치료후기"><span>치료후기</span></a>
					</li>
					<li class="lnb ">
						<a href="${pageContext.request.contextPath}/menu06_05" data-text="온라인 상담"><span>온라인 상담</span></a>
					</li>
				</ul>
			</li>
		</ul>
	</div><!-- #gnb end -->

	<!-- 전체카테고리 시작 -->
	<div id="anb">
		<div class="inner">
			<ul>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu01_01" data-text="타이거치과"><span>타이거치과</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu01_01" data-text="타이거의 특별함"><span>타이거의 특별함</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu01_02" data-text="의료진 소개"><span>의료진 소개</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu01_03" data-text="진료안내"><span>진료안내</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu01_04" data-text="내부시설"><span>내부시설</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu01_05" data-text="찾아오시는 길"><span>찾아오시는 길</span></a>
						</li>
					</ul>
				</li>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu02_01" data-text="퀵 임플란트"><span>퀵 임플란트</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu02_01" data-text="타이거치과 임플란트 차별성"><span>타이거치과 임플란트 차별성</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu02_02" data-text="HERI 임플란트"><span>HERI 임플란트</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu02_03" data-text="3D 네비게이션 임플란트"><span>3D 네비게이션 임플란트</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu02_04" data-text="자외선 임플란트"><span>자외선 임플란트</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu02_05" data-text="1DAY 임플란트"><span>1DAY 임플란트</span></a>
						</li>
					</ul>
				</li>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu03_01" data-text="퀵 치아성형"><span>퀵 치아성형</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu03_01" data-text="타이거치과 심미치료 차별성"><span>타이거치과 심미치료 차별성</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu03_02" data-text="타라미 1.5"><span>타라미 1.5</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu03_03" data-text="타세라 1.5"><span>타세라 1.5</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu03_04" data-text="타지르 1.5"><span>타지르 1.5</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu03_05" data-text="오스템 치아미백"><span>오스템 치아미백</span></a>
						</li>
					</ul>
				</li>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu04_01" data-text="퀵 디지털교정"><span>퀵 디지털교정</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu04_01" data-text="타이거치과 교정 차별성"><span>타이거치과 교정 차별성</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu04_02" data-text="퀵 디지털 교정"><span>퀵 디지털 교정</span></a>
						</li>
					</ul>
				</li>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu05_01" data-text="예방·일반진료"><span>예방·일반진료</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu05_01" data-text="아프지 않은 스케일링"><span>아프지 않은 스케일링</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu05_02" data-text="OBD진단(치주질환 세균분석)"><span>OBD진단(치주질환 세균분석)</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu05_03" data-text="OBT치료(박테리아 테라피)"><span>OBT치료(박테리아 테라피)</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu05_04" data-text="충치치료"><span>충치치료</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu05_05" data-text="사랑니 발치"><span>사랑니 발치</span></a>
						</li>
					</ul>
				</li>
				<li class="gnb ">
					<a href="${pageContext.request.contextPath}/menu06_01" data-text="커뮤니티"><span>커뮤니티</span></a>
					<ul class="lnb-wrap">
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu06_01" data-text="공지사항"><span>공지사항</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu06_02" data-text="언론보도"><span>언론보도</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu06_03" data-text="치료사례"><span>치료사례</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu06_04" data-text="치료후기"><span>치료후기</span></a>
						</li>
						<li class="lnb ">
							<a href="${pageContext.request.contextPath}/menu06_05" data-text="온라인 상담"><span>온라인 상담</span></a>
						</li>
					</ul>
				</li>
			</ul>
		</div><!-- .inner end -->
	</div><!-- #anb end -->
	<!-- 전체카테고리 끝 -->
</header>