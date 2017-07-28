<%@page import="com.last.common.vo.NumgPagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- /. NAV SIDE  -->
<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	NumgPagingVO viewData = (NumgPagingVO) request.getAttribute("viewData");
%>
<style>
   .pagination1{text-align:center;}
   .pagination1 .page {margin:0 15px}
   .pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<link
   href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico"
   rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/left_menu.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/content.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/header_footer.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/mobile.css">
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>시험일정 리스트</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<br>
		<button type="button" class="btn" >
			<a href="<%=request.getContextPath()%>admin/examsch">전체일정</a>
		</button>
		<button type="button" class="btn" >
			<a href="<%=request.getContextPath()%>admin/schedule">일정등록</a>
		</button>
		<table class="table table-hover"
			style="text-align: center; marign: 20px;">
			<tbody>
				<tr style="">
					<td>글번호</td>
					<td>시험명</td>
					<td>원서접수시작기간</td>
					<td>원서접수종료기간</td>
				</tr>
				<c:choose>
					<c:when test="${viewData.numgCountPerPage > 0 }">
						<c:forEach items="${viewData.numgList }" var="numg"
							varStatus="number">
							<tr>
								<td>${viewData.firstRow+number.count-1}</td>
								<!-- 글번호 -->
								<td><a href="<%=request.getContextPath() %>/admin/updateSchForm?numg_code=${numg.numg_code }">${numg.em_nm}</a></td>
								<td>${numg.numg_app_receipt_begin}</td>
								<td>${numg.numg_app_receipt_end}</td>
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
										<button type="button" class="btn5" onclick="" title="<%=i%>페이지">
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
	<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->

