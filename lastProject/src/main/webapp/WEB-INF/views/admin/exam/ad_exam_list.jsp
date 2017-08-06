<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>자격종목 리스트</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<br>
		<table class="table table-hover"
			style="text-align: center; marign: 20px;">
			<tbody>
				<tr style="">
					<td>글번호</td>
					<td>분류</td>
					<td>시험명</td>
					<td>등록일</td>
				</tr>
				<c:forEach items="${exkindList}" var="ex" varStatus="number">
				<tr>
					<td>${number.count}</td>
					<c:if test="${ex.exkind_nm eq '정보처리기사'}"><td>기사</td></c:if>
					<c:if test="${ex.exkind_nm eq '정보처리산업기사'}"><td>산업기사</td></c:if>
					<c:if test="${ex.exkind_nm eq '정보처리기능사'}"><td>기능사</td></c:if>
					<td>${ex.exkind_nm}</td>
					<td>${ex.regular_em_enroll_date}</td>
				</tr>
				</c:forEach>
			</tbody>

		</table>


	</div>
	<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->

