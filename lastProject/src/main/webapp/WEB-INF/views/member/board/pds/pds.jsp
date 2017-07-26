<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 자료실 -->

<%
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");
	PagingVO viewData =
	(PagingVO)request.getAttribute("viewData");
%>

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
		<div>
			<jsp:include page="../../../lnb/noticeLnb.jsp"/>
			<div id="lnb2"></div>
		</div>
		
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>고객지원</li>
					<li>자료실</li>
					<li><strong>각종서식</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">각종서식</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div>
					<div id="viewList">
						<div class="tbl_type1">
							<table summary="번호, 제목, 작성자, 날짜 정보 제공"
								style="table-layout: fixed">
								<caption>각종서식 목록</caption>
								<colgroup>
									<col width="7%">
									<col width="*">
									<col width="16%">
									<col width="16%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
<!-- 여기에 c:choose문 같은 반복문 써서 표시하면 될듯 합니다 . -->
									<c:choose>

										<c:when test="${viewData.notice1CountPerPage > 0 }">
											<c:forEach items="${viewData.notice1List }" var="notice"
												varStatus="number">
												<tr>
													<td>${number.count}</td>
													<td><a
														href="<%=request.getContextPath() %>/detailPds?notice_code=${notice.notice_code }">${notice.title}</a></td>
													<td>${notice.admin_code}</td>
													<td>${notice.regist_date}</td>
												</tr>
												<input type="hidden" value="${notice.notice_code}"
													name="noticeCode" />
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
									for(int i = 1; i<viewData.getPageTotalCount()+1; i++){
										if(pageNumber==i){
								%>	
										<strong class="on" title="<%=i %>페이지"><%=i %></strong>
									<%
										
										}else{
									%>
										<button type="button" class="btn5" onclick="location.href='pdsList?page=<%=i %>'" title="<%=i%>페이지">
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
								title="다음10페이지">
								<span class="blind">다음10페이지</span>
							</button>
						</div>
					</div>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
	</div>
</article>