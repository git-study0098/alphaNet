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

			<div id="content">
				<div class="location">
					<ul>
						<li>홈</li>
						<li>정기시험</li>
						<li>실기시험안내</li>
						<li><strong>실기일정 및 타지사 이동 사유</strong></li>
					</ul>
				</div>

				<div class="content">
					<h3 class="tit_content">실기일정 및 타지사 이동 사유</h3>
					<div class="infoBox">
						<div>
							<p class="list">
								우리공단에서 시행하는 실기시험은 필답형, 작업형, 복합형으로 구분하여 시행하고 있으며, 필답형(복합형 필답분
								포함)은 실기시험 시 특별한 시설과 장비가 필요하지 않고 교실만 있으면 시험을 치룰 수 있기 때문에 <strong>전
									수험자를 대상으로 일요일에 검정을 시행</strong>하고 있습니다.
							</p>
						</div>
						<span></span>
					</div>

					<div class="cont_parbx">
						<ul class="list">
							<li>작업형 실기시험은 시행종목에 따라 필요한 시설, 장비, 재료 등이 각각 다르며, 시험장의 대부분을
								임차하여 사용하는 현 상황에서 임차기관의 일정 등을 무시하고 모든 일정을 우리공단의 시험일정에 맞추도록 강요할 수
								없는 사항이므로 한번 시행 시 10만명이 넘는 모든 수험자를 일요일에만 시행할 수가 없는 실정입니다.<br>
								우리공단에서도 위와 같은 문제점을 해결하기 위하여 우리공단 자체시험장 설치 등을 통하여 수험자가 희망하는 일정에
								응시할 수 있는 상시검정 제도를 도입하여 <strong>정보처리기능사, 한식조리기능사, 미용사 등
									일부 종목</strong>에 대하여 시행을 하고 있으며 수험자의 편의를 위하여 동 제도를 점차적으로 확대해 나가고 있습니다.
							</li>
							<li><strong>실기시험이 작업형으로 시행되는 일부 종목은 접수지역(지사)에 접수인원이
									소수이고 관할 지역내에 시험장 및 시설장비가 없는 경우에 한하여 접수지역에서 시행을 하지 못하고 부득이하게
									타지역으로 이동하여 시행하게 됨</strong>을 양지하여 주시기 바랍니다.</li>
							<li>국가기술자격검정 작업형 실기시험의 특성상 평일에도 시행할 수밖에 없는 점과 일부 종목에 대해서
								타지역으로 이동 시행할 수밖에 없는 점을 감안하시어 실기시험 준비에 차질이 없도록 하시기 바랍니다.</li>
						</ul>
					</div>
				</div>
				<!-- class=content> -->
			</div>
			<!-- class=content -->
		</div>
	</div>
</article>