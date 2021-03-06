<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String mem_code = user.getUsername();
%>
<style>
* {
	box-sizing: content-box;
}

	table td{text-align:center;}
</style>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
<jsp:include page="../../lnb/mypageLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
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

			<div class="popup" id="popup_view"></div>
			<div class="content">

			<form id="form1">
			<input type="hidden" name="p_jmCd" value="1320">
			<input type="hidden" name="p_grd_cd" value="">
			<input type="hidden" name="p_jm_oblig_cd" value="">
			<input type="hidden" name="p_section" value="item">
			<input type="hidden" name="direction">
			<input type="hidden" name="jmNm" value="정보처리기사">

			
			<input type="hidden" name="examLangCcd" value="">
			<input type="hidden" name="multiFamilyYnCcd" value="">

			<input type="hidden" name="status" value="Y">

				<h3 class="tit_content">응시자격 자가진단</h3>

				<!-- step -->
				<div class="step" id="rcvStep">

					<ul class="list02">
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_on_02.gif" alt=""><span>학력정보입력</span><span class="blind">선택</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_03.gif" alt=""><span>경력정보입력</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_05.gif" alt=""><span>진단결과</span></li>
					</ul>
				</div>
				<div class="infoBox">
					<div>
						<p class="list">
							학력정보는 고등학교이후 학력부터 입력해 주세요. <br>
							본 응시자격 자가진단은 시험 접수 전 본인의 응시자격 여부를 스스로 진단해 보는 것으로서, 실제 제출서류의 사실관계 등에 따라 결과가 달라질 수 있으므로 이 점 유의하시기 바랍니다. <span class="fc_r">(응시가능/불가능 진단결과에 관계없이 시험 접수는 가능)</span>
						</p>
						<ul class="list mt10">
							<li>국가기술자격 취득자는 응시자격 자가진단시 자동으로 반영됩니다.</li>
							<li>대학원 이상은 반드시 대학교 정보를 수료상태하신 후 다음 화면의 경력사항에 연구내용과 경력기간을 입력하세요.</li>
							<li>학력정보에 변동이 있는 수험자는 "학력정보 추가"를 클릭하여 반드시 최종학력을 추가 입력하시기 바랍니다. </li>
							<li>외국학력취득자의 경우 응시자격 서류제출은 수험자 본인이 우리 공단 지역본부 또는 지사에 외국학력(경력)서류 제출연기 신청서를 내시면(응시자격 서류심사기간까지 사전신청) 최종합격자 발표일 7일전까지로 제출기한을 연기할 수 있으니 참고하시기 바랍니다.</li>
						</ul>
					</div>
					<span></span>
				</div>

				<div class="tbl_normal diagnosis_step3 mb5">
					<input type="hidden" class="ui-datepicker-trigger"><!-- 삭제/복원 제어용 -->


					<p class="tbl_tlt ok">서류 심사 완료</p>
					<table summary="학력정보입력 폼으로, 학력구분, 학교(기관)명, 학과/전공명, 학적상태, 수료/중퇴일자-재학/졸업일자, 기술훈련과정명, 직무분야 정보 입력">
						<caption>학력정보입력 폼</caption>
						<colgroup>
							<col width="21.2%">
							<col width="21.9%">
							<col width="16.9%">
							<col width="16.2%">
							<col width="23.8%">
						</colgroup>
						
						<tbody>
						
						<c:choose>
							<c:when test="${not empty selectSchoolCerti }">
							<c:forEach items="${selectSchoolCerti}" var="stare">
								<tr>
									<th scope="row">학교(기관)명</th>
									<th scope="row">학과/전공 명</th>
									<th scope="row">대학/대학교 구분</th>
									<th scope="row">학력구분</th>
									<th scope="row">최종학력</th>
								</tr>
								
								<tr>
									<td>${stare.sch_code_nm}</td>
									<td>${stare.sch_major_code}</td>
									<td>${stare.sch_final }</td>
									<td>${stare.sch_major_nm}</td>
									<td>${stare.sch_coll}</td>
								</tr>
								</c:forEach>
								</c:when>
							<c:otherwise>
							<tr>
								<td class="noData">나의 접수 내역이 없습니다.</td>
							</tr>
							</c:otherwise>
						</c:choose>
							
							<tr>
								<td colspan="5" class="guideLaw">
									<div class="float_box">
										<div class="left">
											<p>* 응시자격 서류심사 기준일은 <strong>“필기시험일”</strong>입니다.(국가기술자격법 시행규칙 제14조제3항)</p>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
		
						<div id="divSchoolInfo"></div>
						<div class="btn_center">
		
							<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button>
							<button type="button" class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath()%>/member/selfTest3?mem_code=<%=mem_code%>'"><span>경력정보입력</span></button>
							<button type="button" class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath() %>/member/selfTest4?mem_code=<%=mem_code%>'"><span>진단결과보기</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
</article>