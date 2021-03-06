<%@page import="java.util.List"%>
<%@page import="com.last.common.vo.Notice1VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%
	String email = (String) session.getAttribute("email");
	List<Notice1VO> five =(List<Notice1VO>)request.getAttribute("five");
%>



<script>

	function autoCheck(){

		<%
		if(email ==null||email.equals("")){
		%>
			alert("해당페이지를 이용하시려면 본인인증이 필요합니다.");
			location.href="<%=request.getContextPath()%>/client/auto";
			<%
		}else{
			%>
			location.href="<%=request.getContextPath()%>/client/client";
		<%
		}
		%>
	}
		
		
	

</script>






<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="<%=request.getContextPath()%>/client/main" class="hrd">
				<img
				src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px">
			</a> <a href="<%=request.getContextPath()%>/client/main" class="voc">
				<img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png"
				alt="고객의 소리" style="margin-left: 80px;">
			</a>
		</h1>

	</div>
	<div class="sectionArea">
		<div class="section01">
			<h2>편리한 서비스</h2>
			<div class="CallService">
				<h3>전화ㆍ문자상담</h3>
				<p class="Number">1644-8000</p>
				<ul>
					<li>09:00 ~ 18:00</li>
					<li>토요일, 일요일, 공휴일 제외</li>
					<li class="colorR">※ 문자상담은 40자 이내</li>
				</ul>
			</div>
			<div class="notice_box">
				<h3>공지사항</h3>
				<ul class="newsList">
					<% if(five.size() >0){
							for(int i=0; i<five.size();i++){	
					%>
						<li><a href="<%=request.getContextPath() %>/client/adNoticeDetail?notice_code=<%=five.get(i).getNotice_code()%>"><%=five.get(i).getTitle()%></a><span class="date"><fmt:formatDate value="<%=five.get(i).getEnroll_date() %>" pattern="yyyy-MM-dd"/></span></li>
					<%
							}
					}
 					%>

				</ul>
				<a href="<%=request.getContextPath()%>/client/notice" id="more"
					class="more">공지사항 더보기</a>
			</div>
		</div>
		<div class="section02">
			<h2>투명한 서비스</h2>
			<ul class="transparent_S">

				<li class="icon01"><a class="auto"
					href="javascript:autoCheck()">일반문의</a></li>
				<li class="icon02"><a class="auto"
					href="javascript:autoCheck()">불편불만</a></li>
				<li class="icon03"><a class="auto"
					href="javascript:autoCheck()">고객칭찬</a></li>
				<li class="icon04"><a class="auto"
					href="javascript:autoCheck()">고객제안</a></li>


			</ul>
		</div>
		<div class="section03">
			<h2>안전한 서비스</h2>
			<ul class="safe_S">

				<li class="icon01"><a class="auto"
					href="javascript:autoCheck()">나의 민원<span class="fontS1">(My
							Page)</span></a></li>
				<li class="icon02"><a class="auto"
					href="javascript:autoCheck()">부조리신고<span>(부정비리,자격시험 부정행위
							등)</span></a></li>

			</ul>
			<div class="slogan">
				<p class="slogan_Txt">
					<img
						src="<%=request.getContextPath()%>/resources/client/images/HRD_slogan.png"
						alt="고객 &quot;매우만족&quot; 한국산업인력공단 사람과 일터의 가치를 높여주는 인적자원 개발·평가·활용 지원 중심기관이 되겠습니다.">
				</p>
			</div>
		</div>
	</div>
</div>