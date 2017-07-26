<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/client/base2017.css" />

<%
String email =(String)session.getAttribute("email");
%>
<div id="container">
			<div class="Top">
				<h1 class="logo">
					<a href="main" class="hrd">
						<img src="<%=request.getContextPath() %>/resources/client/images/logo.jpg" alt="알파넷" width="130px" height="100px"/>
					</a>
					<a href="main" class="voc">
						<img src="<%=request.getContextPath() %>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리" style="margin-left: 80px;" />
					</a>
				</h1>
				<div class="Quick_M">
					<ul class="Quick_Menu" style="margin-left: 250px">

				<li class="icon02"><a
					href="<%=request.getContextPath()%>/client/clientSound">고객의소리</a></li>
				<%
					if (email == null || email.equals("")) {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/auto">마이페이지</a></li>
				<%
					} else {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/myPage">마이페이지</a></li>
				<%
					}
				%>
			</ul>
				</div>
			</div>
			
			<div class="sectionArea">

<div id="snb">
	<h2 class="oneline">알려드립니다</h2>	
	<ul>
		<li>
			<a href="<%=request.getContextPath() %>/client/notice2">민원처리절차</a>
		</li>
		<li>
			<a href="<%=request.getContextPath() %>/client/notice">공지사항</a>
		</li>
		<li>
			<a href="<%=request.getContextPath() %>/client/notice3">사이트맵</a>
		</li>
	</ul>
	<div class="subtelBox">
		<p class="tel"><span>전화</span><strong>1644 - 8000</strong></p>
		<p class="tel_txt">09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외</p>
		<p class="tel_txt">문자상담은 40자 이내</p>
	</div>
</div>
	
	<div class="content">
					<h3 class="nonBg">민원처리절차</h3>
					<div class="">
						<p>
							<img src="<%=request.getContextPath() %>/resources/client/images/HRD_img01.gif" alt="" width="100%" height="400px">
						</p>
					</div>
				</div>
</div>
</div>