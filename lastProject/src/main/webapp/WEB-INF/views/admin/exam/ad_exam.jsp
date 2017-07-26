<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>시험 관리</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div class="row text-center pad-top">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/examin1"> <i class="fa fa-qrcode fa-5x"></i>
						<h4>시험등록</h4>
					</a>
				</div>
			</div>

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/exam_list"> <i class="fa fa-desktop fa-5x"></i>
						<h4>시험조회</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/examsch"> <i class="fa fa-table fa-5x"></i>
						<h4>시험 일정 관리</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 내용끝 -->
</div>
<!-- /. PAGE INNER  -->

