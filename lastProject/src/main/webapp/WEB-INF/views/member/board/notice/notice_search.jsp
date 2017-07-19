<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
   Integer pageNumber = (Integer)request.getAttribute("pageNumber");
   PagingVO viewData =  (PagingVO)request.getAttribute("viewData");
   PagingVO viewData2 = (PagingVO)request.getAttribute("viewData2");
   Integer count = (Integer)request.getAttribute("count");
%>


<script>
	function getNoticeList(){
		var schType = document.getElementById('schType').value;
		var schText = document.getElementById('schText').value;
		var notice_code = document.getElementsByName('notice_code')[0].value;
		location.href="<%=request.getContextPath()%>/memberNotice2?notice_code="+notice_code+"&schType="+schType+"&schText="+schText;
	}

	function go_noticeDetail(noticeCode){
		var noticeForm = document.noticeDetail;
		noticeForm.action = "/boardUpdateForm?notice_code="+noticeCode;
		noticeForm.submit();
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
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../../lnb/noticeLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->

			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<div class="location">
				<ul>
					<li>홈</li>
					<li>고객지원</li>
					<li>공지사항</li>
					<li><strong>공지사항</strong></li>
				</ul>
			</div>
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">공지사항</h3>

				<!-- 컨텐츠 내용 -->
				<div class="content">
					<div>
						<form name="noticeDetail">
						<input type="hidden" name="notice_code" value="notice01">
						<div class="searchType">
							<span> <label for="notiType">검색</label>
							<select name="schType" id="schType" title="검색 구분 선택" class="m0">
									<option value="all" selected="selected">전체</option>
									<option value="title">글제목</option>
									<option value="content">내용</option>
									<option value="adm">담당부서</option>
							</select> <input type="text" name="schText" style="width: 150px"
								id="schText" title="검색어 입력"> <a href="#"
								class="btn3_icon search" onclick="getNoticeList();"><span
									class="blind">검색</span></a>
							</span>
						</div>
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
											<th scope="col">최종수정일자</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
									
									<!-- 게시판 테이블 내용 -->
										<c:choose>

										<c:when test="${viewData2.notice1CountPerPage > 0 }">
										<c:forEach items="${viewData2.notice1List }" var="notice" varStatus="number">
										<tr>
											<td>${number.count}</td> <!-- 글번호 -->
											<td><a href="<%=request.getContextPath() %>/boardUpdateForm?notice_code=${notice.notice_code }" >${notice.title}</a></td>
											<td>${notice.admin_code}</td>
											<td><fmt:formatDate value="${notice.enroll_date}"/></td>
											<td><input type="hidden" value="${notice.notice_code}" name="noticeCode"/></td>
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
								
								<span class="page"> 
								<%	
									if(count/10 < 1){
										count=1;
									}else if(count%10==0){
										count /=10;
									}else{
										count = count/10 +1;
									}
									for(int i = 1; i<count+1; i++){
										if(pageNumber==i){
								%>		
										<strong class="on" title="<%=i %>페이지"><%=i %></strong>
									<%
										
										}else{
									%>
										<button type="button" class="btn5" onclick="location.href='memberNotice2?page=<%=i %>'" title="<%=i%>페이지">
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
						</form>
					</div>
					<!-- //컨텐츠 내용 -->
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>
