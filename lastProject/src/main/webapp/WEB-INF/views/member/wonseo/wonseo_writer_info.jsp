<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>필기시험안내</li>
					<li><strong>필기시험 접수안내</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">필기시험 접수안내</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<h4>필기시험 원서접수</h4>
				<div class="cont_parbx">
					<div class="receipt_info">
						<p>접수기간 내에 인터넷을 이용 원서접수</p>
						<ul>
							<li>비회원의 경우 우선 회원 가입 (필히 사진등록)</li>
							<li>지역에 상관없이 원하는 시험장 선택 가능</li>
						</ul>
					</div>
				</div>

				<h4>수험사항 통보</h4>
				<div class="cont_parbx">
					<ul class="list">
						<li>수험일시와 장소는 접수 즉시 통보됨</li>
						<li>본인이 신청한 수험장소와 종목이 수험표의 기재사항과 일치 여부 확인 </li>
					</ul>
				</div>

				<h4>필기시험 시험일 유의사항 </h4>
				<div class="cont_parbx">
					<ul class="list">
						<li>입실시간 미준수시 시험응시 불가 </li>
						<li>수험표, 신분증, 필기구(흑색 싸인펜 등) 지참</li>
					</ul>
				</div>

				<h4>합격자 발표</h4>
				<div class="cont_parbx">
					<p class="list">인터넷, ARS, 접수지사에 게시 공고</p>
				</div>

				<h4>응시자격서류심사</h4>
				<div class="cont_parbx mb10">
					<div class="receipt_info mb20">
						<p>대상</p>
						<ul>
							<li class="one_line">기술사, 기능장, 기사, 산업기사, 전무사무 분야 중 응시자격 제한 종목<br>(직업상담사 1급, 사회조사분석사 1급, 임상심리사 2급 등)</li>
						</ul>
					</div>
					<ul class="list">
						<li>응시자격서류 제출기한 내(토, 일, 공휴일 제외)에 소정의 응시자격서류(졸업증명서, 공단 소정 경력증명서 등)를 제출하지 아니할 경우에는 필기시험 합격예정이 무효됩니다.</li>
						<li>응시자격서류를 제출하여 합격처리된 사람에 한하여 실기접수가 가능함.<br>(실기접수기간은 합격예정자 발표일로부터 4일간)</li>
						<!-- 2016.06.16 jws : 김은주주임 요청 온라인응시자격서류 제출기간 안내문구 추가 -->
						<li>온라인응시자격서류제출은 필기시험 원서접수일 부터 필기시험 합격자 발표일 까지 가능</li>
					</ul>
					
				</div>
				<p class="page_ps">※ 국가전문자격에 관련된 시험정보는 해당자격별 홈페이지를 참조하세요</p>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
	</div>
</article>