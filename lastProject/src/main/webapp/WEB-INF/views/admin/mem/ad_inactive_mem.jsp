<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>휴면 계정 회원 조회</h2>
					</div>
				</div>
				<hr />
				<!-- /. ROW  -->
				<!-- 내용 -->
				<form>
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="검색하려는 회원이름을 입력하시오" name="search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<br>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
						회원관리 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="dropdown-header">회원 정보</li>
						<li><a href="ad_inactive_menu.jsp">휴먼 계정 회원 조회</a></li>
						<li><a href="ad_mem_list.jsp">회원 정보 조회</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">회원 서류</li>
						<li><a href="ad_stare_mem.jsp">회원 서류 승인</a></li>
					</ul>
				</div>
				<table class="table table-hover">
					<tr>
						<td>순서</td>
						<td>회원ID</td>
						<td>회원명</td>
						<td>마지막 로그인날</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원ID</td>
						<td>회원명</td>
						<td>마지막 로그인날</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원ID</td>
						<td>회원명</td>
						<td>마지막 로그인날</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원ID</td>
						<td>회원명</td>
						<td>마지막 로그인날</td>
					</tr>
					<tr>
						<td>순서</td>
						<td>회원ID</td>
						<td>회원명</td>
						<td>마지막 로그인날</td>
					</tr>
				</table>

			</div>
			<!-- 내용끝 -->
		</div>
		<!-- /. PAGE INNER  -->
