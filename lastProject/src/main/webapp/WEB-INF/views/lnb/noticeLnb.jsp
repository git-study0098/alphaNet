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
					%>
						<p><span class="fc_b"><%=user.getUsername() %></span>님 반갑습니다.</p>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/logout" class="btn_login3 btncolor1" onclick="logoutForm()"><span>로그아웃</span></a>
						<a href="<%=request.getContextPath()%>/updateMember" class="btn_login3 btncolor2"><span>정보수정</span></a>
					</div>
					<div class="my_list">
						<a href=# class="golink01"><span>나의 접수내역 바로가기</span></a>
					</div>
					</sec:authorize>
					<!-- //로그인 후 -->

						</div>
					</form>
				</div>

				<h2 id="lnbTitle" class="tit_lnb">고객지원</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active"><a>공지사항</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/memberNotice1">공지사항</a></li>
							<li><a href="<%=request.getContextPath() %>/memberNotice2">자격제도</a></li>
							<li><a href="<%=request.getContextPath() %>/memberNotice3">시행</a></li>
							<li><a href="<%=request.getContextPath() %>/memberNotice4">출제</a></li>
							<li><a href="<%=request.getContextPath() %>/memberNotice5">서비스 개선</a></li>
						</ul></li>
					<li class="low"><a>이용안내</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/useInfo">사이트 이용방법</a></li>
							<li><a href="#">자주찾는 질문</a></li>
						</ul></li>
					<li class="low"><a>자료실</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/pdsList">각종서식</a></li>
						</ul></li>
					<li class="low"><a>환불안내</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/change">기술자격 환불안내</a></li>
						</ul></li>
					<li class="low"><a>고객 맞춤정보</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/notice/getJob">취업/훈련/연수</a></li>
							<li><a href="<%=request.getContextPath() %>/notice/college">대학생(중고생)장학금</a></li>
						</ul></li>
					<li><a href="#">고객의 소리</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>