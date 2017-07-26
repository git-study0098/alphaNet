<%@page import="com.last.common.vo.MemPagingVO"%>
<%@page import="com.last.common.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	Integer pageNumber = (Integer) request.getAttribute("pageNumber");
	MemPagingVO viewData = (MemPagingVO) request.getAttribute("viewData");
%>
<script>

//검색함수
	function getNoticeList(){
		var schType = document.getElementById('schType').value;
		var schText = document.getElementById('schText').value;
		var id = document.getElementsByName('id')[0].value;
		location.href="<%=request.getContextPath()%>/admin/mem/search?id="+ id + "&schType=" + schType + "&schText=" + schText;
	}
</script>
<!-- /. NAV SIDE  -->
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>휴면 계정 회원 조회</h2>
			</div>
		</div>
		<hr />
		<!-- /. ROW  -->
		<!-- 내용 -->
		<form>
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="검색하려는 회원이름을 입력하시오" name="schText"
					onclick="getNoticeList();">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
		<br>
		<div class="dropdown">
			<button class="dropbtn">회원관리</button>
			<div class="dropdown-content">
				<a href="<%=request.getContextPath()%>/admin/mem">휴먼 계정 회원 조회</a> <a
					href="<%=request.getContextPath()%>/admin/mem2">회원 정보 조회</a> <a
					href="<%=request.getContextPath()%>/admin/mem3">회원 서류 승인</a>
			</div>
		</div>
		<form name="memDetail">
			<input type="hidden" name="id" value="imem0001">
			<table class="table table-hover">

				<tr>
					<td>순서</td>
					<td>회원ID</td>
					<td>회원명</td>
					<td>마지막 로그인날</td>
				</tr>
				<!-- 게시판 테이블 내용 -->
				<c:choose>
					<c:when test="${viewData.notice1CountPerPage > 0 }">
						<c:forEach items="${viewData.notice1List }" var="mem"
							varStatus="number">
							<tr>
								<td>${viewData.firstRow+number.count-1}</td>
								<!-- 글번호 -->
								<td><a
									href="<%=request.getContextPath() %>/admin/memDetail?id=${mem.id}">${mem.id}</a></td>
								<td>${mem.name}</td>
								<td><fmt:formatDate value="${mem.mem_lately_log_date}" /></td>
								<td><input type="hidden" value="${mem.id}"
									name="memId" /></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td style="text-align: center;">내용이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>

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

				<span class="page"> <%
 	for (int i = 1; i < viewData.getPageTotalCount() + 1; i++) {
 		if (pageNumber == i) {
 %> <strong class="on" title="<%=i%>페이지"><%=i%></strong> <%
 	} else {
 %>
					<button type="button" class="btn5"
						onclick="location.href='inmem?page=<%=i%>'" title="<%=i%>페이지">
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
		</form>

	</div>
	<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->
