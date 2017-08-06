<%@page import="java.util.Date"%>
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
	.tbl_type1 td {padding:7px 10px 10px; border-bottom:1px solid #e1e1e1; text-align:left !important; font-size:12px; line-height:20px}
</style>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->

			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<div class="location">
				<ul>
					<li>홈</li>
					<li>고객지원</li>
					<li>자료실</li>
					<li><strong>각종서식</strong></li>
				</ul>
			</div>
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">각종서식</h3>

				<!-- 컨텐츠 내용 -->
				<div class="content">
					<div>
						<form name="documentSubmit" id="documentSubmit" style="display: inline" method="post"
							enctype="multipart/form-data" action="documentSubmit" >
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
											<col width="20%">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="5">응시자격 제출 서류</td>
											</tr>
											<tr>
												<th scope="row">담당부서</th>
												<td>관리자</td>
												<th scope="row">등록일</th>
												<td>17/07/21</td>
												<th scope="row">최종수정일</th>
												<td>17/07/24</td>
											</tr>
											<tr>
												<th scope="row">첨부파일</th>
												<td colspan="5">
													<a href="<%=request.getContextPath() %>/file/1?attach_file=응시자격서류심사접수신청서.hwp" class="btn3_icon download" >응시자격서류심사접수신청서.hwp</a>
													<input type="hidden" name="attach_file" value="${vo.attach_file}">
												</td>
											</tr>
											<tr>
												<th>파일 업로드</th>
												<td><input type="file" name="f"/></td>
											</tr>
											<tr>
												<td colspan="6" style="height:100px; font-size:20px; font-weight: bold; ">위에 등록 되어있는 파일 양식을 다운로드 하시어 필요부분을 작성하시고 파일을 다시 올려주시면 검사 후 서류 통과여부를 표시해 드리겠습니다.</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							</div>
							<div>
								<input type="submit" class="btn btncolor1" value="전송" style="color: #ffffff"/> 
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</article>