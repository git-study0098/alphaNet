<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script type="text/javascript" src="resources/admin_js/admin_left_script.js"
	charset="utf-8"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="../resources/admin_css/bootstrap.css" rel="stylesheet" />
<link href="../resources/admin_css/font-awesome.css" rel="stylesheet" />
<link href="../resources/admin_css/custom.css" rel="stylesheet" />
<link href="../resources/admin_css/common.css" rel="stylesheet" />
<link href="../resources/admin_css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />


<script src="../resources/admin_js/jquery-1.10.2.js"></script>
<script src="../resources/admin_js/admin_left_script.js"></script>
<script src="../resources/admin_js/bootstrap.min.js"></script>
<script src="../resources/admin_js/custom.js"></script>

</head>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<style>
#lnb {
	float: left;
	padding-bottom: 100px;
	width: 205px;
	margin-right: 20px;
}
/* 좌측메뉴 */
.tit_lnb {
	margin: 30px 0 20px;
	height: 36px;
	background: url('../images/common/lnb_tit.gif') no-repeat left bottom;
	font-size: 22px;
	color: #272727
}

.lnb {
	border-bottom: 1px solid #ededee;
	margin-bottom: 20px
}

.lnb>li {
	
}

.lnb>li>a {
	display: block;
	padding: 5px 25px 0 0;
	height: 23px;
	background: url('../images/common/lnb_arr_off.png') no-repeat 188px 10px;
	border-top: 1px solid #ededee;
	font-size: 15px;
	font-weight: bold;
	color: #333
}

.lnb>li>a:hover {
	padding-left: 10px;
	background: #00477c url('../images/common/lnb_arr_on.png') no-repeat
		188px 10px;
	color: #fff
}

.lnb>li.on>a {
	padding-left: 10px;
	background: #00477c url('../images/common/lnb_arr_on.png') no-repeat
		188px 10px;
	color: #fff
}

.lnb>li.low>a {
	background: url('../images/common/lnb_off.png') no-repeat 188px 12px
}

.lnb>li.low>a:hover {
	background: #00477c url('../images/common/lnb_on.png') no-repeat 188px
		11px
}

.lnb>li.low.on>a {
	padding-left: 10px;
	background: #00477c url('../images/common/lnb_on.png') no-repeat 188px
		11px;
	color: #fff
}

.lnb>li.low.on>ul {
	display: block
}

.lnb>li>ul {
	margin-bottom: 10px;
	border-top: 1px solid #ededee
}

.lnb>li>ul>li {
	margin-top: 7px;
	padding-left: 16px;
	background: url(../images/common/lnb_bl.gif) no-repeat 10px 7px
}

.lnb>li>ul>li>a {
	display: inline-block;
	padding: 2px 3px 5px 3px;
	font-size: 12px;
	line-height: 1.0em;
	color: #666
}

.lnb>li>ul>li>a:hover, .lnb>li>ul>li>a:focus {
	background: #00477c;
	color: #fff;
	text-decoration: none;
}

.lnb>li>ul>li.on>a {
	background: #00477c;
	color: #fff
}

.lnb>li>ul>li>ul>li {
	margin-top: 5px;
	padding-left: 8px;
	background: url(../images/common/lnb_bl_s.gif) no-repeat 3px 7px
}

.lnb>li>ul>li>ul>li>a {
	display: inline-block;
	padding: 1px 2px 4px;
	font-size: 11px;
	line-height: 1.0em;
	color: #666
}

.lnb>li>ul>li>ul>li>a:hover, .lnb>li>ul>li>ul>li>a:focus {
	background: #00477c;
	color: #fff
}

.lnb>li>ul>li>ul>li.on>a {
	background: #00477c;
	color: #fff
}

.board:hover {
	background-color: red;
}
</style>


