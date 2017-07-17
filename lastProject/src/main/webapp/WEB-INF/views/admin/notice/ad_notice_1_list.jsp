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
		<form>
			<span> <label for="notiType">검색</label> <select
				title="검색 카테고리 선택" class="m0">
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
			</select>
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="검색하려는 회원이름을 입력하시오" name="search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</span>
			<!-- 					<div class="input-group"> -->
			<!-- 						<span> <select title="검색 카테고리 선택"> -->
			<!-- 								<option selected="selected">전체</option> -->
			<!-- 								<option>긴급</option> -->
			<!-- 								<option>자격제도</option> -->
			<!-- 								<option>시행</option> -->
			<!-- 								<option>출제</option> -->
			<!-- 								<option>서비스개선</option> -->
			<!-- 						</select> <select title="검색 구분 선택"> -->
			<!-- 								<option selected="selected">전체</option> -->
			<!-- 								<option>글제목</option> -->
			<!-- 								<option>내용</option> -->
			<!-- 								<option>담당부서</option> -->
			<!-- 						</select> <input type="text" name="schText" style="width: 150px" -->
			<!-- 							id="schText" title="검색어 입력"> <input type="text" -->
			<!-- 							class="form-control" placeholder="검색하려는 회원이름을 입력하시오" -->
			<!-- 							name="search"> -->
			<!-- 							<span class="col-md-5"> -->
			<!-- 								<button class="btn btn-default" type="submit"> -->
			<!-- 									<i class="glyphicon glyphicon-search"></i> -->
			<!-- 								</button> -->
			<!-- 							</span> -->
			<!-- 						</span> -->
			<!-- 					</div> -->
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
