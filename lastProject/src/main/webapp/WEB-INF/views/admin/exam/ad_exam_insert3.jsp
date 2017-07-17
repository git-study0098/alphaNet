<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>시험 등록</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div class="container" style="text: center;">
			<a href="<%=request.getContextPath() %>/admin/examin1">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">시험정보입력</button>
			</a> <a href="<%=request.getContextPath() %>/admin/examin2">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">필기과목입력</button>
			</a> <a href="<%=request.getContextPath() %>/admin/examin3">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">실기과목입력</button>
			</a>

			<form class="form-horizontal">
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
				<div class="form-group">
					<label class="col-md-2 control-label">과목명1</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시험명을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">과목명2</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시험명을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">과목명3</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시험명을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">과목명4</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시험명을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">과목명5</label>
					<div class="col-md-3">
						<input class="form-control" type="text" placeholder="시험명을 입력하세요">
					</div>
				</div>


			</form>

		</div>
		<!-- 내용끝 -->
	</div>
	<!-- /. PAGE INNER  -->
</div>