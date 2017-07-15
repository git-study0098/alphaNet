<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>

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
		
	})
</script>

<div id="lnb">
				<div class="login">
					<!-- 회원 구분 -->
					<div class="login_tab">
					</div>
					<!-- //회원 구분 -->

					<form id="loginForm" method="post">
						<input type="hidden" name="pageId" value="man004_01_10"> 
						<input type="hidden" name="redir" value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y">
						<input type="hidden" name="groupChk" value="N">
						<input type="hidden" name="logoutYn" value="Y">

							<!-- 로그인 전 -->
						<sec:authorize access="!isAuthenticated()">
						<div class="login_area">
							<div>
								<label for="mem_id" class="blind">아이디</label> 
								<input type="text" name="mem_id" id="mem_id" style="ime-mode: disabled;"> 
								<label for="mem_pswd" class="blind">비밀번호</label>
								<input type="password" name="mem_pswd" id="mem_pswd" maxlength="16"> 
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div>
								<ul>
									<li>
										<a href="<%=request.getContextPath()%>/signup" class="golink01"><span>회원가입</span></a>
									</li>
									<li>
										<a href="#"	class="golink01"><span>아이디/비밀번호 찾기</span></a>
									</li>
								</ul>
							</div>
						</div>
						</sec:authorize>
					<!-- //로그인 전 -->

					<!-- 로그인 후 -->
					<sec:authorize access="isAuthenticated()">
					<div class="login_area">
						<div class="welcom">
						<%
							Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
							authentication.getName();
							
							User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
						%>
							<p><span class="fc_b"><%=user.getUsername() %></span>님 반갑습니다.</p>
						</div>
						<div>
							<a href="logout" class="btn_login3 btncolor1" onclick="logoutForm()"><span>로그아웃</span></a>
							<a href="#" class="btn_login3 btncolor2"><span>정보수정</span></a>
						</div>
						<div class="my_list">
							<a href="#" class="golink01"><span>나의 접수내역 바로가기</span></a>
						</div>
					</div>
					</sec:authorize>
					<!-- //로그인 후 -->

					</form>
				</div>

				<h2 id="lnbTitle" class="tit_lnb">마이페이지</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>원서접수관리</a>
						<ul style="display: block;">
							<li class="on"><a href="<%=request.getContextPath() %>/member/wonseoHistory">원서접수내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/myPageWonseoReq">원서접수신청</a></li>
							<li><a href="<%=request.getContextPath() %>/member/resultCheck">시험결과보기</a></li>
							<li><a href="<%=request.getContextPath() %>/member/changeImg">사진변경신청/결과</a></li>
						</ul></li>
					<li class="low"><a>응시자격</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/selfTest">응시자격자가진단</a></li>
							<li><a href="<%=request.getContextPath() %>/member/subCheck">응시가능종목확인</a></li>
							<li><a href="<%=request.getContextPath() %>/member/docCheck">응시자격제출셔류확인</a></li>
							<li><a href="<%=request.getContextPath() %>/member/docSubmit">응시자격서류 온라인 제출</a></li>
						</ul></li>
					<li class="low"><a>발급조회현황</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/confirmHistory">확인서발급내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/jagukHistory">자격증발급내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/jagukList">자격증취득조회</a></li>
						</ul></li>
					<li class="low"><a>면제정보보기</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/testPass">시험면제</a></li>
							<li><a href="<%=request.getContextPath() %>/member/subPass">과목면제</a></li>
						</ul></li>
					<li class="low"><a>개인정보관리</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/myInfo">개인정보수정</a></li>
							<li><a href="<%=request.getContextPath() %>/member/schJobInfo">학력/경력수정</a></li>
							<li><a href="<%=request.getContextPath() %>/member/out">회원탈퇴</a></li>
						</ul></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>