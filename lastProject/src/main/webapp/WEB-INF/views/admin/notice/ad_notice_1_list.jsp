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
		<hr />
		<!-- /. ROW  -->
		<!-- 내용 -->
		<div class="content">
			<div>
				<div class="searchType">
					<span class="group-btn"> <label for="notiType">검색</label> <select
						name="notiType" id="notiType" title="검색 카테고리 선택" class="m0">
							<option value="10" selected="selected">전체</option>
							<option value="00">긴급</option>
							<option value="20">자격제도</option>
							<option value="30">시행</option>
							<option value="40">출제</option>
							<option value="50">서비스개선</option>
					</select> <select name="schType" id="schType" title="검색 구분 선택" class="m0">
							<option value="A" selected="selected">전체</option>
							<option value="T">글제목</option>
							<option value="C">내용</option>
							<option value="D">담당부서</option>
					</select> <span class="input-group" style="width: 400px;"> <input
							type="text" class="form-control" placeholder="검색하려는 회원이름을 입력하시오"
							name="search">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
					</span> <!-- 						<input type="text" name="schText" style="width: 150px" -->
						<!-- 						id="schText" title="검색어 입력"> <a href="#" --> <!-- 						class="btn3_icon search" onclick="getNoticeList(1)"><span -->
						<!-- 							class="blind">검색</span></a> -->
					</span>
				</div>
			</div>
			<form>
				<input type="hidden" name="notice_code" value="notice01">
				<table class="table table-hover" summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
					style="table-layout: fixed">
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>담당부서</td>
							<td>최종수정일자</td>
							<td>최종수정일자</td>
						</tr>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>담당부서</td>
							<td>최종수정일자</td>
							<td>최종수정일자</td>
						</tr>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>담당부서</td>
							<td>최종수정일자</td>
							<td>최종수정일자</td>
						</tr>
					<tbody>

						<!-- 게시판 테이블 내용 -->
						<c:choose>

							<c:when test="${viewData.notice1CountPerPage > 0 }">
								<c:forEach items="${viewData.notice1List }" var="notice"
									varStatus="number">
									<tr>
										<td>${number.count}</td>
										<!-- 글번호 -->
										<td><a
											href="<%=request.getContextPath() %>/boardUpdateForm?notice_code=${notice.notice_code }">${notice.title}</a></td>
										<td>${notice.admin_code}</td>
										<td><fmt:formatDate value="${notice.enroll_date}" /></td>
										<td><input type="hidden" value="${notice.notice_code}"
											name="noticeCode" /></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td style="text-align: center;">내용이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>

					</tbody>
				</table>
		</div>
		<div class="pagination1 mb20">
			<button type="button" class="btn3_icon3 btn_prev_first"
				title="이전10페이지">
				<span class="blind">이전10페이지</span>
			</button>

			<button type="button" class="btn3_icon3 btn_prev_page" title="이전 페이지">
				<span class="blind">이전 페이지</span>
			</button>

			<span class="page"> </span>
			<button type="button" class="btn3_icon3 btn_next_page"
				onclick="goPage(2);" title="다음 페이지">
				<span class="blind">다음 페이지</span>
			</button>
			<button type="button" class="btn3_icon3 btn_next_end"
				onclick="goPage(11);" title="다음10페이지">
				<span class="blind">다음10페이지</span>
			</button>
		</div>
	</div>
	</form>
</div>
<!-- //컨텐츠 내용 -->
</div>
<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->