<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script>
	$(document).ready(function(){
		$('.btn_login').click(function(){
			if($('#mem_id').val() == ""){
				alert("로그인할 아이디를 입력하세요.");
				$('#mem_id').focus();
			}else if($('#mem_pswd').val() == ""){
				alert("로그인할 비밀번호를 입력하세요.");
				$('#mem_pswd').focus();
			}else{
				$('#loginForm').attr("action", "<c:url value='/login'/>");
				$('#loginForm').submit();
			}
		})
		finId = '<c:out value="${findId}"/>';		
		if(finId!=null && finId!=""){
			$('#mem_id').val(finId);
		}
	})
</script>

<article>
	<div id="container">

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
	<div id="content" class="main_login" style="width:980px"> <!-- w:476 -->
			<!-- location -->
			<div class="location" style="float:right">
				<ul>
					<li>홈</li>
					<li><strong>로그인</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
			<form name="loginForm" id="loginForm" method="post" action="<c:url value='/login'/>">
				<h3 class="tit_content">로그-<strong>인</strong><span>사이트를 이용하기 위해서는 로그인이 필요합니다.</span></h3>
				<div class="center_area">
					<!-- 개인/단체 -->

					<div class="tabLayout type02" id="subTab">
						<ul>
							<li id="perOn" class="on"><a href="#" id="per" name="loginTab" title="개인 로그인"><span>개인 로그인</span></a></li>
							<li id="grpOn"><a href="#" id="grp" name="loginTab"><span>단체 로그인</span></a></li>
						</ul>
					</div>

					<div class="pubcont login">
						<div class="enter">
							<div class="left">
								<p><span><label for="mem_id">아이디</label></span><input type="text" id="mem_id" name="mem_id" style="width:203px" value=""></p>
								<p><span><label for="mem_pswd">비밀번호</label></span><input type="password" id="mem_pswd" name="mem_pswd" style="width:203px" maxlength="16"></p>
							</div>
							<div class="right">
								<button class="btn_login"><span>로그인</span></button>
							</div>
							<p><a href="<%=request.getContextPath()%>/login/findIdForm" class="golink01"><span style="font-size:13px">아이디 찾기/비밀번호 재설정</span></a></p>
						</div>
						<div class="info">
							<p>공인인증서로 로그인을 하시려면 회원가입 후 로그인하여<br>공인인증서를 등록하셔야 합니다.</p>
							<p><a href="javascript:loginData();" class="btn btncolor1"><span>공인인증서 로그인</span></a> <button type="button" class="btn btncolor2" onclick="goJoin()"><span style="width:80px">회원가입하기</span></button></p>
						</div>
						<span class="img"></span>
					</div>
					<div class="steup_exe mt10">
						

 						<a href="/ktnet/download/nxtspkisetup.exe" class="setup_app">공인인증모듈 수동설치 <strong>(수동설치 후 새로고침해 주십시오.)</strong></a>
					</div>
				</div>
				<input type="hidden" name="groupChk" value="N">
				<input type="hidden" name="pageId" value="man001_03">
				<input type="hidden" name="redir" value="http://www.q-net.or.kr/myp002.do?id=myp00201&amp;gSite=Q&amp;gId=">
			</form>
			<form name="setAuthCert" method="post" action="man001.do?id=man00106&amp;gSite=Q&amp;gId=">
				<input type="hidden" name="redir" value="http://www.q-net.or.kr/myp002.do?id=myp00201&amp;gSite=Q&amp;gId=">
				<input type="hidden" name="logindata">
				<input type="hidden" name="certifrom" value="certify">
				<input type="hidden" name="clientIp" value="www.q-net.or.kr">
				<input type="hidden" name="attes" value="Y">
				<input type="hidden" name="cSSN" value="0">
				<input type="hidden" name="cUserInfo" value="0">
				<input type="hidden" name="cSessionID" value="0">
					
			</form>
			</div>
		</div>		
	</div>
</article>