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

				<h2 id="lnbTitle" class="tit_lnb">정기시험</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>원서접수</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/exam">원서접수 안내</a></li>
							<li><a href="<%=request.getContextPath() %>/member/wonseoReq">원서접수 신청</a></li>
							<li><a href="<%=request.getContextPath() %>/wonseoList">원서접수 현황</a></li>
							<li><a href="<%=request.getContextPath() %>/ache">장애유형별 편의제공 안내</a></li>
						</ul></li>
					<li class="low"><a>합격자/답안발표</a>
						<ul style="display: block;">
							<li><a>합격자 발표조회</a></li>
							<li><a>응시서류 불합격자 발표</a></li>
							<li><a>가답안/확정답안</a></li>
							<li><a>가답안 의견제시</a></li>
						</ul></li>
					<li class="low"><a>시험일정</a>
						<ul style="display: block;">
							<li><a>월간 시험일정</a></li>
							<li><a>국가기술자격 시험일정</a></li>
							<li><a>전문자격 시험일정</a></li>
						</ul></li>
					<li class="low"><a>필기시험 안내</a>
						<ul style="display: block;">
							<li><a>필기시험 접수안내</a></li>
							<li><a>필기시험 수수료</a></li>
							<li><a>필기관할구역 안내</a></li>
							<li><a>외국학력서류 제출</a></li>
						</ul></li>
					<li class="low"><a>실기시험 안내</a>
						<ul style="display: block;">
							<li><a>실기시험 면제기간</a></li>
							<li><a>실기시험 접수안내</a></li>
							<li><a>실기시험 선택분야</a></li>
							<li><a>실기시험 수수료</a></li>
							<li><a>실기시험 종목별 시험방법</a></li>
							<li><a>수험자 지참 준비물</a></li>
							<li><a>실기시험 일정 변경기준</a></li>
							<li><a>실기일정 및 타지사 이동사유</a></li>
						</ul></li>
					<li class="low"><a>자격정보</a>
						<ul style="display: block;">
							<li><a>국가자격</a></li>
							<li><a>민간자격</a></li>
							<li><a>외국자격</a></li>
						</ul>
					</li>
					<li class="low"><a>자격검정 통계</a>
						<ul style="display: block;">
							<li><a>총괄 현황</a></li>
							<li><a>종목별 현황</a></li>
							<li><a>국가기술 자격 통계 연보</a></li>
							<li><a>수험자 동향</a></li>
						</ul>
					</li>
					<li><a>고객의 국가자격 대여 근절 캠페인</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>