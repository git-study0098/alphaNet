<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>시험 상세보기</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div class="container" style="text: center;">
			<a href="admin/exam/ad_exam_detail1.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">시험정보조회</button>
			</a> <a href="admin/exam/ad_exam_detail2.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">필기과목조회</button>
			</a> <a href="admin/exam/ad_exam_detail3.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">실기과목조회</button>
			</a>

			<form class="form-horizontal">
				<div class="form-inline" style="width: 100%;">
					<div class="form-group" style="width: 50%;">
						<label class="col-md-2 control-label">시험분류</label>
						<div class="col-md-3">
							<input class="form-control" type="text">
						</div>
					</div>
					<div class="form-group" style="width: 50%;">
						<label class="col-md-2 control-label">직업분류</label>
						<div class="col-md-3">
							<input class="form-control" type="text">
						</div>
					</div>
				</div>
				<!-- 											<form class="form-inline"> -->
				<div class="row">
					<div class="form-group">
						<label class="col-md-2 control-label"> 시험명</label>
						<div class="col-md-3">
							<input class="form-control" type="text" placeholder="시험명을 입력하세요">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">시험 영문명</label>
						<div class="col-md-3">
							<input class="form-control" type="text"
								placeholder="시험 영문명을 입력하세요">
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group">
						<label class="col-md-2 control-label">관련부처</label>
						<div class="col-md-3">
							<input class="form-control" type="text" placeholder="관련부처를 입력하세요">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">시행기관</label>
						<div class="col-md-3">
							<input class="form-control" type="text" placeholder="시행기관을 입력하세요">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">시험수수료</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시행기관을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">실시기관명</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시행기관을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">실시기관 홈페이지</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시행기관을 입력하세요">
					</div>
				</div>

				<br>
			</form>

			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-2 control-label">취득방법</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">개요</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">변천과정</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">수행직무</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-2 control-label">진로 및 전망</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">진로 및 전망</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>

			</form>
			<button type="button" class="btn btn-primary"
				style="width: 100px; margin: 20px;">수정하기</button>
		</div>
		<!-- 내용끝 -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
