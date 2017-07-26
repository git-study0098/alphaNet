<%@page import="com.last.common.vo.Paging2VO"%>
<%@page import="com.last.common.vo.ClientVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/base2017.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/client/style.css"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script> 

<%

	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	Paging2VO viewData = (Paging2VO) request.getAttribute("viewData");	
	String email = (String) session.getAttribute("email");
%>


<script>

	function search() {
		document.frm.action ="searchSound";
		document.frm.submit();
	}
	
	
	
 </script>




<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리"
				style="margin-left: 80px;" />
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

	<div class="sectionArea" style="height: 1080px;">

		<div id="snb">
			<h2>
				무엇이<br>궁금하십니까?
			</h2>
			<ul>
				<li><a href="">마이페이지</a></li>
			</ul>

			<div class="subtelBox">
				<p class="tel">
					<span>전화</span><strong>1644 - 8000</strong>
				</p>
				<p class="tel_txt">
					09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외
				</p>
				<p class="tel_txt">문자상담은 40자 이내</p>
			</div>
		</div>
<div class="content">
					<h3 class="nonBg">마이페이지</h3>	
					<div class="mypage_box">			
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_01.gif" alt="대기" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="WAIT_DIV"><a href="javascript:search('W')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_01.gif" alt="대기" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_01.gif" alt="대기" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_02.gif" alt="분배" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="DIS_DIV"><a href="javascript:search('D')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_02.gif" alt="분배" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_02.gif" alt="분배" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_03.gif" alt="접수확인" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="ACP_DIV"><a href="javascript:search('A')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_03.gif" alt="접수확인" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_03.gif" alt="접수확인" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_04.gif" alt="처리완료" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="EXC_DIV"><a href="javascript:search('E')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_04.gif" alt="처리완료" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_04.gif" alt="처리완료" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>		
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_05.gif" alt="만족도평가완료" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="SATI_DIV"><a href="javascript:search('S')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_05.gif" alt="만족도평가완료" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_05.gif" alt="만족도평가완료" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
					</div>
					
					<table style="width: 100%;border: 1px solid green;">
			<colgroup>
				<col width="7%">
				<col width="15%">
				<col width="*">
				<col width="15%">
				<col width="15%">
				<col width="10%">
			</colgroup>
			
				<thead>
					<tr>
						<td>번호</td>
						<td>분류</td>
						<td>제목</td>
						<td>고객명</td>
						<td>등록일</td>
						<td>처리상태</td>
					</tr>
				</thead>
				<tbody>

				<c:choose>
					<c:when test="${viewData.clientCountPerPage > 0 }">
						<c:forEach items="${viewData.clientList }" var="clientAll"
							varStatus="number">
							<tr style="height:30px;">
								<!-- 글번호 -->
								<td scope="col">${number.count}</td>
								
								<c:if test="${clientAll.client_consulting_kind eq '1'}">
								<td>평생능력개발</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '2'}">
								<td>자격시험</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '3'}">
								<td>직업능력표준</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '4'}">
								<td>외국인고용지원</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '5'}">
								<td>해외취업지원</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '6'}">
								<td>국제교류협력</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '7'}">
								<td>숙련기술장려</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '8'}">
								<td>기능경기</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '9'}">
								<td>경영지원</td>
								</c:if>
								<c:if test="${clientAll.client_consulting_kind eq '10'}">
								<td>기타(일반)</td>
								</c:if>							
								<c:if test="${clientAll.client_consulting_kind eq '11'}">
								<td>기타</td>
								</c:if>
								<td scope="col"><a href="<%=request.getContextPath() %>/client/clientDetail?client_code=${clientAll.client_code }" >${clientAll.client_title}</a></td>
								<c:set var="name" value="${clientAll.client_nm}"></c:set>
								<td scope="col">${name}</td>
								<td scope="col"><fmt:formatDate value="${clientAll.client_enRoll_date}" pattern="yyyy-MM-dd"/></td>
								<c:if test="${clientAll.reply_state eq 'Y'}">
								<td scope="col">접수완료</td>
								</c:if>		
								<c:if test="${clientAll.reply_state eq 'N'}">
								<td scope="col">처리중</td>
								</c:if>		
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td style="text-align: center;">내용이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
				</div>
	</div>
</div>