<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Simple Responsive Admin</title>
<!-- BOOTSTRAP STYLES-->
<link href="<%=request.getContextPath() %>/resources/admin2/ccss/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="<%=request.getContextPath() %>/resources/admin2/ccss/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="<%=request.getContextPath() %>/resources/admin2/ccss/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/ccss?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>

<body>

	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					
				</div>

				<span class="logout-spn"> <a href="#" style="color: #fff;">LOGOUT</a>

				</span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a href="<%=request.getContextPath() %>/admin/login/main2"><i class="fa fa-gear fa-2x"></i>메인화면
					</a></li>
					<li><a href="<%=request.getContextPath() %>/admin/nomain"><i
							class="fa fa-desktop fa-2x"></i>게시판관리 </a></li>

					<li><a href="<%=request.getContextPath() %>/admin/exam"><i
							class="fa fa-table fa-2x"></i> 시험관리 </a></li>
					<li class="active-link"><a href="<%=request.getContextPath() %>/admin/cbt"> <i
							class="fa fa-edit fa-2x"></i>CBT관리
					</a></li>
					<li><a href="<%=request.getContextPath() %>"><i class="fa fa-users fa-2x"></i>회원관리
					</a></li>
<!-- 					<li><a href="admin/mem/ad_stare_mem.jsp"><i -->
<!-- 							class="fa fa-bar-chart-o fa-2x"></i> 응시시험회원관리</a></li> -->
					</ul>
					<a class="navbar-brand" href="<%=request.getContextPath()%>"/ad_main.jsp> <img
						src="<%=request.getContextPath() %>/resources/admin2/img/logo.png" style="width:200px;height:200px;"/>
					</a>
			</div>
		</nav>
		<!-- /. NAV SIDE  -->
			<decorator:body />
	</div>
	<!-- /. PAGE WRAPPER  -->
	<div class="footer">
		<div class="row">
			<div class="col-lg-12">
				&copy; ALPHA_NET <a href="http://binarytheme.com"
					style="color: #fff;" target="_blank">www.alpha_net.com</a>
			</div>
		</div>
	</div>
</body>
</html>

