﻿<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.last.common.vo.Notice1VO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="vo" value="${vo}" />


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
			<jsp:include page="../../../lnb/noticeLnb.jsp" />
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
						<form name="boardUpdate" id="boardUpdate" style="display: inline"
							enctype="multipart/form-data" action="detailNotice">
							<input type="hidden" name="notice_code" value="${vo.notice_code}">

							<div id="viewList">
								<div class="tbl_type1">
									<table summary="공지사항 게시글 보기를 물건구분, 물품명, 지사, 등록일자, 시험장 정보제공">
										<colgroup>
											<col width="12%">
											<col width="*">
											<col width="12%">
											<col width="20%">
											<col width="12%">
											<col width="20%">
										</colgroup>
										<!-- 									관리자용  세션아이디로 비교하세요 -->
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="5"><input name="title" type="text"
													value="${vo.title}"
													style="width: 95%; background-color: #ffffff;"></td>
											</tr>
											<tr>
												<th scope="row">담당부서</th>
												<td>${vo.admin_code}</td>
												<th scope="row">등록일</th>
												<td>${vo.regist_date}</td>
												<th scope="row">최종수정일</th>
												<td>${vo.regist_date}</td>
											</tr>
											<tr>
												<th scope="row">첨부파일</th>
												<td colspan="5">
													<a href="file/1?attach_file=${vo.attach_file}" class="btn3_icon download" >${vo.attach_file}</a>
													<input type="hidden" name="attach_file" value="${vo.attach_file}">
												</td>
											</tr>
											<tr>
												<td colspan="15"><textarea name="noticeContent"
                                 id="contents_text" style="width: 100%;resize:none;" rows="25" >${vo.notice_content}</textarea></td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</article>