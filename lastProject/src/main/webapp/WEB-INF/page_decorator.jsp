<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>

<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8" >
<meta  name="viewport" content="width=device-width, initial-scale=1.0">
<title>α-net 자격의 모든것</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/left_menu.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/content.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mobile.css">

<style>	
	#wrap{ min-width:1000px;}		
	#header { position: relative;}
	#container {position: relative; width: 980px;margin: 0 auto; background: url(<%=request.getContextPath()%>/resources/images/common/bg_container.gif) repeat-y left top;}
	.main #content{float:left; margin:0 auto; width:725px; padding-bottom: 100px;}
	.center_area, .footer_top {position: relative; margin: 0 auto; width: 980px;	}
	
	.gnb_area {position:relative; height:34px; background-color:#2d2e33}
	.gnb_area > button {z-index:200; position:absolute; left:50%; top:0; margin-left:430px; height:34px; background:#01345b url('<%=request.getContextPath()%>/resources/images/common/bg_total.png') no-repeat center 23px; border-left:1px solid #888b95; border-right:1px solid #888b95}
	.gnb_area > button > span {display:inline-block; padding-bottom:10px; width:58px; height:24px; line-height:20px; text-align:center; font-size:11px; color:#97b8d2; overflow:hidden}
		.gnb {position:relative; margin:0 auto; width:980px; overflow:hidden; height:34px}
		.gnb > ul {}
		.gnb > ul > li {float:left; min-width:183px; border-left:1px solid #888b95; text-align:center; font-size:15px; font-weight:boldl}
		.gnb > ul > li > a {display:block; height:34px; line-height:30px; background-color:#52535d; color:#ccc; font-weight:bold}
		.gnb > ul > li > a:hover, .gnb > ul > li > a:focus {background-color:#1d7abd; color:#fff}
		.gnb > ul > li > span {display:none}
		.gnb > ul > li.on > a {background-color:#1d7abd; color:#fff}
		.gnb > ul > li > div {z-index:1002; position:absolute; left:50%; top:34px; margin-left:-490px; padding:40px 0; width:980px; min-height:211px}
		.gnb > ul > li > div.sub01 {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_01.png') no-repeat left top}
		.gnb > ul > li > div.sub02 {padding-top:50px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_02.png') no-repeat left top}
		.gnb > ul > li > div.sub02 > p {position:absolute; left:0; top:20px; width:100%; font-size:13px; color:#1d7abd}
		.gnb > ul > li > div.sub03 {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_03.png') no-repeat left top}
		.gnb > ul > li > div.sub04 {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_04.png') no-repeat left top}
		.gnb > ul > li > div.sub05 {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_05.png') no-repeat left top}
		.gnb > ul > li > div.sub06 {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_06.png') no-repeat left top}
		.gnb > ul > li > div > p {float:right}
		.gnb > ul > li > div > ul {float:left; padding:0 0 5px 0; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_line.gif') repeat-y left top}
			.gnb > ul > li > div.sub02 > ul {padding:0 7px 5px 21px}
		.gnb > ul > li > div > ul:first-child {padding-left:0; background:none}
		.gnb > ul > li > div > ul > li {min-width:100px; padding-right:10px; padding-top:10px; text-align:left; font-size:13px; font-weight:normal}
			.gnb > ul > li > div.sub02 > ul li {min-width:0; padding-right:0}
		.gnb > ul > li > div > ul > li:first-child {padding-top:5px}
		.gnb > ul > li > div > ul > li > a {display:inline-block; padding:2px 5px 5px 10px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot.png') no-repeat left 8px; line-height:1.0em; color:#333}
			.gnb > ul > li > div.sub02 > ul > li > a {margin-right:10px; white-space:nowrap}
		.gnb > ul > li > div > ul > li.on {background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_arr.png') no-repeat right 15px}
		.gnb > ul > li > div > ul > li.on:first-child {background-position:right 10px}
		.gnb > ul > li > div > ul > li.on > a {background-image:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_on.png'); color:#1163a0; font-weight:bold}
			.gnb > ul > li > div.sub02 > ul li.on {background:none}
		.gnb > ul > li > div > ul > li.on > a:hover, .gnb > ul > li > div > ul > li > a:hover, .gnb > ul > li > div > ul > li > a:focus {background-image:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_hover.png'); background-position:5px 8px; padding-left:15px; background-color:#1d7abd; color:#fff; font-weight:normal}
			.gnb > ul > li > div.sub02 > ul > li.on > a:hover, .gnb > ul > li > div.sub02 > ul > li > a:hover, .gnb > ul > li > div.sub02 > ul > li > a:focus {margin-right:5px}
		.gnb > ul > li > div > ul > li > ul {display:none; position:absolute; top:40px; padding:0 31px 5px 20px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_line.gif') repeat-y left top; font-size:12px}
		.gnb > ul > li > div > ul > li.on > ul {display:block}
		.gnb > ul > li > div > ul > li > ul > li {padding-top:7px;}
		.gnb > ul > li > div > ul > li > ul > li:first-child {padding-top:2px}
		.gnb > ul > li > div > ul > li > ul > li > a {display:inline-block; padding:2px 5px 5px 10px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_sub.png') no-repeat left 8px; line-height:1.0em}
		.gnb > ul > li > div > ul > li > ul > li > a:hover, .gnb > ul > li > div > ul > li > ul > li > a:focus {padding-left:15px; background-color:#1d7abd; color:#fff}
		.gnb > ul > li > div > ul > li > ul > li.on > a {padding-left:15px; background-image:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_sub_on.png'); background-position:5px 8px; background-color:#1d7abd; color:#fff}
		.gnb > ul > li > div > ul > li > ul > li > ul {display:none; position:absolute; top:0; padding:0 31px 5px 20px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_line.gif') repeat-y left top; font-size:12px}
		.gnb > ul > li > div > ul > li > ul > li.on > ul {display:block}
		.gnb > ul > li > div > ul > li > ul > li.on > ul > li {padding-top:9px; white-space:nowrap}
		.gnb > ul > li > div > ul > li > ul > li.on > ul > li:first-child {padding-top:0}
		.gnb > ul > li > div > ul > li > ul > li > ul > li > a {display:inline-block; padding:2px 5px 5px 10px; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_sub.png') no-repeat left 8px; line-height:1.0em}
		.gnb > ul > li > div > ul > li > ul > li > ul > li > a:hover, .gnb > ul > li > div > ul > li > ul > li > a:focus {padding-left:15px; background-image:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_sub_on.png'); background-position:5px 8px; background-color:#1d7abd; color:#fff}
		.gnb > ul > li > div > ul > li > ul > li > ul > li.on > a {padding-left:15px; background-image:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb_dot_sub_on.png'); background-position:5px 8px; background-color:#1d7abd; color:#fff}
		.gnb_bg {z-index:199; position:absolute; left:0; top:34px; width:100%; height:0; background:url('<%=request.getContextPath()%>/resources/images/common/bg_gnb.png') repeat-x left bottom}
		.qnet .gnb_bg {z-index:1001}
</style>

<script>
	$(function(){
		if($(window).width()<1000){
			$('#wrap').addClass('mobile');
		}else{
			$('#wrap').removeClass('mobile');
		}
	})
</script>
<script>
$(function(){
	
	var _mMenu = $(".mMenu_list"),
		_mMenu1dep = _mMenu.find("> ul > li"),
		_bHeight = $("#wrap").height(),
		_mBtn = $(".mMenu_open");
	_mMenu.hide().stop().animate({right : "-245px"});
	_mMenu1dep.find("> ul").hide();
	_mMenu.css({"min-height":_bHeight});
	
	if($(window).width() > 1000){
		$("#wrap").removeClass("mobile");
		$(".view_pc").removeClass("on");
		$(".mMenu_list").hide().stop().animate({right : "-245px"});
		_mMenu.find("li").removeClass("on");
		_mMenu1dep.find("> ul").hide();
		
	} else {
		$("#wrap").addClass("mobile");
		$(".view_pc").click(function(){
			$("#wrap").removeClass("mobile");
			$(this).addClass("active");
		});
	}
	
	$(window).resize(function(){
		if($(".view_pc").hasClass("active") == false){
			if($(document).width() > 1000){
				$("#wrap").removeClass("mobile");
				$(".view_pc").removeClass("on");
				$(".mMenu_list").hide().stop().animate({right : "-245px"});
				_mMenu.find("li").removeClass("on");
				_mMenu1dep.find("> ul").hide();
			} else {
				$("#wrap").addClass("mobile");
				$(".view_pc").click(function(){
					$("#wrap").removeClass("mobile");
					$(this).addClass("active");
				});
			}
		}
	});

	_mBtn.click(function(){
		var _bHeight = $("#wrap").height();
		
		_mMenu.show().stop().animate({right : 0});
		_mMenu.css({"min-height":_bHeight});
		_mMenu.find("li").removeClass("on");
		_mMenu1dep.find("> ul").hide();
	});
	_mMenu.find(".close").click(function(){
		_mMenu.stop().animate({right : "-245px"}, function(){
			$(this).hide();
		});
	});
	_mMenu1dep.find("> a").click(function(){
		if($(this).parent("li").hasClass("on")){
			$(this).parent("li").find("> ul").slideUp(function(){
				$(this).parent("li").removeClass("on");
			});
		} else {
			$(this).parent("li").find("> ul").slideDown();
			$(this).parent("li").addClass("on");
		}
		$(this).parent("li").siblings().find(">ul").slideUp();	
		$(this).parent("li").addClass("on").siblings().removeClass("on");
	});
});
</script>
<script>
$(function(){	
	$(".gnb > ul > li").mouseenter(function(){
		$(this).addClass("on");
	})
	$(".gnb > ul > li").mouseout(function(){
		$(this).removeClass("on");
	})
	
});

$(function(){

/* gnb */
var $gnb = $(".gnb"),
	$gnb1depth = $(".gnb > ul > li"),
	$oldHeight = 34,
	$gnb2depth = $gnb1depth.find("> div > ul > li"),
	$gnb3depth = $gnb2depth.find("> ul > li"),
	$gnbBg = $(".gnb_bg");
	

var speed = 800;
/* reset */
	$gnb.stop().animate({height : $oldHeight}, speed, "easeInOutQuart");
	$gnb.find("li.on").addClass("active");

	$gnb1depth.find(">a").mouseenter(function(){
		$gnb1depth.find("div").hide();
		$gnb2depth.removeClass("on");
		$gnb2depth.find(">ul").hide();
	
		$(this).parent("li").find(">div").show();
		$(this).parent("li").addClass("on").siblings().removeClass("on");
	
		var bgH = Math.max($(this).next("div").height(), $(this).parent("li").find(">div").find(">ul>li>ul").height()) + parseInt($(this).parent("li").find("> div").css("padding-top")) + parseInt($(this).parent("li").find("> div").css("padding-bottom")) + 10,
			sLeft = $(this).parent("li").find("> div > ul").width() + 20,
			ssLeft = $(this).parent("li").find("> div > ul > li > ul").width() + 40,
			sH = $(this).parent("li").find("> div > ul").height();
	
		/* 3depth가 있을 경우 */
		if($(this).parent("li").find(">div").find(">ul>li:first-child").find("ul").length){
			$(this).parent("li").find(">div").find(">ul>li:first-child").addClass("on").find("ul").show();
		} else {
			//$(this).parent("li").find("> div > ul").height($(this).parent("li").find("> div > ul").height());
		}
	
		$(this).parent("li").find("ul").css("min-height",sH);
	
		$(this).parent("li").find("> div > ul > li > ul").css({"left":sLeft});
		$(this).parent("li").find("> div > ul > li > ul > li > ul").css({"left":ssLeft});
	
		$gnb.stop().animate({height : bgH}, speed, "easeInOutQuart");
		$gnbBg.stop().animate({height : bgH}, speed, "easeInOutQuart");
	
	})
	.focusin(function(){
		$(this).mouseenter();
	});
	$gnb1depth.focusin(function(){
		$(this).mouseenter();
	});

	$($gnb, $gnbBg).mouseleave(function(){
		gnbReset();
	});

	$gnb1depth.filter(":last").find("a:last").off('keydown').on('keydown', function (b) {
	   if(b.keyCode == 9 && b.shiftKey) {
	   } else if (b.keyCode == 9) {
			gnbReset();
	   }
	});

	$gnb1depth.filter(":first").find(">a").off('keydown').on('keydown', function (b) {
	   if(b.keyCode == 9 && b.shiftKey) {
			gnbReset();
	   } else if (b.keyCode == 9) {}
	});

	function gnbReset(){
		$gnb.stop().animate({height : $oldHeight}, speed, "easeInOutQuart");
		$gnbBg.stop().animate({height : 0}, speed, "easeInOutQuart", function(){
			$gnb1depth.removeClass("on");
			$gnb1depth.find("div").hide();
			$gnb.find("li.active").addClass("on");
		});
	}

	$gnb2depth.find(">a").mouseenter(function(){
		var max = Math.max($(this).parent("li").find(">ul").height(), $(this).parent("li").parent("ul").height()),
			bgH = max + parseInt($(this).parent("li").find("> div").css("padding-top")) + parseInt($(this).parent("li").find("> div").css("padding-bottom"));
	
		if($(this).parent("li").find(">ul").length){
			$gnb.stop().animate({height : bgH}, speed, "easeInOutQuart");
			$gnbBg.stop().animate({height : bgH}, speed, "easeInOutQuart");
		}else{
			$(this).parent("li").css({"background":"none"});
		}
	
		$gnb3depth.removeClass("on");
		$gnb3depth.find(">ul").hide();
		$gnb2depth.find(">ul").hide();
	
		$gnb2depth.removeClass("on");
		$(this).parent("li").addClass("on");
		$(this).parent("li").find(">ul").show();
	
	})
	.focusin(function(){
		$(this).mouseenter();
	});

	$gnb3depth.find(">a").mouseenter(function(){
		var sH = $(this).parents("ul").height();
	
		$gnb3depth.find(">ul").hide();
		$(this).parent("li").addClass("on").siblings().removeClass("on");
		$(this).parent("li").find(">ul").show();
	
		$(this).parent("li").find(">ul").height(sH);
	})
	.focusin(function(){
		$(this).mouseenter();
	});
});
</script>
</head>
<body>
	<div id="wrap" class="qnet main">
	<!--헤더파일 들어가는 곳 시작 -->
		<header>
			<div id="header">
				<div class="center_area">
				<!-- 경로 설정 -->
					<h1><a id="lnkMoveToMain" href="<%=request.getContextPath() %>/main"><img src="<%=request.getContextPath()%>/resources/images/alpha_logo.png" alt="Q-Net 자격의 모든것"></a></h1>
					<button type="button" class="mMenu_open" title="메뉴 열기"><img src="<%=request.getContextPath()%>/resources/images/btn_menu.png" alt="메뉴 열기"></button>
					<ul class="left">
						<li><button type="button" class="notice" id="topNoticeBtn" title="긴급공지 열기"><span>긴급공지</span></button></li>
						<li><a href="#" target="_blank" title="본 링크를 클릭하시면 새 창이 열립니다." class="imgLink"><img src="<%=request.getContextPath()%>/resources/images/logo_hrdkorea.gif" alt="한국산업인력공단"></a></li>
						<li><a><img alt="정부3.0" src="<%=request.getContextPath()%>/resources/images/logo_gov30_1 (1).jpg"></a></li>
						<li><a>고객의소리</a></li>
					</ul>
					<ul class="right">
					
					<sec:authorize access="isAuthenticated()">
						<li><a href="logout">로그아웃</a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="login">로그인</a></li>
					</sec:authorize>
						<li><a href="signup">회원가입</a></li>
						<li><a>English</a></li>
						<li><a>이용안내</a></li>
						<li><a>큐넷길라잡이</a></li>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<%=request.getContextPath() %>/admin/login/main2">관리자 페이지</a></li>
					</sec:authorize>
					</ul>
					<form method="get" class="header_form" role="search">
						<fieldset class="total_search">
							<span> <span class="dSelect"> <select name="w" id="total" title="구분 선택">
										<option value="total">통합검색</option>
										<option value="qual_info">자격정보</option>
										<option value="exam_info">시험정보</option>
										<option value="homepage">큐넷</option>
										<option value="website">관련사이트</option>
										<option value="contents">콘텐츠</option>
										<option value="minwon">Q&amp;A</option>
								</select>
							</span> <input type="text" name="q" id="keyword" title="검색어 입력" value="검색어를 입력하세요">
							</span> <input type="submit" value="검색">
						</fieldset>
					</form>
				</div>
				<div class="gnb_area">
					<div class="gnb" style="height: 34px;">
						<ul>
							<li class=""><a href="<%=request.getContextPath() %>/wonseoInfo">정기시험</a>
								<div class="sub01" >
									<ul style="min-height: 235px;">
										<li class="">
											<a href="<%=request.getContextPath() %>/wonseoInfo">원서접수</a>
											<ul style="min-height: 235px; left: 228px; display: none;">
												<li><a href="<%=request.getContextPath() %>/wonseoInfo">원서접수안내</a></li>
												<li><a href="/member/wonseo/request">원서접수신청</a></li>
												<li><a href="<%=request.getContextPath() %>/wonseo_ing">원서접수현황</a></li>
											</ul></li>
										<li><a onclick="return NetFunnel_goUrl({},this.href);"
											href="#">합격자/답안발표</a>
											<ul style="display: none; min-height: 235px; left: 228px;">
												<li><a href="<%=request.getContextPath() %>/wonseoPassSearch">합격자 발표조회</a></li>
												<li><a href="<%=request.getContextPath() %>/wonseoAnswer">가답안/확정답안</a></li>
											</ul></li>
										<li><a href="<%=request.getContextPath()%>/calender">시험일정</a>
											<ul style="display: none; min-height: 235px; left: 228px;">
												<li><a href="<%=request.getContextPath()%>/calender">월간 시험일정</a></li>
												<li><a href="<%=request.getContextPath()%>/wonseoExamDate">국가기술자격 시험일정</a></li>
											</ul></li>
										<li><a href="#">필기시험안내</a>
											<ul style="display: none; min-height: 235px; left: 228px;">
												<li><a href="<%=request.getContextPath() %>/wonseoWriterInfo">필기시험 접수안내</a></li>
												<li><a href="<%=request.getContextPath() %>/wonseoWriterPrice1">필기시험 수수료</a></li>
											</ul></li>
										<li><a href="#">실기시험안내</a>
											<ul style="display: none; min-height: 235px; left: 228px;">
												<li><a href="<%=request.getContextPath()%>/wonseoFuncInfo">실기시험 접수안내</a></li>
												<li><a href="<%=request.getContextPath()%>/wonseoWriterPrice1">실기시험 수수료</a></li>
												<li><a href="<%=request.getContextPath()%>/wonseoJonmokTestInfo">실기시험 종목별 시험방법</a></li>
												<li><a href="<%=request.getContextPath()%>/wonseoFuncChangDate">실기시험 일정 변경기준</a></li>
												<li><a href="<%=request.getContextPath()%>/wonseoFuncPlace">실기일정 및 타지사 이동사유</a></li>
											</ul></li>
										<li><a href="#">자격검정통계</a>
											<ul style="display: none; min-height: 235px; left: 228px;">
												<li><a href="<%=request.getContextPath()%>/chart">총괄현황</a></li>
											</ul></li>
									</ul>
									<p class="blind">
										<em>국가기술자격, 원서접수 및 시험관련 정보</em> <strong>원서접수, 시험일정,
											합격자발표, 정보안내!</strong> <span>원서접수, 합격자발표, 시험일정, 시험정보 안내, 통계자료 등
											수험자들에게 보다 양질의 서비스를 제공하기 위해서 최선을 다하고 있습니다.</span> <strong>전화
											또는 문자상담은 1644-8000, 평일(월~금) 9시부터 18시까지, 휴일(토,일요일 및 공휴일)은 쉽니다.</strong>
									</p>
								</div>
							</li>
							<li class=""><a href="#">사전 시험보기</a>
								<div class="sub02" style="display: none;">
									<ul style="min-height: 235px;">
										<li>
											<a href="" target="_blank" title="새 창">CBT</a>
										</li>
									</ul>
									<p>- 클릭하시면 해당 전문자격 홈페이지로 이동됩니다. -</p>
								</div>
							</li>								
							<li class=""><a href="<%=request.getContextPath() %>/request1">자격증/확인서</a>
								<div class="sub03" style="display: none;">
									<ul style="min-height: 145px;">
										<li class=""><a href="infoRequest">자격증발급안내</a>
											<ul style="min-height: 145px; left: 180px; display: none;">
												<li><a href="infoRequest">자격증발급/발급처</a></li>
												<li><a href="infoNew">신규/인정/재발급</a></li>
												<li><a href="infoFunc">기능사보기능자격부여</a></li>
												<li><a href="infoTarget">면허발급대상종목</a></li>
												<li><a href="infoWarn">국가자격취득자주의사항</a></li>
												<li><a href="infoEdu">보수교육갱신등록폐지</a></li>
												<li><a href="infoNon">폐지종목자격발급</a></li>
											</ul></li>
										<li><a href="request1">자격증발급</a>
											<ul style="display: none; min-height: 145px; left: 180px;">
												<li><a href="jaguk">자격증발급신청</a></li>
												<li><a href="#">자격증발급내역</a></li>
											</ul></li>
										<li><a href="confirminfo">확인서발급</a>
											<ul style="display: none; min-height: 145px; left: 180px;">
												<li><a href="confirminfo">확인서발급안내</a></li>
												<li><a href="member/jaguk/confirmRequest">확인서발급신청</a></li>
												<li><a href="member/jaguk/confirmSelect">확인서발급내역</a></li>
											</ul></li>
										<li><a href="member/get">자격취득/미발급조회</a>
											<ul style="display: none; min-height: 145px; left: 180px;">
												<li><a href="member/get">자격증취득조회</a></li>
												<li><a href="nonGet">자격증미발급조회</a></li>
											</ul></li>
										<li><a href="jagukTrue">확인서/자격증진위확인</a>
											<ul style="display: none; min-height: 145px; left: 180px;">
												<li><a href="jagukTrue">확인서진위확인</a></li>
												<li><a href="confirmTrue">자격증진위확인</a></li>
											</ul></li>
									</ul>
									<p class="blind">
										<em>필요한 확인서를~,</em> <strong>발급신청, 재용조회, 출력까지!!</strong> <span>로그인을
											통해 발급, 조회, 진위확인을 할 수 있으며, 로그인 없이 문서진위확인, 위변조 검증 S/W 다운로드 등 각종
											서비스를 이용하실 수 있습니다.</span>
									</p>
								</div>
							</li>
							
							<li class=""><a id="lnkMoveToMypage" href="<%=request.getContextPath() %>/member/wonseoHistory">마이페이지</a>
								<div class="sub04" style="display: none;">
									<ul style="min-height: 145px;">
										<li class=""><a href="<%=request.getContextPath() %>/member/wonseoHistory">원서접수관리</a>
											<ul style="min-height: 145px; left: 130px; display: none;">
												<li><a href="#">원서접수내역</a></li>
												<li><a onclick="return NetFunnel_goUrl({},this.href);"
													href="#">원서접수신청</a></li>
												<li><a href="#">시험결과확인</a></li>
												<li><a href="#">사진변경신청/결과</a></li>
											</ul></li>
										<li><a href="#">응시자격</a>
											<ul style="display: none; min-height: 145px; left: 130px;">
												<li><a href="#">응시자격자가진단</a></li>
												<li><a href="#">응시가능종목확인</a></li>
												<li><a href="#">응시자격제출서류확인</a></li>
												<li><a href="#">응시자격서류 온라인 제출</a></li>
											</ul></li>
										<li><a href="#">발급조회현황</a>
											<ul style="display: none; min-height: 145px; left: 130px;">
												<li><a href="#">확인서발급내역</a></li>
												<li><a href="#">자격증발급내역</a></li>
												<li><a href="#">자격증취득조회</a></li>
											</ul></li>
										<li><a href="#">면제정보보기</a>
											<ul style="display: none; min-height: 145px; left: 130px;">
												<li><a href="#">시험면제</a></li>
												<li><a href="#">과목면제</a></li>
											</ul></li>
										<li><a href="<%=request.getContextPath() %>/member/myInfo">개인정보관리</a>
											<ul style="display: none; min-height: 145px; left: 130px;">
												<li><a href="<%=request.getContextPath() %>/member/myInfo">개인정보수정</a></li>
												<li><a href="#">학력/경력수정</a></li>
												<li><a href="#">회원탈퇴</a></li>
											</ul></li>
									</ul>
									<p class="blind">
										<em>원서접수관리에서 부터~</em> <strong>필요한 서비스를 확인, 진단, 관리!</strong> <span>원서접수관리,
											응시자격자가진단, 발급조회현황, 시험·과목면제, 개인정보관리 등을 이용하실 수 있습니다.</span>
									</p>
								</div>
							</li>
							<li class=""><a href="<%=request.getContextPath() %>/memberNotice1">고객지원</a>
								<div class="sub05" style="display: none;">
									<ul style="min-height: 295px;">
										<li class="on"><a href="<%=request.getContextPath() %>/memberNotice1">공지사항</a>
											<ul style="min-height: 295px; left: 154px;">
												<li><a href="<%=request.getContextPath() %>/memberNotice1">공지사항</a></li>
												<li><a href="#">자격제도</a></li>
												<li><a href="#">시행자료</a></li>
												<li><a href="#">출제자료</a></li>
												<li><a href="#">서비스개선</a></li>
											</ul></li>
										<li><a href="useInfo">이용안내</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#">사이트 이용방법</a></li>
												<li><a href="#" target="_blank"
													title="한국산업인력공단 고객센터 새 창">자주찾는질문</a></li>
												<li><a href="#">큐넷 체험하기</a></li>
											</ul></li>
										<li><a href="pds">자료실</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#">각종서식자료</a></li>
												<li><a href="#">출제기준</a></li>
												<li><a href="#">기출문제(기술사)</a></li>
												<li><a href="#">공개문제</a></li>
												<li><a href="#">관련법령</a></li>
											</ul></li>
										<li><a href="#">유실물센터</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#">이용안내</a></li>
												<li><a href="#">유실물검색</a></li>
												<li><a href="#">분실물등록 및 검색</a></li>
											</ul></li>
										<li><a href="#">환불안내</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#">기술자격환불안내</a></li>
												<li><a href="#">전문자격환불안내</a></li>
											</ul></li>
										<li><a href="#">복지환원방</a></li>
										<li><a href="#">정부3.0 정보공개</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#" target="_blank" title="새 창">공공데이터
														개방</a></li>
												<li><a href="#">자격정보 오픈 API 서비스</a></li>
												<li><a href="#" target="_blank" title="새 창">정부3.0
														우수기관 선정</a></li>
											</ul></li>
										<li><a href="#1#">고객맞춤정보</a>
											<ul style="display: none; min-height: 295px; left: 154px;">
												<li><a href="#">취업/훈련/연수</a></li>
												<li><a href="#">대학생(중고생)장학금</a></li>
												<li><a href="#">창업지원/교육서비스</a></li>
												<li><a href="#">자금운용/보증지원</a></li>
											</ul></li>
										<li><a href="#">관련학과 지정신청</a></li>
										<li title="새창"><a href="javascript:goMinwon();">고객의소리</a></li>
									</ul>
									<p class="blind">
										<em>사이트이용 안내, 공지사항~</em> <strong>자료실, 유실물센터, 환불, 복지,
											정보!</strong> <span>최상의 서비스를 제공하기 위해서 노력하겠습니다. 이용시 불편한 사항이 있으시면
											항상 문의주시고, 한발 앞서 개선하는 큐넷이 되겠습니다.</span> <span>전화 또는 문자상담은
											1644-8000, 평일(월~금) 9시부터 18시까지, 휴일(토,일요일 및 공휴일)은 쉽니다.</span>
									</p>
								</div>
							</li>							
						</ul>
					</div>
					<div class="gnb_bg" style="height: 0px;"></div>
					<button id="btnTotalMenu" class="total" type="button">
						<span>전체메뉴</span>
					</button>
				</div>
			</div>
		</header>

		<div class="mMenu_list"
			style="right: -245px; min-height: 2183px; display: none;">
			<button class="close" title="메뉴 닫기">
				<img src="<%=request.getContextPath()%>/resources/images/main/btn_menu_close.png" alt="메뉴 닫기">
			</button>
			<span><a href="https://m.q-net.or.kr">&nbsp;모바일앱&nbsp;&nbsp;|</a><a
				href="http://www.q-net.or.kr/qnet/html/eng_qnet/main.html">&nbsp;&nbsp;English</a></span>
			<ul>
				<li><a href="#"><span>정기시험</span></a>
					<ul style="display: none;">
						<li><a onclick="return NetFunnel_goUrl({},this.href);"
							href="http://www.q-net.or.kr/rcv001.do?id=rcv00103&amp;gSite=Q&amp;gId=">원서접수</a></li>
						<li><a onclick="return NetFunnel_goUrl({},this.href);"
							href="http://www.q-net.or.kr/anc001.do?id=anc001011&amp;gSite=Q&amp;gId=">합격자/답안발표</a></li>
						<li><a
							href="http://www.q-net.or.kr/crf021.do?id=crf02101&amp;gSite=Q&amp;gId=">시험일정</a></li>
						<li><a
							href="http://www.q-net.or.kr/rcv001.do?id=rcv00104&amp;gSite=Q&amp;gId=">필기시험안내</a></li>
						<li><a
							href="http://www.q-net.or.kr/rcv013.do?id=rcv01303&amp;gSite=Q&amp;gId=">실기시험안내</a></li>
						<li><a
							href="http://www.q-net.or.kr/crf005.do?id=crf00501&amp;gSite=Q&amp;gId=">자격정보</a></li>
						<li><a
							href="http://www.q-net.or.kr/crf011.do?id=crf01101&amp;gSite=Q&amp;gId=">자격검정통계</a></li>
						<li><a href="https://www.youtube.com/watch?v=rfZMtTrs-zI"
							target="_blank" title="새 창">국가기술자격대여근절캠페인</a></li>
					</ul></li>
				<li><a href="#"><span>전문자격시험</span></a>
					<ul style="display: none;">
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=07&amp;gSite=L"
							target="_blank" title="새 창">가맹거래사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=64&amp;gSite=L"
							target="_blank" title="새 창">감정사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=60&amp;gSite=L"
							target="_blank" title="새 창">감정평가사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=63&amp;gSite=L"
							target="_blank" title="새 창">검량사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=62&amp;gSite=L"
							target="_blank" title="새 창">검수사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=46&amp;gSite=L"
							target="_blank" title="새 창">경매사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=09&amp;gSite=L"
							target="_blank" title="새 창">경비지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=49&amp;gSite=L"
							target="_blank" title="새 창">경영지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=05&amp;gSite=L"
							target="_blank" title="새 창">공인노무사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=08&amp;gSite=L"
							target="_blank" title="새 창">공인중개사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=37&amp;gSite=L"
							target="_blank" title="새 창">관광통역안내사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=24&amp;gSite=L"
							target="_blank" title="새 창">관세사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=40&amp;gSite=L"
							target="_blank" title="새 창">국내여행안내사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=50&amp;gSite=L"
							target="_blank" title="새 창">기술지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=45&amp;gSite=L"
							target="_blank" title="새 창">농산물품질관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=43&amp;gSite=L"
							target="_blank" title="새 창">문화재수리기능자</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=42&amp;gSite=L"
							target="_blank" title="새 창">문화재수리기술자</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=61&amp;gSite=L"
							target="_blank" title="새 창">물류관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=35&amp;gSite=L"
							target="_blank" title="새 창">박물관 및 미술관 준학예사</a></li>
						<!-- 2016.11.28 jws : 김종호 대리 요청 방사선 3종목 메뉴제거
					<li><a href="http://www.q-net.or.kr/man001.do?id=&gId=30&gSite=L" target="_blank" title="새 창">방사선취급감독면허</a></li>
					<li><a href="http://www.q-net.or.kr/man001.do?id=&gId=29&gSite=L" target="_blank" title="새 창">방사성동위원소취급(일반)</a></li>
					<li><a href="http://www.q-net.or.kr/man001.do?id=&gId=28&gSite=L" target="_blank" title="새 창">방사성동위원소취급(특수)</a></li>
					-->
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=51&amp;gSite=L"
							target="_blank" title="새 창">변리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=52&amp;gSite=L"
							target="_blank" title="새 창">사회복지사1급</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=57&amp;gSite=L"
							target="_blank" title="새 창">산업보건지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=56&amp;gSite=L"
							target="_blank" title="새 창">산업안전지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=22&amp;gSite=L"
							target="_blank" title="새 창">세무사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=34&amp;gSite=L"
							target="_blank" title="새 창">소방시설관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=33&amp;gSite=L"
							target="_blank" title="새 창">소방안전교육사</a></li>
						<!-- 2015.06.03 jws : 배은지과장 요청 손해평가사 추가 -->
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=73&amp;gSite=L"
							target="_blank" title="새 창">손해평가사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=72&amp;gSite=L"
							target="_blank" title="새 창">수산물품질관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=54&amp;gSite=L"
							target="_blank" title="새 창">정수시설운영관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=59&amp;gSite=L"
							target="_blank" title="새 창">주택관리사보</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=67&amp;gSite=L"
							target="_blank" title="새 창">청소년상담사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=66&amp;gSite=L"
							target="_blank" title="새 창">청소년지도사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=36&amp;gSite=L"
							target="_blank" title="새 창">한국어교육능력검정시험</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=31&amp;gSite=L"
							target="_blank" title="새 창">행정사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=39&amp;gSite=L"
							target="_blank" title="새 창">호텔경영사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=38&amp;gSite=L"
							target="_blank" title="새 창">호텔관리사</a></li>
						<li><a
							href="http://www.q-net.or.kr/man001.do?id=&amp;gId=41&amp;gSite=L"
							target="_blank" title="새 창">호텔서비스사</a></li>
					</ul></li>
				<li><a href="#"><span>자격증/확인서</span></a>
					<ul style="display: none;">
						<li><a
							href="http://www.q-net.or.kr/qlf001.do?id=qlf00101&amp;gSite=Q&amp;gId=">자격증발급안내</a></li>
						<li><a
							href="http://www.q-net.or.kr/isr001.do?id=isr00101&amp;gSite=Q&amp;gId=">자격증발급</a></li>
						<li><a
							href="http://www.q-net.or.kr/iss001.do?id=iss00101&amp;gSite=Q&amp;gId=">확인서발급</a></li>
						<li><a
							href="https://www.q-net.or.kr/qlf002.do?id=qlf00201&amp;gSite=Q&amp;gId=">자격취득/미발급조회</a></li>
						<li><a
							href="http://www.q-net.or.kr/iss004.do?id=iss00401&amp;gSite=Q&amp;gId=">확인서/자격증진위확인</a></li>
					</ul></li>
				<li><a href="#"><span>마이페이지</span></a>
					<ul style="display: none;">
						<li><a
							href="https://www.q-net.or.kr/myp002.do?id=myp00201&amp;gSite=Q&amp;gId=">원서접수관리</a></li>
						<li><a
							href="http://www.q-net.or.kr/myp011.do?id=myp01101&amp;gSite=Q&amp;gId=">응시자격</a></li>
						<li><a
							href="http://www.q-net.or.kr/myp005.do?id=myp00501&amp;gSite=Q&amp;gId=">발급조회현황</a></li>
						<li><a
							href="http://www.q-net.or.kr/myp007.do?id=myp00702&amp;gSite=Q&amp;gId=&amp;myPageYn=Y">면제정보보기</a></li>
						<li><a
							href="https://www.q-net.or.kr/myp001.do?id=myp00101&amp;gSite=Q&amp;gId=">개인정보관리</a></li>
					</ul></li>
				<li><a href="#"><span>고객지원</span></a>
					<ul style="display: none;">
						<li><a
							href="http://www.q-net.or.kr/man004.do?id=man00401&amp;notiType=10&amp;gSite=Q&amp;gId=">공지사항</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst002.do?id=cst00201&amp;gSite=Q&amp;gId=">이용안내</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst006.do?id=cst00601&amp;code=1201&amp;gSite=Q&amp;gId=">자료실</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst010.do?id=cst01001&amp;gSite=Q&amp;gId=">유실물센터</a></li>
						<li><a
							href="http://www.q-net.or.kr/crf022.do?id=crf02201&amp;gSite=Q&amp;gId=">환불안내</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst011.do?id=cst01101&amp;gSite=Q&amp;gId=">복지환원방</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst012.do?id=cst01201&amp;gSite=Q&amp;gId=">정부3.0
								정보공개</a></li>
						<li><a
							href="http://www.q-net.or.kr/cst013.do?id=cst01301&amp;gSite=Q&amp;gId=">관련학과
								지정신청</a></li>
						<!--  2015.05.12 add jws : 이종용대리 요청으로 인한 고객의 소리 메뉴 추가-->
						<li><a href="javascript:goMinwon();">고객의소리</a></li>
					</ul></li>
			</ul>
		</div>
		<!--헤더파일 들어가는 곳 끝 -->
		<div class="clear"></div>
		
		<decorator:body />

		<!-- 푸터 시작 -->
		<div class="clear"></div>
		<div class="interval"></div>

		<footer>
			<div class="footer">
				<div class="footer_top">
					<div class="footer_menu">
						<ul>
							<li><a href="http://www.q-net.or.kr/man001.do?id=infoprotection&amp;gSite=Q&amp;gId="> <span style="color: red; font-weight: bold;">개인정보처리방침</span> </a></li>
							<li><a href="http://www.q-net.or.kr/man001.do?id=agreement&amp;gSite=Q&amp;gId=">이용약관</a></li>
							<li><a href="javascript:;" onclick="popup2('http://www.hrdkorea.or.kr/5/6','aa1','1110','768','1','1','yes');" title="새 창">찾아오시는길</a></li>
						</ul>
					</div>
					<div class="site_go">
						<span class="site">
							<select title="관련사이트 선택" name="relSite" id="relSite">
								<option value="">관련사이트</option>
								<option value="http://www.hrdkorea.or.kr">공단홈페이지</option>
								<option value="http://www.tvworknet.or.kr">한국직업방송</option>
								<option value="http://skill.hrdkorea.or.kr">국제기능올림픽대회 한국위원회</option>
								<option value="http://www.ncs.go.kr">NCS 국가직무능력표준</option>
								<option value="http://www.hrd.go.kr">HRD-Net 직업능력지식포털</option>
							</select>
							<button class="move" id="goRelSite" title="새 창"><span>이동</span></button>
						</span>
					</div>
				</div>
				<div class="center_area">
					<div class="address">
						<strong class="logo"><img src="<%=request.getContextPath()%>/resources/images/footer_logo.gif" alt="한국산업인력공단"></strong>
						<span class="mLogo"><img src="<%=request.getContextPath()%>/resources/images/footer_logo.png" alt="한국산업인력공단"></span>
						<address>울산광역시 중구 종가로 345 한국산업인력공단 (우)44538 ☏1644 - 8000</address>
						<p>Copyright ⓒ 1999~2015 All Rights Reserved. Human resources Development Service of Korea.</p>
					</div>
				</div>
			</div>
		</footer>

	</div>
</body>
</html>
