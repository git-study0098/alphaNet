<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/base2017.css" />


<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	PagingVO viewData = (PagingVO) request.getAttribute("viewData");
	PagingVO viewData2 = (PagingVO)request.getAttribute("viewData2");
	Integer count = (Integer)request.getAttribute("count");

	String email =(String)session.getAttribute("email");
%>



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
 
	function getadNoticeList(){
		var schType = document.getElementById('schType').value;
		var schText = document.getElementById('schText').value;
		var startDate = document.getElementById('startDate').value;
		var endDate = document.getElementById('endDate').value;
		location.href="<%=request.getContextPath()%>/client/adnotice/search?schType="+schType+"&schText="+schText+"&startDate="+startDate+"&endDate="+endDate;
	}
 </script>



<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img
				src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png"
				alt="알파넷 고객의 소리" style="margin-left: 80px;" />
			</a>
		</h1>
		<div class="Quick_M">
			<ul class="Quick_Menu">
				<li class="icon02"><a
					href="<%=request.getContextPath()%>/client/clientSound">고객의소리</a></li>
				<%if(email ==null||email.equals("")){
					%>
				<li class="icon04"><a href="<%=request.getContextPath() %>/client/auto">마이페이지</a></li>
			<%
				}else{
					%>
				<li class="icon04"><a href="<%=request.getContextPath()%>/client/myPage?email=<%=email %>">마이페이지</a></li>					
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
				<li><a href="<%=request.getContextPath()%>/client/notice2">민원처리절차</a>
				</li>
				<li><a href="<%=request.getContextPath()%>/client/notice">공지사항</a>
				</li>
				<li><a href="<%=request.getContextPath()%>/client/notice3">사이트맵</a>
				</li>
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
			<h3 class="nonBg">공지사항</h3>

			<!-- 키워드 검색 -->
			<div class="contentSearchForm">
				<div style="float: left;">
					<span style="margin-right: 5px;"> <label for="startDate"
						style="float: left; margin-right: 5px; inline-height: 28px;">등록기간</label>
						<input type="text" name="startDate" id="startDate" date required
						maxlength="" value="" style="width: 70px;"> 
					</span> ~ <span style="margin-right: 5px;"> <input type="text"
						name="endDate" date required maxlength="" value=""
						style="width: 70px;" id="endDate"> 
					</span> <select name="schType" class="w100" id="schType">
						<option value="all" selected="selected">전체</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
				</div>
				<input type="text" name="schText" maxlength="" value=""
					style="width: 260px; margin-left: 5px;" id="schText">
				<button
					style="text-align: center; background-color: #ffffff; color: black; height: 26px; width: 40px; margin-right: 10px;" onclick="getadNoticeList()">검색</button>
			</div>
			<form name="noticeDetail">
				<input type="hidden" name="notice_code" value="notice01">
				<div id="viewList">
					<div class="tbl_type1">
						<table summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
							style="table-layout: fixed">
							<colgroup>
								<col width="7%">
								<col width="*">
								<col width="16%">
								<col width="11%">
								<col width="1%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">담당부서</th>
									<th scope="col">등록일</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>

								<!-- 게시판 테이블 내용 -->
								<c:choose>

									<c:when test="${viewData2.notice1CountPerPage > 0 }">
										<c:forEach items="${viewData2.notice1List }" var="notice"
											varStatus="number">
											<tr>
												<td>${viewData2.firstRow+number.count-1}</td>
												<!-- 글번호 -->
												<td><a
													href="<%=request.getContextPath() %>/admin/boardUpdateForm?notice_code=${notice.notice_code }">${notice.title}</a></td>
												<c:if test="${notice.admin_code eq 'ADM001'}">
													<td>정보화지원국사업1팀</td>
												</c:if>
												<c:if test="${notice.admin_code eq 'ADM002'}">
													<td>정보화지원국사업2팀</td>
												</c:if>
												<c:if test="${notice.admin_code eq 'ADM003'}">
													<td>정보화지원국사업3팀</td>
												</c:if>
												<c:if test="${notice.admin_code eq 'ADM004'}">
													<td>정보화지원국사업4팀</td>
												</c:if>
												<c:if test="${notice.admin_code eq 'ADM005'}">
													<td>정보화지원국사업5팀</td>
												</c:if>
								
												<td>${notice.enroll_date}</td>
												<td><input type="hidden" value="${notice.notice_code}"
													name="noticeCode" /></td>
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
					<div class="pagination1 mb20">
						<button type="button" class="btn3_icon3 btn_prev_first"
							title="이전10페이지">
							<span class="blind">이전10페이지</span>
						</button>

						<button type="button" class="btn3_icon3 btn_prev_page"
							title="이전 페이지">
							<span class="blind">이전 페이지</span>
						</button>

						<span class="page"> <%
 	for (int i = 1; i < viewData2.getPageTotalCount() + 1; i++) {
 		if (pageNumber == i) {
 %> <strong class="on" title="<%=i%>페이지"><%=i%></strong> <%
 	} else {
 %>
							<button type="button" class="btn5"
								onclick="location.href='notice?page=<%=i%>'" title="<%=i%>페이지">
								<span><%=i%></span>
							</button> <%
 	}
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
			</form>
		</div>
	</div>
	</div>
	</body>
	</html>