<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<c:set var="vo" value="${vo}" />

<script type="text/javascript">
	function file_change(file) {
		var str = file.lastIndexOf("\\") + 1; //파일 마지막 "\" 루트의 길이 이후부터 글자를 잘라 파일명만 가져온다.
		file = file.substring(str, file.length);
		document.getElementsByName('attach_file')[0].value = file;
	}
</script>

<article>
	<div id="page-wrapper">
		<div id="page-inner">
			<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
			<div class="row">
				<div class="col-md-12">
					<h2>서류 승인</h2>
				</div>
			</div>
			<hr />
			<form name="docUpdate" id="docUpdate" style="display: inline" method="post"
				enctype="multipart/form-data" action="docUpdate">
<%-- 				?id="${vo.sub_code}&approve> --%>
				<input type="hidden" name="sub_code" value="${vo.sub_code}">
				<div>
					<div class="tbl_type2 leftPd">
						<table>
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
									<th scope="row">서류명</th>
									<td colspan="5"><input name="title" type="text"
										value="${vo.docu_nm}"
										style="width: 95%; background-color: #ffffff;"></td>
								</tr>
								<tr>
									<th scope="row">담당부서</th>
									<td><input name="adminCode" type="text"
										value="${admin}" readonly="readonly"
										style="width: 95%; background-color: #ffffff;"></td>
									<th scope="row">회원명</th>
									<td><c:set var="now" value="${vo.mem_nm}" />
										<input name="registDate" value="${vo.mem_nm}" readonly="readonly"/></td>
									<th scope="row">승인날</th>
									<td><c:set var="now" value="<%=new java.util.Date()%>" />
										<input name="enrollDate"
										value="<fmt:formatDate value="${now}" pattern="yy/MM/dd" />" readonly="readonly" /></td>
									
								</tr>
								<tr>
									<th scope="row">승인여부</th>
									<td><c:set var="now" value="${vo.approve_at}" />
										<input name="approve_at" value="${vo.approve_at}" readonly="readonly"/></td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td colspan="5"><a href="#" class="btn3_icon download">
											<input type="file" name="f" value="vo.attach_file"
											onchange="javascript:file_change(this.value);">
									</a> <input type="text" name="attach_file" readonly></td>
								</tr>
							</tbody>

						</table>
					</div>
					<p class="txt_right">
							<input type="submit" class="btn btncolor2" value="승인"
							 style="color: #ffffff" />
							<input type="submit" class="btn btncolor2" value="승인취소"
							 style="color: #ffffff" />
					</p>
				</div>
			</form>
		</div>
	</div>
</article>