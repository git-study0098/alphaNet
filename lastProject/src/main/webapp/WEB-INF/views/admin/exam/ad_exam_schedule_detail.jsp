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
			<a href="ad_exam_detail1.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">시험정보조회</button>
			</a> <a href="ad_exam_detail2.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">필기과목조회</button>
			</a> <a href="ad_exam_detail3.jsp">
				<button type="button" class="btn btn-primary"
					style="width: 300px; margin: 20px;">실기과목조회</button>
			</a>

			<form class="form-horizontal">
				<div class="form-inline"
					style="width: 100%; padding: 0px; margin: 0px;">
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">회차</label> <select
							style="width: 150px;">
							<option value="1회차">1회차</option>
							<option value="2회차">2회차</option>
							<option value="3회차">3회차</option>
						</select>
					</div>
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">분류</label> <select
							style="width: 150px;">
							<option value="기사">기사</option>
							<option value="산업기사">산업기사</option>
							<option value="기술사">기술사</option>
							<option value="전문자격시험">전문자격시험</option>
						</select>
					</div>
				</div>
				<div class="form-inline"
					style="width: 100%; padding: 0px; margin: 0px;">
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">정기/상시</label> <select
							style="width: 150px;">
							<option value="정기시험">정기시험</option>
							<option value="상시시험">상시시험</option>
						</select>
					</div>
					<div class="form-group"
						style="width: 50%; padding: 0px; margin: 0px;">
						<label class="col-md-3 control-label">필기/실기</label> <select
							style="width: 150px;">
							<option value="정기시험">필기시험</option>
							<option value="상시시험">실기시험</option>
						</select>
					</div>
				</div>
				<!-- 							<div class="form-group" style="width:20%;padding:0px;margin:0px;"> -->
				<!-- 								<div class="radio" style="padding:0px;margin:0px;"> -->
				<!-- 									<label><input type="radio">정기시험</label> -->
				<!-- 								</div> -->
				<!-- 								<div class="radio" style="padding:0px;margin:0px;"> -->
				<!-- 									<label><input type="radio">상시시험</label> -->
				<!-- 								</div> -->
				<!-- 							</div> -->
				<!-- 											<form class="form-inline"> -->
				<div class="form-group">
					<label class="col-md-2 control-label"> 시험명</label>
					<div class="col-md-5">
						<input class="form-control" type="text"
							placeholder="ex)2017년 정보처리기사1차필기시험">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">시험 종목명</label>
					<div class="col-md-5">
						<input class="form-control" type="text" placeholder="ex)정보처리기사  ">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="col-md-2 control-label">응시일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">합격자 발표일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">원서접수 시작일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">원서접수 종료일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">100%환불 가능 시작일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">100%환불 가능 종료일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">50%환불 가능 시작일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">50%환불 가능 종료일</label>
					<div class="col-md-5">
						<input class="form-control" type="date"
							placeholder="17/01/01형식으로 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">응시자수</label>
					<div class="col-md-5">
						<input class="form-control" type="date">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">합격자수</label>
					<div class="col-md-5">
						<input class="form-control" type="date">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">시험수수료</label>
					<div class="col-md-5">
						<input class="form-control" type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">실시기관명</label>
					<div class="col-md-5">
						<input class="form-control" type="text" placeholder="시행기관을 입력하세요">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="col-sm-2 control-label">가답안</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">확정답안</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">문제형</label>
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

