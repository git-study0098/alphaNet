<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/base2017.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/client/style.css"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script> 


<script>
	$(function(){

	 $( "#startDate" ).datepicker({
	        showOn: "both", 
	        buttonImage: "<%=request.getContextPath() %>/resources/client/images/ico_date.gif", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	 
	 
	 
	 $("#endDate").datepicker({
	        showOn: "both", 
	        buttonImage: "<%=request.getContextPath() %>/resources/client/images/ico_date.gif", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	});
 
	function search() {
		document.frm.action ="searchSound";
		document.frm.submit();
	}
	
	
	
 </script>




<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리"
				style="margin-left: 80px;" />
			</a>
		</h1>
		<div class="Quick_M">
			<ul class="Quick_Menu">
				<li class="icon01"><a href="#">FAQ</a></li>
				<li class="icon02"><a href="clientSound">고객의소리</a></li>
				<li class="icon03"><a href="#">개선사항</a></li>
				<li class="icon04"><a href="<%=request.getContextPath() %>/client/myPage">마이페이지</a></li>
			</ul>
		</div>
	</div>

	<div class="sectionArea" style="height: 1080px;">

		<div id="snb">
			<h2>
				무엇이<br>궁금하십니까?
			</h2>
			<ul>
				<li><a href="">마이페이지</a></li>
			</ul>

			<div class="subtelBox">
				<p class="tel">
					<span>전화</span><strong>1644 - 8000</strong>
				</p>
				<p class="tel_txt">
					09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외
				</p>
				<p class="tel_txt">문자상담은 40자 이내</p>
			</div>
		</div>
<div class="content">
					<h3 class="nonBg">마이페이지</h3>	
					<div class="mypage_box">			
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_01.gif" alt="대기" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="WAIT_DIV"><a href="javascript:search('W')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_01.gif" alt="대기" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_01.gif" alt="대기" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_02.gif" alt="분배" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="DIS_DIV"><a href="javascript:search('D')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_02.gif" alt="분배" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_02.gif" alt="분배" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_03.gif" alt="접수확인" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="ACP_DIV"><a href="javascript:search('A')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_03.gif" alt="접수확인" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_03.gif" alt="접수확인" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_04.gif" alt="처리완료" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="EXC_DIV"><a href="javascript:search('E')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_04.gif" alt="처리완료" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_04.gif" alt="처리완료" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
						<div class="info">
							<img src="<%=request.getContextPath()%>/resources/client/images/box_line.gif" alt="" align="absmiddle">
						</div>		
						<div class="info">
							<table class="mypage" style="width: 0px; ">
								<tbody><tr>
									<td height="74">
										<img src="<%=request.getContextPath()%>/resources/client/images/icon_05.gif" alt="만족도평가완료" align="absmiddle">
									</td>
								</tr>
								<tr>
									<td height="20">
										<div id="SATI_DIV"><a href="javascript:search('S')"><img src="<%=request.getContextPath()%>/resources/client/images/txt_05.gif" alt="만족도평가완료" align="absmiddle"> <img src="<%=request.getContextPath()%>/resources/client/images/txt_case.gif" alt="건" align="absmiddle"></a></div>
									</td>
								</tr>
								<tr>
									<td height="30">
										<img src="<%=request.getContextPath()%>/resources/client/images/info_05.gif" alt="만족도평가완료" align="absmiddle">
									</td>
								</tr>
							</tbody></table>
						</div>
					</div>
					<div class="contentSearchForm">						
						<span style="margin-right: 5px;">
							<input type="text" readonly="" name="startDate" id="startDate" maxlength="" value="" style="width: 70px;">
							<a class="date" href="javascript:showcld(1, FNAME.startDate);">
							</a>
						</span>
						 ~
						<span style="margin: 0 10px 0 0;">
							<input type="text" readonly="" name="endDate" id="endDate" maxlength="" value="" style="width: 70px;">
							<a class="date" href="javascript:showcld(2, FNAME.endDate);">
							</a>
						</span>	
						<a class="searchbtn" href="javascript:reqMypList();">검색</a>
					</div>					
					<table class="list2">
						<tbody><tr>
							<td>
								<div id="LIST_DIV"><table id="LIST_TB" width="100%" class="table01" cellspacing="1" style="table-layout: fixed;"><tbody><tr><th class="colresize" style="" width="30"><span onclick="">번호<span id="LIST_TH_SPAN_ID1"></span></span></th><th class="colresize" style="" width="110"><span onclick=""> 접수번호<span id="LIST_TH_SPAN_ID2"></span></span></th><th class="colresize" style="cursor: col-resize;" width="110"><span onclick=""> 분류<span id="LIST_TH_SPAN_ID3"></span></span></th><th class="colresize" style="" width=""><span onclick=""> 제목<span id="LIST_TH_SPAN_ID4"></span></span></th><th class="colresize" style="" width="60"><span onclick=""> 등록일<span id="LIST_TH_SPAN_ID5"></span></span></th><th class="colresize" style="" width="70"><span onclick=""> 답변일<span id="LIST_TH_SPAN_ID6"></span></span></th><th class="colresize" style="" width="70"><span onclick=""> 처리부서<span id="LIST_TH_SPAN_ID7"></span></span></th><th class="colresize" style="" width="70"><span onclick=""> 처리상태<span id="LIST_TH_SPAN_ID8"></span></span></th></tr><tr><td colspan="8" align="center"><font color="gray">조회된 결과가 없습니다.</font></td></tr></tbody></table></div>
							</td>
						</tr>
					</tbody></table>
					<table style="width: 100%; ">
						<tbody><tr>
							<td>
								<div id="LIST_PAGE_DIV">	<table width="100%" align="center" style="background-color:white"><tbody><tr><td>&nbsp;</td></tr></tbody></table></div>
							</td>
						</tr>
					</tbody></table>				
				</div>
	</div>
</div>