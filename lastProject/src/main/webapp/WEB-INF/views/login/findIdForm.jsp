<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
	*{box-sizing:content-box;}
</style>

<script>

	function goLogin(id){
		location.href='<%=request.getContextPath()%>/loginForm?id='+id;
	}

</script>


<article>
	<div id="container" class="bgNone">

<div id="content" class="main_login" style="margin-left: 100px;"> <!-- w:476 -->
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li><strong>아이디/비밀번호 재발급</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div id="pwfindPop_view" class="popup"></div>
			<form id="find" name="findID">
			<div class="content">
				<h3 class="tit_content">아이디 / 비밀번호 재설정</h3>
				<div class="new_center_area" >
					<div class="tabLayout" id="findTab">
						<ul>
							<li id="findIdOn" class="on"><a href="<%=request.getContextPath()%>/login/findIdForm" id="findId" name="findTab" title="아이디 찾기"><span>아이디 찾기</span></a></li>
							<li id="findPwOn"><a href="<%=request.getContextPath()%>/login/findPwdForm" id="findPw" name="findTab"><span>비밀번호 재설정</span></a></li>
						</ul>
					</div>
					<div class="findTab" style="display: block;">
						<div class="new_find">
							<div class="float_box new_find">
								<div class="right" style="width:725px">
									<h4>등록된 회원정보로 찾기</h4>
									<div class="topArea">
										<p><span class="fc_b2">가입 시 등록한 회원가입정보를 통해 아이디를 찾으시려는 경우</span><br> 아래 내용을 입력 후 아이디를 조회하시기 바랍니다.</p>
									</div>
									
									<jsp:include page="findIdInput.jsp" />
									
								</div>
							</div>
						</div>
						<div id="viewID"></div>
					</div>
					<div class="findTab" style="display:none">
						<div class="new_find" id="findPwView">
							<div class="infoBox">
								<div>
									<p class="list">
										비밀번호를 재설정할 경우 해당 아이디 입력 후 아래 4가지 방법 중 하나를 선택하여 비밀번호를 재설정 하시기 바라며, <br> 아래와 같은 방법으로 비밀번호를 찾을 수 없을 때 공단 지부 / 지사로 방문하셔야 함을 양지하여 주시기 바랍니다.
									</p>
									<p class="mt5 ml10">
										<button type="button" class="btn4" onclick="centerInfo(false);"><span>해당 지부 / 지사 약도 안내</span></button>
									</p>
								</div>
								<span></span>
							</div>
							<div class="topArea">
								<p class="fc_b">아이디 입력 후 아래의 방법중 하나를 선택하여 비밀번호를 재발급 받으시기 바랍니다.</p>
								<p><span class="fc_b2">개인인증을 통해 비밀번호를 찾으시려는 경우 아이디 입력후 </span>인증절차를 선택하여 비밀번호를 재발급 받으시기 바랍니다.</p>
								<div class="form_box">
									<fieldset>
										<p class="first"><label for="userIDpw"><strong class="mr5">아이디</strong>:</label> <input type="text" class="form_text" style="width:184px;ime-mode:inactive;" id="userIDpw" name="userID" value="" maxlength="30"></p>
									</fieldset>
								</div>
							</div>
							<div class="bgArea">
								<div class="full_btn password">
									<button type="button" class="mr" onclick="certifiSubmit('hint_pw')"><span>비밀번호<br>질문으로 찾기</span></button>
									<button type="button" class="mr" onclick="certifiSubmit('ipin_pw')" title="새 창"><span>아이핀(i-PIN)<br>인증으로 찾기</span></button>
									<button type="button" class="mr" onclick="certifiSubmit('mobile_pw')" title="새 창"><span>본인명의 휴대폰<br>인증으로 찾기</span></button>
									<button type="button" onclick="certifiSubmit('public_pw')"><span>공인인증서로 <br>찾기</span></button>
								</div>
							</div>
						</div>
						<div id="viewPswd"></div>
					</div>
					<div class="ipin_find" id="eMailChDiv" style="display:none">
						<p><strong><label for="emailCh">이메일주소</label></strong>
						<input id="emailCh" name="emailCh" type="text" style="width:205px" maxlength="100">
						<button type="button" class="btn btncolor2" id="eMailChBt01" onclick="eMailChSubFn();"><span>변경</span></button>
						<button type="button" class="btn btncolor4" id="eMailChBt02" onclick="eMailChFn('chNo');"><span>취소</span></button>
						<input type="hidden" id="emailChPlag" name="emailChPlag"></p>
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>
</article>
