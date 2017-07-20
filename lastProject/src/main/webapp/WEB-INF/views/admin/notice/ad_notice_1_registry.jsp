<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>공지사항</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<div class="content">
				<h3 class="tit_content">공지사항</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 컨텐츠 내용 -->
				<form style="display: inline" method="post" action="boardInsert"
					enctype="multipart/form-data">
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

								<tbody>
									<tr>
										<th scope="row">제목</th>
										<td colspan="5"><input name="title" type="text"
											placeholder="제목을 입력해주세요."
											style="width: 95%; background-color: #ffffff;"></td>
									</tr>
									<tr>
										<th scope="row">담당부서</th>
										<td><input name="adminCode" type="text"
											placeholder="담당부서를 입력해주세요."
											style="width: 95%; background-color: #ffffff;"></td>
										<th scope="row">등록일</th>
										<td><c:set var="now" value="<%=new java.util.Date()%>" />
											<input name="registDate"
											value="<fmt:formatDate value="${now}" pattern="yy/MM/dd" />"
											readonly="readonly" /></td>
										<th scope="row">최종수정일</th>
										<td><c:set var="now" value="<%=new java.util.Date()%>" />
											<input name="enrollDate"
											value="<fmt:formatDate value="${now}" pattern="yy/MM/dd" />"
											readonly="readonly" /></td>
									</tr>

									<tr>
										<th scope="row">첨부파일</th>
										<td colspan="5"><a href="#" class="btn3_icon download">
												<input type="file" name="f"
												onchange="javascript:file_change(this.value);">
										</a> <input type="text" name="attach_file" readonly></td>
									</tr>

									<tr>
										<td colspan="6"><textarea name="noticeContent"
												id="contents_text" style="width: 100%;" rows="10"></textarea>
										</td>
									</tr>
								</tbody>
							</table>

						</div>
						<p class="txt_right">
							<input type="submit" class="btn btn-info" value="등록"
								style="color: #ffffff" /> <input type="button"
								class="btn btn-info" value="수정" style="color: #ffffff" /> <input
								type="button" class="btn btn-danger" value="삭제"
								style="color: #ffffff" /> <a class="btn btn-warning" href="#"
								onclick="history.go(-1)" style="color: #ffffff">돌아가기</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->
