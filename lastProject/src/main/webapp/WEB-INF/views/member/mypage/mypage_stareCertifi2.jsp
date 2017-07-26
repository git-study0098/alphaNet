<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String mem_code = "";
	User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	mem_code =user.getUsername();
%>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 



<style>
	* {	box-sizing: content-box;}
</style>

<script>
	$(function(){
	 $("#startDate").datepicker({
	        showOn: "both", 
	        buttonImage: "<%=request.getContextPath()%>/resources/images/common/btn_calendar_bg.png", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	 
	 
	 $("#endDate").datepicker({
	        showOn: "both",
	        buttonImage: "<%=request.getContextPath()%>/resources/images/common/btn_calendar_bg.png", 
	        buttonImageOnly: true,
	        currentText: '오늘 날짜', 
	        closeText: '닫기', 
	        dateFormat: "yy-mm-dd"
	  });
	});
	

	function go_selfTest4(){
		var form1 = document.form1;
		var ind_code = $("#ind_code").val();

		form1.action = "<%=request.getContextPath() %>/member/carrerUpdate";
		form1.submit();
	}
</script>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>

					<li>마이페이지</li>
					<li>응시자격</li>
					<li><strong>응시자격 자가진단</strong></li>

				</ul>
			</div>
			<!-- //location -->
			<div class="popup" id="helpPopup"></div>
			<div class="content">
				<!-- 컨텐츠 타이틀 -->

				<h3 class="tit_content">응시자격 자가진단</h3>

				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep">

					<ul class="list02">
						<li><img
							src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img
							src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_02.gif" alt=""><span>학력정보입력</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_on_03.gif"
							alt=""><span>경력정보입력</span><span class="blind">선택</span></li>
						<li><img
							src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_05.gif" alt=""><span>진단결과</span></li>
					</ul>

				</div>

				<form name="form1" id="form1" method="post">
					<input type="hidden" name="mem_code" value="<%=mem_code%>" />
					<input type="hidden" name="p_jmCd" value="1040"> <input
						type="hidden" name="p_section" value="item"> <input
						type="hidden" name="p_grd_cd" value=""> <input
						type="hidden" name="p_jm_oblig_cd" value=""> <input
						type="hidden" name="examLangCcd" value=""> <input
						type="hidden" name="multiFamilyYnCcd" value=""> <input
						type="hidden" name="direction">
						<input type="hidden" name="status" value="Y">

					<div class="infoBox">
						<div>
							<p class="list">
								경력정보는 과거경력부터 입력해 주시기 바랍니다.<br> 본 응시자격 자가진단은 시험 접수 전 본인의
								응시자격 여부를 스스로 진단해 보는 것으로서, 실제 제출서류의 사실관계 등에 따라 결과가 달라질 수 있으므로 이 점
								유의하시기 바랍니다. <span class="fc_r">(응시가능/불가능 진단결과에 관계없이 시험
									접수는 가능)</span>
							</p>
						</div>
						<span></span>
					</div>

					<div class="tbl_normal diagnosis_step3 mb5" id="tblCrerInfo_1">
						<input type="hidden" name="perId" value=""> <input
							type="hidden" name="baseSeq" value=""> <input
							type="hidden" name="mode" value="new" id="mode_1"> <input
							type="hidden" name="p_chkSameJob" value="N"> <input
							type="hidden" name="p_chkSameClass" value="N">
						<p class="txt_right mt20">
						</p>
						<p class="tbl_tlt">서류 심사 전</p>
						<table
							summary="응시자격 자가진단 중 경력정보에 관한 산업분야, 업체명, 직무분야, 근무내용, 근무시작과 종료일, 근무기간 관한 정보 입력">
							<caption>응시자격 자가진단 중 경력정보 입력</caption>
							<colgroup>
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="industFldCcd_1">산업분야</label></th>
									<td><span id="codeIndustFldCcd_1"> 
										<select title="산업분야" name="ind_code" id="ind_code" style="width: 135px">
											<option value="0" selected="selected">산업분야</option>
											<option value="1">전기/전자</option>
											<option value="2">정보통신</option>
											<option value="3">학생</option>
										</select>
									</span><span id="nameIndustFldCcd_1" style="display: none"></span></td>
									<th scope="row"><label for="compNm_1"><span
											id="titlecompNm_1">업체명<br>(기관명)
										</span></label></th>
									<td colspan="3"><input type="text" name="compNm"
										id="compNm_1" style="width: 200px">
										<p>
											<strong>※ 한국건설기술인협회(기술사 응시자에 한함) 회원은 온라인 경력증명서 제출가능<br>입력예시)
												한국건설기술인협회
											</strong>
										</p></td>
								</tr>
								<tr>
									<th scope="row"><label for="txtCon_1"><span
											id="titleworkCts_1">근무내용</span></label></th>
									<td colspan="5"><textarea id="txtCon_1" name="workCts"
											cols="30" rows="10" title="근무내용">근무내용을 적어주세요</textarea></td>
								</tr>
								<tr>
									<th scope="row">
										<label for="workStartDt_1">
											<span id="titleworkStartDt_1">근무시작</span>
										</label>
									</th>
									<td>
										<span class="calendar" id="spanworkStartDt_1">
											<input type="text" name="workStartDt" id="startDate" maxlength="8" value=""> 										
											</span>
									</td>
									
									<th scope="row"><label for="workEndDt_1"><span id="titleworkEndDt_1">근무종료</span></label></th>
									<td class="calendar"> <input type="text" name="workEndDt" id="endDate" maxlength="8" value=""></td>
									<th scope="row"><span id="titleworkTerm_1">근무기간</span></th>
									<td><span id="addCont_1"></span></td>
								</tr>
								<tr>
									<td colspan="6" class="guideLaw">
										<div class="float_box">
											<div class="left">
												<p>
													* 응시자격 서류심사 기준일은 <strong>“필기시험일”</strong>입니다.(국가기술자격법 시행규칙
													제14조제3항)
												</p>
											</div>
											<div class="right">
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div id="divCrerInfo"></div>
					<div class="btn_center">
						<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button>
						<button type="button" class="btn2 btncolor1" onclick="javascript:go_selfTest4()"><span>진단결과보기</span></button>
					</div>
					<!-- //컨텐츠 내용 -->
				</form>
			</div>
		</div>
	</div>
</article>