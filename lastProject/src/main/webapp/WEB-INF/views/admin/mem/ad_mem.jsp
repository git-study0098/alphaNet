<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- /. NAV SIDE  -->
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>회원 관리</h2>
			</div>
		</div>
		<hr />
		<!-- 내용 -->
		<div class="row text-center pad-top">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/inmem"> <i
						class="fa fa-circle-o-notch fa-5x"></i>
						<h4>휴먼 계정 회원 조회</h4>
					</a>
				</div>
			</div>

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/memlist"> <i class="fa fa-users fa-5x"></i>
						<h4>회원 정보 조회</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/smem"> <i class="fa fa-clipboard fa-5x"></i>
						<h4>회원 서류 승인</h4>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<div class="div-square">
					<a href="<%=request.getContextPath() %>/admin/smemde"> <i class="fa fa-bar-chart-o fa-5x"></i>
						<h4>시험응시 회원관리</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 내용끝 -->
</div>

