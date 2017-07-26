<%@page import="com.last.common.vo.CalendarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- /. NAV SIDE  -->
<style>
.dropbtn {
	background-color: #337197;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #337197;
}
</style>
<% CalendarVO cvo = (CalendarVO)request.getAttribute("vo");
	String[] a = cvo.getEm_nm().split(" ");
%>
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>시험 상세보기</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div class="container" style="text: center;">
			<form class="form-horizontal" action="updateSch">
			<input type="hidden" name="numg_code" value="${numg_code}">
				<div class="form-inline"
					style="width: 100%; padding: 0px; margin: 0px;">
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">회차</label> <select
							style="width: 150px;" name="numg_num">
							<option value="1">1회차</option>
							<option value="2">2회차</option>
							<option value="3">3회차</option>
						</select>
					</div>
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">분류</label> <select
							style="width: 150px;">
							<option value="기사">기사</option>
							<option value="산업기사">산업기사</option>
							<option value="기술사">기술사</option>
							<option value="전문자격시험">전문자격시험</option>
						</select>
					</div>
				</div>
				<div class="form-group"
					style="width: 50%; padding: 0px; margin: 0px;">
					<label class="col-md-3 control-label">필기/실기</label> <select
						style="width: 150px;" name="em_wr_pr_di">
						<option value="W">필기시험</option>
						<option value="P">실기시험</option>
					</select>
				</div>
		<c:set value="${vo}" var="vo"/>
				<div class="form-group">
					<label class="col-md-2 control-label"> 시험명</label>
					<div class="col-md-5">
						<input class="form-control" type="text"
							placeholder="ex)2017년 정보처리기사1차필기시험" name="em_nm" value="${vo.em_nm}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">시험 종목명</label>
					<div class="col-md-5">
						<input class="form-control" type="text" placeholder="ex)정보처리기사" name="exkind_nm" value="<%=a[1]%>">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="col-md-2 control-label">응시일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요" name="numg_stare_date" value="${vo.numg_stare_date}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">합격자 발표일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요" name="numg_pass_p_anno_date" value="${vo.numg_pass_p_anno_date}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">원서접수 시작일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요" name="numg_app_receipt_begin" value="${vo.numg_app_receipt_begin}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">원서접수 종료일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요" name="numg_app_receipt_end" value="${vo.numg_app_receipt_end}">
					</div>
				</div>
				<input type="submit" class="btn btn-primary"
					style="width: 100px; margin: 20px;" value="등록">
			</form>
		</div>
		<!-- 내용끝 -->
	</div>
</div>
<!-- /. PAGE INNER  -->
