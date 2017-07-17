<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="../../lnb/mypageLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>마이페이지</li>
					<li>개인정보관리</li>
					<li><strong>회원탈퇴</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<h3 class="tit_content">회원탈퇴</h3>
				<div class="center_area2">
					<div class="box_notice">
						<div class="logo"><img src="<%=request.getContextPath()%>/resources/images/common/logo.gif" alt="자격의 모든것 Q-net"></div>
						<p>

							<span class="txt_blue">탈퇴</span> 버튼을 누르시면 <span class="txt_blue">회원정보가 삭제</span>됩니다.


						</p>

					</div>

					<div class="btn_center">

						<button type="button" class="btn2 btncolor1" onclick="goNext('01')"><span>탈퇴</span></button>
						<button type="button" class="btn2 btncolor4" onclick="goNext('02')"><span>취소</span></button>

					</div>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
		
	</div>
</article>