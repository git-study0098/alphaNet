<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
	String id = user.getUsername();

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
	.noData{
	    padding: 30px 0 !important;
	    font-size: 14px !important;
	    color: #000 !important;
	    font-weight: bold !important;
	    text-align: center !important;
	}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/mypageLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>마이페이지</li>
					<li>원서접수관리</li>
					<li><strong>원서접수내역</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">원서접수내역</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="infoBox">
					<div>
						<ul class="list">
							<li><span class="fc_0">환불기간에 원서접수 취소가 가능하며, 환불기간이 아닌 경우에는 접수하신 내역을 취소하실 수 없습니다.</span></li>
							<li>환불서비스 경우 PC(윈도우 환경) 또는 스마트기기(스마트폰, 테블릿PC)는 모바일 앱 서비스를 사용해 주시기 바랍니다.
							</li>
							<li>국가기술자격 상시시험 12종목 접수내역은 한국기술자격검정원에서 확인 가능합니다. <button type="button" class="btn3_type2" onclick="popup3('http://t.q-net.or.kr')"><span>바로가기</span></button></li>
						</ul>
					</div>
					<span></span>
				</div>

				<!-- TAB -->
				<div class="tabLayout green">
					<ul>
						<li class="on"><a href="#" title="진행중인 접수내역"><span>나의 접수내역</span></a></li>
						<li><a href="#"><span>취소 / 환불내역</span></a></li>
					</ul>
				</div>

				<div class="tbl_normal tbl_member">
					<table summary="진행중인 응시시험 원서 접수 내역 없음">
						<caption>나의 원서 접수내역</caption>
						<colgroup>
							<col width="25%">
							<col width="25%">
							<col width="25%">
							<col width="25%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">시험일</th>
								<th scope="col">시험명</th>
								<th scope="col">종목명</th>
								<th scope="col">수험번호</th>
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${not empty selectStareList }">
							<c:forEach items="${selectStareList}" var="stare">
								<tr>
									<td>${stare.stare_date }</td>
									<td>${stare.em_nm }</td>
									<td>${stare.exkind_nm }</td>
									<td>${stare.stare_code }</td>
								</tr>
								</c:forEach>
								</c:when>
							<c:otherwise>
							<tr>
								<td class="noData">나의 접수 내역이 없습니다.</td>
							</tr>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
	</div>
</article>