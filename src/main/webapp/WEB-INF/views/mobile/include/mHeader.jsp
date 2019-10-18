<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="trn">
	<div class="inner">
		<div class="header">
			<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/common/theme/m_header01.png" alt="타이거치과의원 로고"></a>
			<a href="${pageContext.request.contextPath}/m/menu01_03"><img src="${pageContext.request.contextPath}/resources/img/common/theme/m_header02.png" alt="진료안내"></a>
			<a href="tel:02-540-2080"><img src="${pageContext.request.contextPath}/resources/img/common/theme/m_header03.png" alt="전화상담"></a>
			<button href="/m/" id="hamburger"><img src="${pageContext.request.contextPath}/resources/img/common/theme/m_header04.png" alt="GNB"></button>
		</div>
		<div id="gnb">
			<div class="inner">
				<button class="gnb-close"><img src="${pageContext.request.contextPath}/resources/img/common/theme/btn_close.png" alt=""></button>
				<ul class="header-group-member">
					<li>
						<a href="${pageContext.request.contextPath}/m/login" class="login trn">▶ LOGIN</a>
						<a href="${pageContext.request.contextPath}/m/join" class="join trn">▶ JOIN</a>
					</li>
				</ul>
				<ul>
					<li class="gnb ">
						<button data-text="타이거치과"><span>타이거치과</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu01_01" data-text="타이거의 특별함"><span>타이거의 특별함</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu01_02" data-text="의료진 소개"><span>의료진 소개</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu01_03" data-text="진료안내"><span>진료안내</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu01_04" data-text="내부시설"><span>내부시설</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu01_05" data-text="찾아오시는 길"><span>찾아오시는 길</span></a>
							</li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="퀵 임플란트"><span>퀵 임플란트</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu02_01" data-text="임플란트 차별성"><span>임플란트 차별성</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu02_02" data-text="HERI 임플란트"><span>HERI 임플란트</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu02_03" data-text="3D 네비게이션 임플란트"><span>3D 네비게이션 임플란트</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu02_04" data-text="자외선 임플란트"><span>자외선 임플란트</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu02_05" data-text="1DAY 임플란트"><span>1DAY 임플란트</span></a>
							</li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="퀵 치아성형"><span>퀵 치아성형</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu03_01" data-text="타이거치과 심미치료 차별성"><span>타이거치과 심미치료 차별성</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu03_02" data-text="타라미1.5"><span>타라미1.5</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu03_03" data-text="타세라1.5"><span>타세라1.5</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu03_04" data-text="타지르1.5"><span>타지르1.5</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu03_05" data-text="오스템 치아미백"><span>오스템 치아미백</span></a>
							</li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="퀵 디지털교정"><span>퀵 디지털교정</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu04_01" data-text="타이거치과 교정 차별성"><span>타이거치과 교정 차별성</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu04_02" data-text="퀵 디지털 교정"><span>퀵 디지털 교정</span></a>
							</li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="예방·일반진료"><span>예방·일반진료</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu05_01" data-text="아프지 않은 스케일링"><span>아프지 않은 스케일링</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu05_02" data-text="OBD진단(치주질환 세균분석)"><span>OBD진단(치주질환 세균분석)</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu05_03" data-text="OBT치료(박테리아 테라피)"><span>OBT치료(박테리아 테라피)</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu05_04" data-text="충치치료"><span>충치치료</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu05_05" data-text="사랑니 발치"><span>사랑니 발치</span></a>
							</li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="커뮤니티"><span>커뮤니티</span></button>
						<ul class="lnb-wrap">
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu06_01" data-text="공지사항"><span>공지사항</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu06_02" data-text="언론보도"><span>언론보도</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu06_03" data-text="치료사례"><span>치료사례</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu06_04" data-text="치료후기"><span>치료후기</span></a>
							</li>
							<li class="lnb ">
								<a href="${pageContext.request.contextPath}/m/menu06_05" data-text="온라인 상담"><span>온라인 상담</span></a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="tiger-sns">
					<a href="https://www.facebook.com/stigerdental/" data-name="페이스북"></a>
					<a href="https://www.instagram.com/tigerdental/" data-name="인스타그램"></a>
					<a href="https://blog.naver.com/tigerdental" data-name="블로그"></a>
				</div>
			</div>
		</div>
	</div>
</header>