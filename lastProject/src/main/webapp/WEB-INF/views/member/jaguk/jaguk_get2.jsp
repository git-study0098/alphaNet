<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* {
	box-sizing: content-box;
}
.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="../../lnb/jagukLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>자격증 발급</li>
					<li><strong>자격증 미발급 조회</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">자격증 미발급 조회</h3>
				<!-- //컨텐츠 타이틀 -->
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>취득하신 자격증 미발급시 언제든지 자격증을 발급 받으실 수 있습니다.</li>
							<li>발급의 기한 제한은 없습니다.</li>
						</ul>
					</div>
					<span></span>
				</div>
				<!-- s: 개인정보 입력폼-->
				<form name="showList">
				<div class="personalInfo nonTbl">
					<fieldset>
						<legend>개인정보 입력</legend>
						<p style="height:27px"><label for="uregi">주민등록번호</label>
						<input type="text" id="resdNo1" title="주민번호 앞자리" style="width:66px" maxlength="6" class="numInput"> <span>-</span>
						<input type="password" id="resdNo2" title="주민번호 뒷자리" style="width:73px" maxlength="7" class="numInput"></p>
						<p style="height:27px"><label for="hgulNm">이름</label> <input style="width:166px" id="hgulNm" value="" type="text" maxlength="15"></p> <!-- 수정(0910) -->
						<button type="button" class="loginbtn" onclick="goPage();"><img alt="미발급 자격증 조회" src="<%=request.getContextPath()%>/resources/images/common/btn_sch2.gif"></button> <!-- 수정(0910) -->
					</fieldset>
				</div>
				</form>
				<!--// e: 개인정보 입력폼 -->
				<!-- //컨텐츠 내용 -->
				<div id="bd01_01"></div>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
