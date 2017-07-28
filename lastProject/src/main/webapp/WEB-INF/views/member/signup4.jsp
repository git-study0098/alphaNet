<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script type="text/javascript" src="resources/js/member.js"></script>
<style>
   * {   box-sizing: content-box;}
   
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

<script>
	function goMain() {
		location.href="<%=request.getContextPath()%>/main"
	}

</script>




<article>
		<div class="container content " style="width: 980px;margin-bottom: 200px">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="tit_content">회원가입</h3>
			<div class="center_area2">
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step">
					<ul class="list03" style="margin-left: 100px;">
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>약관동의</span></li>
						<li><img src="resources/images/본인인증(전).gif" alt=""><span>본인인증</span></li>
						<li><img src="resources/images/신청서작성(전).gif" alt=""><span>신청서작성</span></li>
						<li><img src="resources/images/가입완료(후).gif" alt=""><span>가입완료</span></li>
					
					</ul>
				</div>
			<!-- 컨텐프 -->
			
			<div class="box_notice pb0">
						<div class="logo"><img src="<%=request.getContextPath() %>/resources/images/alpha_logo.png" alt="자격의 모든것 alpha-net" width="150" height="100"></div>
						<p>회원 가입이 정상적으로 이루어 졌습니다.
						<br>늘 수험자 여러분 곁을 지키는 큐넷이 되겠습니다.
						</p>
						<div class="infoBox">
							<div>
								<p class="list">원서접수, 자격증발급, 확인서신청 등 관련서비스 이용을 목적으로 가입하는 회원은 추후 실명인증을 실시하오니 유의하시기 바라며, <br>
								   공단은 개인정보보호법, 국가기술자격법, 자격기본법 등 관련법령에 의거 주민등록번호 취급이 허용됨을 알려드립니다.</p>
							</div>
							<span></span>
						</div>
					</div>
					<div class="btn_center">
						<button type="button" class="btn2 btncolor1" id="btnMain" onclick="goMain()"><span>메인</span></button>
					</div>
					
	
			</div>
		</div>
</article>
