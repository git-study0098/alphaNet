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
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>실기시험안내</li>
					<li><strong>실기시험 일정 변경 기준</strong></li>
				</ul>
			</div>

			<div class="content">
				<h3 class="tit_content">실기시험 일정 변경 기준</h3>
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>아래와 같은 사유에 한하여 작업형 실기시험일자를 변경해 주고 있으며, 변경요청은 우리공단 해당 종목
								시행 지역본부 및 지사를 방문하여 요청이 가능합니다.</li>
							<li><strong>방문 시에는 신분증</strong>(대리인일 경우 본인 및 대리인 신분증), <strong>수험표,
									근거서류</strong>(시험일자 변경신청서, 청첩장, 부고장, 진단서, 타기관시행 시험인 경우는 시험일자가 표시되어 있는 수험표
								등)<strong>을 지참하여 주시기 바랍니다.</strong></li>
						</ul>
						<p class="impt">※ 단, 회별 시행일자가 1일로 한정되어 있는 종목은 제외</p>
					</div>
					<span></span>
				</div>

				<div class="cont_parbx">
					<ul class="list">
						<li>예비군 훈련 또는 군입영</li>
						<li>본인, 배우자, 직계존비속, 형제자매의 관혼상제(결혼, 사망) 및 본인이 출산하는 경우</li>
						<li>국가행사 및 정규교육기관의 학력고사, 입학고사, 정규학교의 중간·기말고사, 타 기관에서 시행하는 국가
							및 민간자격시험과 우리 공단에서 시행하는 작업형 실기시험의 일정이 중복된 경우. 단, 접수시 공단시험일정과 위에
							제기된 시험일정이 중복됨을 사전에 인지한 경우에는 변경불가</li>
						<li>공단 검정일정의 중복(동일회 2종목의 일정이 중복되는 경우, 필기시험과 실기시험의 일정이 중복되는
							경우)</li>
						<li>개인사정으로 일정 변경(갑작스러운 질병 등) : 진단서 첨부로 일정변경</li>
						<li>천재지변에 의한 일정변경</li>
					</ul>
				</div>
			</div>
			<!-- class=content -->
		</div>
	</div>
</article>