<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Logo</a>
				</div>
				<!-- 무너지는 -->
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active">
						<li><a href="#">Home</a></li>
						<li><a href="#">board_admin</a></li>
						<li><a href="#">mem_admin</a></li>
						<li><a href="#">exam_admin</a></li>
						<li><a href="#">cbt_admin</a></li>
						<li><a href="#">exam_admin</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
								Logout</a></li>
					</ul>
				</div>
				<!-- 무너지는 -->
			</div>
		</nav>

		<!-- 사이드 메뉴 -->
		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-3 sidenav">
					<ul id="lnbNavi" class="lnb on">
						<li><a href="#"><i class="fa fa-users fa-1x"> </i>회원 관리 <i
								class="fa fa-angle-left pull-right"></i></a>
							<ul class="sidebar-submenu">
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 회원 정보 조회
								</a></li>
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 휴면 회원 조회
								</a></li>
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 회원 점수 조회
								</a></li>
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 합격자 조회
								</a></li>

								<li><a href="../../index2.html"><i
										class="fa fa-circle-o"></i> 회원 서류 승인</a></li>
							</ul></li>
						<li><a href="#"> <i class="fa fa-files-o"></i> <span>시험
									관리</span> <span class="label label-primary pull-right">4</span>
						</a>
							<ul class="sidebar-submenu">
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 시험 일정
								</a></li>
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i> 시험 추가
								</a></li>
							</ul></li>
						<li><a href="#"> <a href="../calendar.html"> <i
									class="fa fa-calendar"></i> <span>CBT</span> <small
									class="label pull-right label-danger">3</small>
							</a>
						</a></li>
						<li><a href="#"> <i class="fa fa-laptop"></i> <span>문제관리</span>
								<i class="fa fa-angle-left pull-right"></i>
								<ul class="sidebar-submenu">
									<li><a href="../../index.html">시험추가삭제  </a></li>
									<li><a href="../../index.html"> </a></li>
								</ul></li>
						</a>
						</li>
						<li><a href="#"> <i class="fa fa-edit"></i> <span>exam_admin</span>
								<i class="fa fa-angle-left pull-right"></i></a></li>

						<!-- 						<ul id="lnbNavi" class="lnb on"> -->
						<li class="low active on"><a>공지사항</a>
							<ul style="display: block;">
								<li><a><i class="fa fa-circle-o"></i> 공지사항</a></li>
								<li><a><i class="fa fa-circle-o"></i> 자격제도</a></li>
								<li><a href="../../index.html"> <i
										class="fa fa-circle-o"></i>시행
								</a></li>
								<li><a>출제</a></li>
								<li><a>서비스 개선</a></li>
							</ul></li>

						<li class="low"><a>이용안내</a>
							<ul style="display: block;">
								<li><a>사이트 이용방법</a></li>
								<li><a>자주찾는 질문</a></li>
							</ul></li>

						<li class="low"><a>자료실</a>
							<ul style="display: block;">
								<li><a>각종서식</a></li>
								<li><a>출제기준</a></li>
								<li><a>기출문제(기술사)</a></li>
								<li><a>공개문제</a></li>
								<li><a>관련법령</a></li>
							</ul></li>

						<li class="low"><a>환불안내</a>
							<ul style="display: block;">
								<li><a>기술자격 환불안내</a></li>
								<li><a>전문자격 환불안내</a></li>
							</ul></li>

						<li class="low"><a>고객 맞춤정보</a>
							<ul style="display: block;">
								<li><a>취업/훈련/연수</a></li>
								<li><a>대학생(중고생)장학금</a></li>
								<li><a>창업지원/교육서비스</a></li>
								<li><a>자금운용/보증지원</a></li>
							</ul></li>

						<li class="low"><a>관련학과 지정신청</a></li>

						<li><a>고객의 소리</a></li>
					</ul>
					<!-- 메뉴리스트 끝 -->
				</div>
			</div>

		</div>
		<div id="page-wrapper">
			<div class="col-sm-8 text-left">
				<div id="page-inner" style="margin-bottom: 200px;">
					<!-- body -->
					<decorator:body />
				</div>
			</div>
			 <div class="col-sm-2 sidenav">
			 </div>
		</div>
	</div>
	<!-- 푸터 시작 -->
	<footer class="container-fluid text-center"
		style="position: absolute; width: 100%; margin-bottom: 20px;overflow: hidden;">
		<p>ALPHA_NET</p>
	</footer>
</body>
</html>
