<%@page import="com.last.common.vo.CbtVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!-- /. NAV SIDE  -->
<%
	CbtVo vo = (CbtVo)request.getAttribute("vo");
%>
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>BLANK PAGE</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div>
			<form action="<%=request.getContextPath()%>/excel/upload">

				<div class="text-center" style="margin: 5px;">
					<div class="center-block"
						style="width: 600px; padding: 5px; margin: 5px; float: left;">
						<strong class="col-md-4">첨부파일</strong> <input type="file" name="f">

					</div>
					<div style="float: right; margin: 5%;">
						<input type="submit" class="btn btn-primary" value="등록하기" />
					</div>
				</div>
			</form>
			<!-- 				<div style="text-align: center; marign: 20px;"> -->
			<table class="table table-hover"
				style="text-align: center; marign: 20px;">
				<tbody>
					<tr style="">
						<td>글번호</td>
						<td>분류</td>
						<td>시험명</td>
						<td>삭제버튼</td>
					</tr>
					<c:forEach items="${list}" var="list" varStatus="number">
						<tr>
							<td>${number.count}</td>
							<td>${fn:substring(list.cbt_name,4,7)}</td>
							<td>${list.cbt_name }</td>
							<td><a href="<%=request.getContextPath() %>/admin/cbtDelete?id=${list.cbt_name}"><input type="button" value="삭제하기"></a></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>

		</div>
		<!-- 내용끝 -->
		<!-- /. ROW  -->
	</div>
	<!-- /. PAGE INNER  -->
</div>

