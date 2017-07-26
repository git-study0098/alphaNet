<%@page import="com.last.common.vo.ClientVO"%>
<%@page import="com.last.common.vo.Paging2VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/client/customer.css" />
	
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/client/base2017.css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/client/style.css"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	Paging2VO viewData = (Paging2VO) request.getAttribute("viewData");	
	String email =(String)session.getAttribute("email");
%>
<style>

	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}


</style>

 <script>
	$(function(){

	 $( "#startDate" ).datepicker({
	        showOn: "both", 
	        buttonImage: "<%=request.getContextPath() %>/resources/client/images/ico_date.gif", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	 
	 
	 $("#endDate").datepicker({
	        showOn: "both", 
	        buttonImage: "<%=request.getContextPath() %>/resources/client/images/ico_date.gif", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	});
 
	function getClientList(){
		var schType = document.getElementById('schType').value;
		var schText = document.getElementById('schText').value;
		var startDate = document.getElementById('startDate').value;
		var endDate = document.getElementById('endDate').value;
		location.href="<%=request.getContextPath()%>/client/notice/search?schType="+schType+"&schText="+schText+"&startDate="+startDate+"&endDate="+endDate;
	}
 </script>


<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img src="<%=request.getContextPath() %>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath() %>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리"
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

	<div class="sectionArea">

		<div id="snb">
			<h2 class="oneline">알려드립니다</h2>
			<ul>
				<li><a href="<%=request.getContextPath() %>/client/notice2">민원처리절차</a></li>
				<li><a href="<%=request.getContextPath() %>/client/notice">공지사항</a></li>
				<li><a href="<%=request.getContextPath() %>/client/notice3">사이트맵</a></li>
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
			<h3 class="nonBg">고객의소리</h3>

			<!-- 키워드 검색 -->
			<div class="contentSearchForm">
		<form name="frm">
				<div style="float: left;">
					<span style="margin-right: 5px;"> <label for="startDate"
						style="float: left; margin-right: 5px; inline-height: 28px;">등록기간</label>
						<input type="text" name="start_Date" id="startDate" date required maxlength="" value="" style="width: 70px;"> 
						</span>
						 ~ 
						 <span style="margin-right: 5px;"> 
						<input type="text" id="endDate" name="end_Date" date required maxlength="" value="" style="width: 70px;"></span> 
					<select name="searchGb2" id="schType" style="margin-left: 20px;">
					
					
						<option value="" title="">선택</option>
						<option value="title" title="제목">제목</option>
						<option value="kind" title="분류명">분류명</option>
						<option value="content" title="내용">내용</option>
						
					</select>
				</div>
				<input type="text" name="searchWord" maxlength="" value="" style="width: 260px; margin-left: 5px;" id="schText"> 
					<a class="searchbtn" href="javascript:getClientList();">검색</a>
			</div>
			<div id="TOT_CNT_DIV"></div>
			<table class="list2">
				<tr>
					<td>
						<div id="LIST_DIV"></div>
					</td>
				</tr>
			</table>
				</form>
			<!-- 페이지 -->
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
								<td scope="col">${fn:substring(name,0,1)}**</td>
								<td scope="col"><fmt:formatDate value="${clientAll.client_enRoll_date}"/></td>
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
		<div class="pagination1 mb20">
				<button type="button" class="btn3_icon3 btn_prev_first"
					title="이전10페이지">
					<span class="blind">이전10페이지</span>
				</button>
				
				<button type="button" class="btn3_icon3 btn_prev_page"
					title="이전 페이지">
					<span class="blind">이전 페이지</span>
				</button>
				
				<span class="page"> 
				
				<%
					for(int i = 1; i<viewData.getPageTotalCount()+1; i++){
						if(pageNumber==i){
				%>	
						<strong class="on" title="<%=i %>페이지"><%=i %></strong>
					<%
						
						}else{
					%>
						<button type="button" class="btn5" onclick="location.href='clientSound?page=<%=i %>'" title="<%=i%>페이지">
							<span><%=i%></span>
						</button> 
						<% }
					}
				%>
					
				</span>
				<button type="button" class="btn3_icon3 btn_next_page"
					onclick="goPage(2);" title="다음 페이지">
					<span class="blind">다음 페이지</span>
				</button>
				<button type="button" class="btn3_icon3 btn_next_end"
					onclick="goPage(11);" title="다음10페이지">
					<span class="blind">다음10페이지</span>
				</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>