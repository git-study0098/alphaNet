<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	PagingVO viewData = (PagingVO) request.getAttribute("viewData");
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

  
<script>
	//삭제 함수 
	function go_noticeDetail(noticeCode) {
		var noticeForm = document.noticeDetail;
		noticeForm.action = "/boardUpdateForm?notice_code=" + noticeCode;
		noticeForm.submit();
	}
	//검색함수
	function getNoticeList(){
		var schType = document.getElementById('schType').value;
		var schText = document.getElementById('schText').value;
		var notice_code = document.getElementsByName('notice_code')[0].value;
		location.href="<%=request.getContextPath()%>/admin/notice/search?notice_code="+notice_code+"&schType="+schType+"&schText="+schText;
	}
</script>
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


<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>시험 리스트</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<form>
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="검색하려는 시험명을 입력하시오" name="search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
			<div class="searchType">
				<span> <label for="notiType">검색</label> <select
					name="schType" id="schType" title="검색 구분 선택" class="m0">
						<option value="all" selected="selected">전체</option>
						<option value="exkind">분류</option>
						<option value="exname">시험명</option>
						<option value="exdate">시행일</option>
				</select> <input type="text" name="schText" style="width: 150px" id="schText"
					title="검색어 입력"> <a href="#" class="btn3_icon search"
					onclick="getNoticeList();"><span class="blind">검색</span></a>
				</span>
			</div>
		</form>
		<br>
		<form name="noticeDetail">
			<input type="hidden" name="id" value="id">
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
								<th scope="col">시험명</th>
								<th scope="col">회차</th>
								<th scope="col">시행일</th>
							</tr>
						</thead>
						<!-- 		<table class="table table-hover" -->
						<!-- 			style="text-align: center; marign: 20px;"> -->
						<tbody>
							<c:choose>
								<c:when test="${viewData.notice1CountPerPage > 0 }">
									<c:forEach items="${viewData.notice1List }" var="exam"
										varStatus="number">
										<tr>
											<td>${viewData.firstRow+number.count-1}</td>
											<!-- 글번호 -->
											<td><a
												href="<%=request.getContextPath() %>/admin/boardUpdateForm?notice_code=${exam.exkind_nm }">${exam.exkind_nm}</a></td>
											<td>${exam.exkind_code}</td>
											<td><fmt:formatDate value="${notice.enroll_date}" /></td>
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
				<!-- 내용끝 -->
			</div>
			<!-- /. PAGE INNER  -->