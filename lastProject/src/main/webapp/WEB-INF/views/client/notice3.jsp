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
					href="<%=request.getContextPath()%>/client/myPage?email=<%=email %>">마이페이지</a></li>
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
			<a href="notice2">민원처리절차</a>
		</li>
		<li>
			<a href="notice">공지사항</a>
		</li>
		<li>
			<a href="notice3">사이트맵</a>
		</li>
	</ul>
	<div class="subtelBox">
		<p class="tel"><span>전화</span><strong>1644 - 8000</strong></p>
		<p class="tel_txt">09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외</p>
		<p class="tel_txt">문자상담은 40자 이내</p>
	</div>
</div>

<div class="content">
					<h3 class="nonBg">사이트맵</h3>
					<div class="sitemap">
						<span>무엇이 궁금하십니까?</span>
						<!-- <img src="/images/sub/sitemap_1.gif" alt="고객의 소리">-->
						<ul>							
							<li>
								<a href="/CST/FAQ/FAQ0101.jsp">자주하는 질문</a>
							</li>
							<li>
								<a href="/CST/ASK/ASK0102.jsp">고객의 소리</a>
							</li>
							<li>
								<a href="/CST/IPM/IPM0101.jsp">개선사항</a>
							</li>			
						</ul>
					</div>
	
					<div class="sitemap">
						<span>부조리 신고</span>
						<!-- <img src="/images/sub/sitemap_2.gif" alt="부조리 신고"> -->
						<ul>
							<li>
								<a href="/CST/REG/REG0101.jsp">자격증불법대여접수센터</a>
							</li>
							<li>
								<a href="/CST/REG/REG0201.jsp">부정비리신고(부정행위스토퍼)</a>
							</li>
							<li>
								<a href="/CST/REG/REG0301.jsp">예산낭비신고</a>
							</li>
							<li>
								<a href="/CST/REG/REG0401.jsp">자격시험 부정행위신고</a>
							</li>
							<li>
								<a href="/CST/REG/REG0501.jsp">경영공시개선센터</a>
							</li>
							<li>
								<a href="/CST/REG/REG0701.jsp">직업훈련부정신고</a>
							</li>
						</ul>
					</div>
					
					<div class="sitemap">
						<span>알려드립니다</span>						
						<ul>
							<li>
								<a href="/CST/NTI/NTI0101.jsp">민원처리절차</a>
							</li>
							<li>
								<a href="/CST/NTI/NTI0201.jsp">공지사항</a>
							</li>
							<li>
								<a href="/CST/NTI/NTI0301.jsp">사이트맵</a>
							</li>
						</ul>
					</div>

					<div class="sitemap">
						<span>마이페이지</span>
						<!-- <img src="/images/sub/sitemap_3.gif" alt="마이페이지"> -->
						<ul>							
							<li>
								<a href="/CST/MYP/MYP0101.jsp">마이페이지</a>
							</li>
						</ul>
					</div>
	
					<div class="sitemap">
						<span>본인확인</span>
						<ul>							
							<li>
								<a href="/CST/LGN/LGN0101.jsp?lgnFlag=NP">본인인증</a>
							</li>
							<li>
								<a href="/CST/LGN/LGN0102.jsp">14세미만 본인인증</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

