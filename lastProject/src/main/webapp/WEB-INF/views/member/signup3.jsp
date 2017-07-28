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
	function go_mail() {
		var url  ="<%=request.getContextPath()%>/mail";
		var pop = window.open(url, "pop2", "width=490px ,height=600px");
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
						<li><img src="resources/images/인증(후).gif" alt=""><span>본인인증</span></li>
						<li><img src="resources/images/신청서작성(전).gif" alt=""><span>신청서작성</span></li>
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>가입완료</span></li>
					
					</ul>
				</div>
			<!-- 컨텐프 -->
			
			<form name="realName" id="realName"  style="margin-left: 100px;">
					<div class="tabLayout type02" id="tab">
						<ul>
							<li class="on"><a href="#" title="휴대폰 인증"><span>메일인증</span></a></li>
						</ul>
					</div>

					<!-- 본인인증방식 선택 -->
					<div class="join_cte" style="">
						<div class="wrap_box" style="background-color: #ecf6fc;height: 200px">
							<p class="txt_btn_box certiTab" style="">
								<img src="<%=request.getContextPath() %>/resources/images/인증.png" width="500px" height="60px" style="margin-left: 20px;margin-top: 60px;"/>
								<button class="btn btncolor2" type="button" onclick="go_mail()" title="새 창" style="margin-top: 60px;margin-left: 20px; height:50px"><span>메일인증</span></button>
							</p>
						</div>
				
					</div>

					</form>
			
			
			
			
			
			
			</div>
		</div>
</article>
