<%@page import="com.last.common.vo.DocuPagingVO"%>
<%@page import="com.last.common.vo.MemPagingVO"%>
<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartRequest"%>

<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	DocuPagingVO viewData = (DocuPagingVO) request.getAttribute("viewData");
%>

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

  


<style>
	* {	box-sizing: content-box;}
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>

<style>
.dropbtn {background-color: #337197;color: white;padding: 16px;font-size: 16px;border: none;cursor: pointer;}
.dropdown {position: relative;display: inline-block;}
.dropdown-content {display: none;position: absolute;background-color: #f9f9f9;min-width: 160px;box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);z-index: 1;}
.dropdown-content a {color: black; padding: 12px 16px;text-decoration: none;display: block;}
.dropdown-content a:hover {background-color: #f1f1f1}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn { background-color: #337197;}
</style>
<article>
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="col-lg-12">
				<h2>서류</h2>
			</div>
			<hr />
			<div class="dropdown">
				<button class="dropbtn">회원 관리</button>
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/admin/inmem">휴먼 계정 회원 조회</a> <a
					href="<%=request.getContextPath()%>/admin/allmem">회원 정보 조회</a> <a
					href="<%=request.getContextPath()%>/admin/docu">서류 관리</a>
				</div>
			</div>
			<div style="height:40px;"></div>
			<div class="content">
				<div>
					<form name="noticeDetail">
						<input type="hidden" name="sub_code" value="sub_code">
						<div id="viewList">
							<div class="tbl_type1">
								<table summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
									style="table-layout: fixed">
									<colgroup>
										<col width="7%">
										<col width="*">
										<col width="16%">
										<col width="12%">
										<col width="12%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">서류명</th>
											<th scope="col">회원ID</th>
											<th scope="col">회원명</th>
											<th scope="col">승인여부</th>
										</tr>
									</thead>
									<tbody>
										<!-- 게시판 테이블 내용 -->
										<c:choose>
											<c:when test="${viewData.docuCountPerPage > 0 }">
												<c:forEach items="${viewData.docuList }" var="doc"
													varStatus="number">
													<tr>
														<td>${viewData.firstRow+number.count-1}</td>
														<!-- 글번호 -->
														<td><a href="<%=request.getContextPath() %>/admin/docDetail?id=${doc.sub_code}" >${doc.docu_nm}</a></td>
														<td>${doc.mem_code}</td>
														<td>${doc.mem_nm}</td>
														<td><input type="hidden"
															value="${doc.approve_at}" name="approve_at" />${doc.approve_at}</td>
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
									 	for (int i = 1; i < viewData.getPageTotalCount() + 1; i++) {
									 		if (pageNumber == i) {
									 %> <strong class="on" title="<%=i%>페이지"><%=i%></strong> <%
									 	} else {
									 %>
									<button type="button" class="btn5"
										onclick="location.href='docu?page=<%=i%>'" title="<%=i%>페이지">
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
				<!-- //컨텐츠 내용 -->
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
