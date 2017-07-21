<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>게시판</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div class="row text-center pad-top">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/notice"> <i
						class="fa fa-desktop fa-5x"></i>
						<h4>공지사항</h4>
					</a>
				</div>
			</div>

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/useInfo"> <i class="fa fa-table fa-5x"></i>
						<h4>사이트 이용안내</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/pds"> <i class="fa fa-users fa-5x"></i>
						<h4>자료실</h4>
					</a>
				</div>
			</div>
		</div>
		<!-- /. ROW  -->
		<div class="row text-center pad-top">

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/notice3"> <i class="fa fa-clipboard fa-5x"></i>
						<h4>환불안내</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/notice4"> <i class="fa fa-envelope-o fa-5x"></i>
						<h4>관련학과 지정신청</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath()%>/admin/client"> <i class="fa fa-comments-o fa-5x"></i>
						<h4>고객의 소리</h4>
					</a>
				</div>
			</div>
		</div>
		<!-- /. ROW  -->
		<div class="row text-center pad-top"></div>

	</div>
	<!-- 내용끝 -->
</div>
