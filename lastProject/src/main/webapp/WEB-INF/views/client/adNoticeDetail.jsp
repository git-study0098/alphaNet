<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/base2017.css" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<c:set var="vo" value="${vo}" />
<%
	String email = (String) session.getAttribute("email");
%>

<script>
alert(vo);
function goList(){
	location.href="<%=request.getContextPath()%>/client/notice"
}
</script>

<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img
				src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png"
				alt="알파넷 고객의 소리" style="margin-left: 80px;" />
			</a>
		</h1>
		<div class="Quick_M">
			<ul class="Quick_Menu" style="margin-left: 250px">

				<li class="icon02"><a
					href="<%=request.getContextPath()%>/client/clientSound">고객의소리</a></li>
				<%
					if (email == null || email.equals("")) {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/auto">마이페이지</a></li>
				<%
					} else {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/myPage">마이페이지</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>

	<div class="sectionArea" style="height: 1080px;">

		<div id="snb">
			<h2>
				무엇이<br>궁금하십니까?
			</h2>
			<ul>
				<li><a href="question">자주하는 질문</a>
					<ul class="depth3MenuList" id="treeDiv" style="display: none;"></ul>
				</li>
				<li><a href="clientSound">고객의 소리</a></li>
				<li><a href="question2">개선사항</a></li>
			</ul>

			<div class="subtelBox">
				<p class="tel">
					<span>전화</span><strong>1644 - 8000</strong>
				</p>
				<p class="tel_txt">
					09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외
				</p>
				<p class="tel_txt">문자상담은 40자 이내</p>
			</div>
		</div>


		<div class="content">
			<div class="title voice">
				<h3>고객의 소리</h3>
				<p>
					고객의 작은 소리도 크게 듣겠습니다.<br>비공개 신청 민원은 마이페이지에서 확인가능합니다.
				</p>
			</div>
			<table class="table02"  style="padding-top : 70px;">
				<tbody>
					<tr style="margin-bottom: 10px;">
						<th scope="row">제목</th>
						<td colspan="5"><input name="title" type="text"
							value="${vo.title}"
							style="width: 95%; background-color: #ffffff;margin-right: 50px;margin-bottom: 10px;" readonly="readonly"></td>
					</tr>
					<tr style="padding-bottom: 10px;">
						<th scope="row">등록자</th>
						<td><input name="client_nm" type="text"
							value="${vo.admin_code}" readonly="readonly"
							style="width: 95%; background-color: #ffffff;"></td>
						<th scope="row">등록일</th>
						<td> <input
							name="registDate" value="<fmt:formatDate value="${vo.enroll_date}"  pattern="yy/MM/dd"/>" readonly="readonly"/></td>
						<th scope="row">최종수정일</th>
						<td><c:set var="now" value="<%=new java.util.Date()%>" /> <input
							name="enrollDate"
							value="<fmt:formatDate value="${now}"  pattern="yy/MM/dd" />" /></td>
					</tr>
					<tr>
						<th scope="row">기존 첨부파일</th>
						<td colspan="5"><a href="#"><input name="title" type="text"
							value="${vo.attach_file}"
							style="width: 95%; background-color: #ffffff;margin-right: 50px;margin-bottom: 10px; margin-top: 10px;"></td>
					</tr>
					<tr>
						<td colspan="6"><textarea name="noticeContent" id="contents_text" style="width: 100%;" rows="10">${vo.notice_content}
						</textarea></td>
					</tr>
				</tbody>
			</table>
		<div class="btn_area">
			<a href="javascript:goList();"> <img
				src="<%=request.getContextPath()%>/resources/client/images/btn_cancel2.gif"
				alt="취소">
			</a>
		</div>
		</div>


	</div>


</div>
