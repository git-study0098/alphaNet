<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- /. NAV SIDE  -->
<script>
	
</script>
<style>
.left {
	float: left;
}
</style>
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>시험 등록</h2>
			</div>
		</div>
		<hr />
		<!-- 내용 -->
		<div class="content" style="text-align: center">
	
			<div style="text-align:center; margin:0 auto;">
				<button type="button" class="btn btn-primary" style="width: 300px; margin: 20px;">시험정보입력</button>
			</div>

			<form class="form-horizontal" style="" action="insertExam">

				<div>
					<div class="container" >
						<div style="width:32%; float:left;">
							<label style="width=157.16px;">시험분류</label>
							<span
								style="padding: 5px; margin: 5px;"> <select
								style="width: 150px;" name="comp">
									<option value="1">기능사</option>
									<option value="2">산업기사</option>
									<option value="3">기사</option>
									<option value="4">기술사</option>
									<option value="전문자격시험">전문자격시험</option>
							</select>
							</span>
						</div>
						<div style="width: 32%; float:left;">
							<label  style="width=157.16px;">직업분류</label> 
							<span
								style="padding: 5px; margin: 5px;"> <select
								style="width: 150px;" name="comp1">
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
									<option value="comp">정보기술</option>
									<option value="토목">토목</option>
									<option value="통신">통신</option>
							</select>
							</span>
						</div>
					</div>
					<!-- 											<form class="form-inline"> -->
					<div class="content">
						<div class="form-group" style="text-align: center; margin-top:20px;">
								<label class="col-md-2 control-label"> 시험명</label>
								<div class="col-md-8">
									<input name="exkind_nm" class="form-control" type="text"
										placeholder="시험명을 입력하세요">
								</div>
							<br>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">필기시험수수료</label>
								<div class="col-md-8">
									<input name="exkind_wr_pay_pr" class="form-control" type="text"
										placeholder="시험수수료를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">실기시험수수료</label>
								<div class="col-md-8">
									<input name="exkind_pr_pay_pr" class="form-control" type="text"
										placeholder="시험수수료를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">실시기관명</label>
								<div class="col-md-8">
									<input name="exkind_agency_nm" class="form-control" type="text"
										placeholder="실시기관명을 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">실시기관 홈페이지</label>
								<div class="col-md-8">
									<input name="exkind_homepage" class="form-control" type="text"
										placeholder="실시기관 홈페이지를 입력하세요">
								</div>
							</div>
						</div>

						<br>
						<div class="container" style="text-align: center;">
							<div class="left" style="text-align: center; width:34%; margin:0 20px 0;">
								<div>
									<button type="button" class="btn btn-primary"
										style="width: 300px; margin: 20px;">필기과목입력</button>
								</div>
								<div class="form-group">
									<label>과목명1</label>
									<div>
										<input name="wsu1" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명2</label>
									<div>
										<input name="wsu2" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명3</label>
									<div>
										<input name="wsu3" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명4</label>
									<div>
										<input name="wsu4" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명5</label>
									<div>
										<input name="wsu5" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
							</div>
							<div class="left"
								style="text-align: center; width: 34%; margin-right: 20px; margin-left: 50px;">
								<div>
									<button type="button" class="btn btn-primary"
										style="width: 300px; margin: 20px;">실기과목입력</button>
								</div>

								<div class="form-group">
									<label>과목명1</label>
									<div>
										<input name="psu1" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명2</label>
									<div>
										<input name="psu2" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명3</label>
									<div>
										<input name="psu3" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명4</label>
									<div>
										<input name="psu4" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label>과목명5</label>
									<div>
										<input name="psu5" class="form-control" type="text"
											placeholder="시험명을 입력하세요">
									</div>
								</div>
							</div>
						</div>
					</div>
			<div >
				<input type="submit" class="btn btn-primary"
					style="width: 100px; margin: 20px;" value="등록하기">
			</div>
			</form>
		</div>
		<!-- 내용끝 -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->

