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
				<div class="form-inline" style="width: 100%;">
					<div class="form-group" style="width: 50%;">
						<label class="col-md-2 control-label">시험분류</label> <span
							style="padding: 5px; margin: 5px;"> <select
							style="width: 150px;">
								<option value="기사">기사</option>
								<option value="산업기사">산업기사</option>
								<option value="기술사">기술사</option>
								<option value="전문자격시험">전문자격시험</option>
						</select>
						</span>
					</div>
					<div class="form-group" style="width: 50%;">
						<label class="col-md-2 control-label">직업분류</label> <span
							style="padding: 5px; margin: 5px;"> <select
							style="width: 150px;">
								<option value="경비.청소">경비.청소</option>
								<option value="경영">경영</option>
								<option value="금속.재료">금속.재료</option>
								<option value="금형.공작기계">금형.공작기계</option>
								<option value="기계장비설비.설치">기계장비설비.설치</option>
								<option value="기계제작">기계제작</option>
								<option value="방송">방송</option>
								<option value="방송.무선">방송.무선</option>
								<option value="보건.의료">보건.의료</option>
								<option value="전기">전기</option>
								<option value="전자">전자</option>
								<option value="정보기술">정보기술</option>
								<option value="토목">토목</option>
								<option value="통신">통신</option>
						</select>
						</span>
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
				style="width: 100px; margin: 20px;">등록하기</button>
		</div>
		<!-- 내용끝 -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->

