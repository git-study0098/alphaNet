<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  

<article>
<div id="container">
<!-- 좌측 메뉴바 -->

<div>
		<jsp:include page="jagukLnb.jsp" />
	   <div id="lnb2"></div>
	</div>   <!-- 좌측 메뉴바 끝-->
   
<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">국가자격취득자주의사항</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<h4>국가자격취득자주의사항이란?</h4>
				<div class="cont_parbx mb0">
					<ul class="list">
						<li>국가기술자격증은 관계자의 요청이 있을 때에는 이를 제시하여야 합니다.</li>
						<li>국가기술자격취득자는 성명, 주민등록번호, 주소, 종목 및 등급, 근무처 등이 변경되었을 때에는
							변경내용을 우리 공단에 정정 신청하여야 합니다.</li>
						<li>국가기술자격증을 타인에게 대여하면 국가기술자격법 제16조의 규정에 의거 1년 이하의 징역 또는 1천만원
							이하의 벌금형을 받게 되며, 당해 국가기술자격은 취소 또는 3년 이내의 범위에서 정지됩니다. 국가기술자격증을
							대여받은자 또한 국가기술자격법 제27조(양벌규정)에 의거 동일한 처벌을 받게되니 주의하시기 바랍니다.</li>
						<li>기술자격이 취소 또는 정지된 자는 지체없이 기술자격증을 반납하여야 합니다.</li>
					</ul>
				</div>

				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>