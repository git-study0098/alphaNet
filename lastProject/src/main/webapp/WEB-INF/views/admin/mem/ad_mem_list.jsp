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
	
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>회원리스트</h2>
					</div>
				</div>
				<hr />
				<!-- /. ROW  -->
				<!-- 내용 -->
				<form>
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="검색하려는 회원이름을 입력하시오" name="search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<br>
				<table class="table table-hover">
					<tr>
						<td>순서</td>
						<td>회원코드</td>
						<td>회원명</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원코드</td>
						<td>회원명</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원코드</td>
						<td>회원명</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원코드</td>
						<td>회원명</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원코드</td>
						<td>회원명</td>
					</tr>
				</table>

			</div>
			<!-- 내용끝 -->
		</div>
		<!-- /. PAGE INNER  -->
