<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!-- /. NAV SIDE  -->
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>관리자 메인화면</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->

		<div class="row text-center pad-top">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/nomain"> <i class="fa fa-desktop fa-5x"></i>
						<h4>게시판관리</h4>
					</a>
				</div>
			</div>

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/examsch"> <i class="fa fa-table fa-5x"></i>
						<h4>시험일정관리</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/mem"> <i class="fa fa-users fa-5x"></i>
						<h4>회원관리</h4>
					</a>
				</div>
			</div>
		</div>
		<!-- /. ROW  -->
		<div class="row text-center pad-top">

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/cbt"> <i class="fa fa-clipboard fa-5x"></i>
						<h4>CBT</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/examin1"> <i class="fa fa-qrcode fa-5x"></i>
						<h4>시험종목추가</h4>
					</a>
				</div>
			</div>
		</div>
		<!-- /. ROW  -->
		<div class="row text-center pad-top"></div>


	</div>
</div>

