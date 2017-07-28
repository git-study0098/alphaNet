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
	function goNext() {
		if(!$('input:radio[name=joinType]').is(':checked')){
			alert("회원가입 유형을 선택해주세요");
		}else{
			location.href="signup2";
		}
	}

</script>


<article>
		<div class="container content " style="width: 980px;">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="tit_content">회원가입</h3>
			<div class="center_area2">
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step">
					<ul class="list03">
						<li><img src="resources/images/회원선택(후).gif" alt=""><span>회원선택</span></li>
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>약관동의</span></li>
						<li><img src="resources/images/본인인증(전).gif" alt=""><span>본인인증</span></li>
						<li><img src="resources/images/신청서작성(전).gif" alt=""><span>신청서작성</span></li>
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>가입완료</span></li>
					
					</ul>
				</div>
				
				<div class="join_cte mb20" style="padding-left: 100px">
						<div class="wrap_box">		
							<div class="radio_box wide_type">
								<p class="tit tleft">회원가입 : <span>해당하는 사항을 선택해주세요.</span> (만 14세 미만 기준 : 2003년 07월 28일 이후 출생자)</p>
								<div class="group_form1">
									<span>
										<label>만14세 이상</label>
										<input type="radio" id="instay_01" name="joinType" value="normal" title="일반 선택" style="margin-bottom: 10px;">
									</span>
									<span>
										<label for="instay_02">만14세 미만</label>
										<input type="radio" id="instay_02" name="joinType" value="child" title="만14세미만 선택" style="margin-bottom: 10px;">
									</span>
								</div>

							</div>
						</div>
						<ul>
					<li>개인정보보호법 제 22조 5항에 의해 <strong>만 14세 미만 어린이/학생은 법정대리인의 동의</strong>가 필요합니다.</li>
						</ul>
						<div class="btn_center">
						<button type="button" class="btn2 btncolor1" onclick="goNext()"><span>선택 완료</span></button>
					</div>
					</div>
					
				
			</div>
		</div>
</article>
