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
						<a href="#" class="btn on" id="pMem"><span>일반회원</span></a>
						<!-- // class="on" 으로 탭 선택 표시 -->
					</div>
					<!-- //회원 구분 -->

					<!-- //로그인 전 -->
					<form id="loginForm" method="post">
						<input type="hidden" name="pageId" value="man004_01_10"> <input
							type="hidden" name="redir"
							value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y"> <input
							type="hidden" name="groupChk" value="N"> <input
							type="hidden" name="logoutYn" value="Y">
						<div class="login_area">

							<!-- 로그인 전 -->
							<sec:authorize access="!isAuthenticated()">
							<div class="login_yn">
								<label for="mem_id" class="blind">아이디</label> <input type="text"
									name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> <input
									type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div class="login_yn">
								<ul>
									<li><a
										href="<%=request.getContextPath()%>/signup"
										class="golink01"><span>회원가입</span></a></li>
									<li><a
										href="<%=request.getContextPath()%>/login/findIdForm"
										class="golink01"><span>아이디/비밀번호 찾기</span></a></li>
								</ul>
							</div>
							</sec:authorize>
							<!-- //로그인 전 -->

					<!-- 로그인 후 -->
					<sec:authorize access="isAuthenticated()">
					<div class="welcom">
					<%
						Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
						authentication.getName();
						
						User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
						
						String name = "김진성";
						if(user.getUsername().equals("MEM002")){
							name = "김민선";									
						}else if(user.getUsername().equals("MEM003")){
							name = "황병준";									
						}
					%>
						<p><span class="fc_b"><%=name %></span>님 반갑습니다.</p>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/logout" class="btn_login3 btncolor1" onclick="logoutForm()"><span>로그아웃</span></a>
						<a href="<%=request.getContextPath()%>/member/myInfo" class="btn_login3 btncolor2"><span>정보수정</span></a>
					</div>
					<div class="my_list">
						<a href="<%=request.getContextPath() %>/wonseo_ing" class="golink01"><span>나의 접수내역 바로가기</span></a>
					</div>
					</sec:authorize>
					<!-- //로그인 후 -->

						</div>
					</form>
				</div>

			<h2 id="lnbTitle" class="tit_lnb">자격증</h2>
			<!-- menu리스트 -->
			<ul id="lnbNavi" class="lnb on">
				<li class="low active on"><a>자격증 발급 안내</a>
					<ul style="display: block;">
						<li class="on"><a href="<%=request.getContextPath() %>/infoReq">자격증발급/발급처</a></li>
						<li><a href="<%=request.getContextPath() %>/infoNew">신규/인정/재발급</a></li>
						<li><a href="<%=request.getContextPath() %>/infoFunc">기능사보기능사자격부여</a></li>
					</ul></li>
				<li class="low"><a>자격증 발급</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/request1">자격증발급신청</a></li>
						<li><a href="<%=request.getContextPath() %>/member/jagukRequestSearch">자격증발급신청내역조회</a></li>
					</ul></li>
				<li class="low"><a>자격취득 조회</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/member/jagukGet">자격증취득조회</a></li>
					</ul></li>
				<li class="low"><a>자격증 진위확인</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/jagukTrue">자격증진위확인</a></li>
					</ul></li>
			</ul>
			<!-- menu리스트 끝 -->
		</div>
