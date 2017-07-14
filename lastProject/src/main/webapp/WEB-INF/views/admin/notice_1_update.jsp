<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.last.common.vo.Notice1VO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="vo" value="${vo}"/>

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
			<div id="lnb">
				<div class="login">
					<!-- 회원 구분 -->
					<div class="login_tab">
						<a href="#" class="btn on" id="pMem"><span>일반회원</span></a>
						<!-- // class="on" 으로 탭 선택 표시 -->
					</div>
					<!-- //회원 구분 -->

					<!-- //로그인 전 -->
					<form id="loginForm" method="post">
						<input type="hidden" name="pageId" value="man004_01_10"> 
						<input type="hidden" name="redir" value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y"> 
						<input type="hidden" name="groupChk" value="N"> 
						<input type="hidden" name="logoutYn" value="Y">
						<div class="login_area">
							<!-- 로그인 전 -->
							<div class="login_yn">
								<label for="mem_id" class="blind">아이디</label> 
								<input type="text" name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> 
								<input type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div class="login_yn">
								<ul>
									<li>
										<a href="#" class="golink01"><span>회원가입</span></a>
									</li>
									<li>
										<a href="#" class="golink01"><span>아이디/비밀번호 찾기</span></a>
									</li>
								</ul>
							</div>
							<!-- //로그인 전 -->
						</div>
					</form>
				</div>

				<h2 id="lnbTitle" class="tit_lnb">자격증/확인서</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>공지사항</a>
						<ul style="display: block;">
							<li><a>공지사항</a></li>
							<li><a>자격제도</a></li>
							<li><a>시행</a></li>
							<li><a>출제</a></li>
							<li><a>서비스 개선</a></li>
						</ul></li>
					<li class="low"><a>이용안내</a>
						<ul style="display: block;">
							<li><a>사이트 이용방법</a></li>
							<li><a>자주찾는 질문</a></li>
						</ul></li>
					<li class="low"><a>자료실</a>
						<ul style="display: block;">
							<li><a>각종서식</a></li>
							<li><a>출제기준</a></li>
							<li><a>기출문제(기술사)</a></li>
							<li><a>공개문제</a></li>
							<li><a>관련법령</a></li>
						</ul></li>
					<li class="low"><a>환불안내</a>
						<ul style="display: block;">
							<li><a>기술자격 환불안내</a></li>
							<li><a>전문자격 환불안내</a></li>
						</ul></li>
					<li class="low"><a>고객 맞춤정보</a>
						<ul style="display: block;">
							<li><a>취업/훈련/연수</a></li>
							<li><a>대학생(중고생)장학금</a></li>
							<li><a>창업지원/교육서비스</a></li>
							<li><a>자금운용/보증지원</a></li>
						</ul></li>
					<li class="low"><a>관련학과 지정신청</a></li>
					<li><a>고객의 소리</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>
			<!-- 좌측 메뉴바 끝-->

			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
				<!-- 컨텐츠 타이틀 -->
				<div class="location">
					<ul>
						<li>홈</li>
						<li>게시판</li>
						<li>관리자</li>
						<li><strong>글 등록/수정/삭제</strong></li>
					</ul>
				</div>
				
			<div class="content">
				<h3 class="tit_content">공지사항</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 컨텐츠 내용 -->
			<form style="display: inline" action="boardUpdate" enctype="multipart/form-data">
			<input type="hidden" name="noticeCode" value="${vo.notice_code}">
				<div>
					<div class="tbl_type2 leftPd">
						<table summary="공지사항 게시글 보기를 물건구분, 물품명, 지사, 등록일자, 시험장 정보제공">
							<caption>공지사항 게시글 보기</caption>
							<colgroup>
								<col width="12%">
								<col width="*">
								<col width="12%">
								<col width="20%">
								<col width="12%">
								<col width="20%">
							</colgroup>
								<c:choose>
									<c:when test=""><!-- 관리자용  세션아이디로 비교하세요-->
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="5"><input name="title" type="text"
													value="${vo.title}"
													style="width: 95%; background-color: #ffffff;"></td>
											</tr>
											<tr>
												<th scope="row">담당부서</th>
												<td><input name="adminCode" type="text"
													value="${vo.admin_code}"
													style="width: 95%; background-color: #ffffff;"></td>
												<th scope="row">등록일</th>
												<td><c:set var="now" value="<%=new java.util.Date()%>" />
													<input name="registDate" value="${vo.regist_date}"
													readonly="readonly" /></td>
												<th scope="row">최종수정일</th>
												<td><c:set var="now" value="<%=new java.util.Date()%>" />
													<input name="enrollDate"
													value="<fmt:formatDate value="${now}" pattern="yy/MM/dd" />"
													readonly="readonly" /></td>
											</tr>
											<tr>
												<th scope="row">첨부파일</th>
												<td colspan="5"><a href="#" class="btn3_icon download"><input
														type="file"></a></td>
											</tr>
											<tr>
												<td colspan="6">
													<textarea name="noticeContent" id="contents_text" style="width: 100%;" rows="10">
																	${vo.notice_content}
													</textarea>
												</td>
											</tr>
										</tbody>
									</c:when>
									<c:otherwise>
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="5">
													<input name="title" value="${vo.title}" style="width: 95%; border:0px solid #ffffff; background-color: #ffffff;" readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<th scope="row">담당부서</th>
												<td><input name="adminCode" type="text"
													value="${vo.admin_code}"
													style="width: 95%; border:0px solid #ffffff; background-color: #ffffff;" readonly="readonly"></td>
												<th scope="row">등록일</th>
												<td><c:set var="now" value="<%=new java.util.Date()%>" />
													<input name="registDate" value="${vo.regist_date}" style="width: 95%; border:0px solid #ffffff; background-color: #ffffff;"
													readonly="readonly" /></td>
												<th scope="row">최종수정일</th>
												<td><c:set var="now" value="<%=new java.util.Date()%>" />
													<input name="enrollDate" style="width: 95%; border:0px solid #ffffff; background-color: #ffffff;"
													value="<fmt:formatDate value="${now}" pattern="yy/MM/dd" />"
													readonly="readonly" /></td>
											</tr>
											<tr>
												<th scope="row">첨부파일</th>
												<td colspan="5">
													<a href="file/1?attach_file=${vo.attach_file}" class="btn3_icon download">${vo.attach_file}</a>
												</td>
											</tr>
											<tr>
												<td colspan="6">
												<p style="min-height: 400px;">${vo.notice_content}</p>
										</td>
											</tr>
										</tbody>
									</c:otherwise>
								</c:choose>
							</table>
					</div>
					<p class="txt_right">
						<input type="submit" class="btn btncolor2" value="등록" style="color:#ffffff"/>
						<a class="btn btncolor2" href="#" onclick="history.go(-1)" style="color:#ffffff">돌아가기</a>
					</p>
				</div>
				</form>
				</div>
			</div>
	</div>
</article>