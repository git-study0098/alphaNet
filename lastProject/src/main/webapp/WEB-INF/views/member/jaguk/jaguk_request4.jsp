<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
	String id = user.getUsername();
%>

<script>
 
 //제이쿼리
 $(function(){
	 
	 <%-- 우편번호 --%>
	 var zip01          = document.getElementById("zip01");        
	 <%-- 주소_1 --%>
	 var addr01         = document.getElementById("addr01");       
	 <%-- 주소_2 --%>
	 var resdTownBldNm  = document.getElementById("resdTownBldNm");
	 <%-- 나머지 주소  --%>
	 var addr02         = document.getElementById("addr02");
	 
	 <%-- 우편번호 --%>
	 var zip01_1          = document.getElementById("zip01_1");        
	 <%-- 주소_1 --%>
	 var dlvrPlcAddr         = document.getElementById("dlvrPlcAddr");       
	 <%-- 주소_2 --%>
	 var dlvrPlcAddrTownBldNm  = document.getElementById("dlvrPlcAddrTownBldNm");
	 <%-- 나머지 주소  --%>
	 var dlvrPlcAddrDtl         = document.getElementById("dlvrPlcAddrDtl");
	 
	 $("#dlvrSet1").change(function(){
		
		 if($("#dlvrSet1").is(":checked")){
			 zip01_1.value = zip01.value;
			 dlvrPlcAddr.value = addr01.value;
			 dlvrPlcAddrTownBldNm.value = resdTownBldNm.value;
			 dlvrPlcAddrDtl.value = addr02.value;
		 }else{
			 zip01_1.value = "";
			 dlvrPlcAddr.value = "";
			 dlvrPlcAddrTownBldNm.value = "";
			 dlvrPlcAddrDtl.value = "";
		 }
	 })
 })
 
 
 
 function go_juso() {
	var pop = window.open("<%=request.getContextPath()%>/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
 
 
 function jusoCallBack(roadAddrPart1,addrDetail,roadAddrPart2,zipNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.frm.addr01.value = roadAddrPart1;
		document.frm.resdTownBldNm.value = roadAddrPart2;
		document.frm.addr02.value = addrDetail;
		document.frm.zip01.value = zipNo;
}
 
 function setWorkArea(chk2){
 	//근무처 있음
 	if(chk2 == '1'){
 		document.all.workarea.style.display = "";
 	}
 	//근무처 없음
 	if(chk2 == '0'){
 		document.all.workarea.style.display = "none";
 		document.all.wrkAr.value = "";
 		document.all.MOD_DATE_1.value = "";
 		document.all.compTel.value = "";
 		document.all.wrkArZip_1.value = "";
 		
 		document.all.wrkArAddr.value = "";
 		document.all.workAreaAddrTownBldNm.value = "";
 		document.all.wrkArAddrDtl.value = "";
 	}
 }

 function goRequest6(){
	 location.href="<%=request.getContextPath()%>/member/request6?mem_code=${mem_code}&choice=${choice}&dlvrHhCautionMatt="+$('#dlvrHhCautionMatt').val();
 }
</script>

<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/jagukLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청</h3>
				<div class="step">
					<ul class="list06">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_01.gif"
							alt=""><span>자격증선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_02.gif"
							alt=""><span>선택확인</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_on_03.gif"
							alt=""><span>신청서작성</span><span class="blind">선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_04.gif"
							alt=""><span>본인인증</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_06.gif"
							alt=""><span>수수료결제</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_05.gif"
							alt=""><span>접수증출력</span></li>
					</ul>
				</div>

				<form name="frm" method="post" onsubmit="return false" action="" >

<input type="hidden" name="mem_nm" value="${mem_nm }">
<input type="hidden" name="reg_num1" value="${reg_num1} ">
<input type="hidden" name = "mem_code" value="${mem_code}"/>
<input type="hidden" name = "choice" value="${choice}"/>
<input type="hidden" name = "qualifi_certi_iss_pr" value="${price}"/>
<input type="hidden" name = "qualifi_certi_code" value="${qualifi_certi_code}"/>


					<div class="tbl_normal isr_app">
						<p class="txt_right mb10">
							<strong>( <span class="fc_r" title="필수">*</span> ) 필수 입력사항입니다.</strong>
						</p>
						<input type="hidden" name = "mem_code" value="${mem_code}"/>
						<table summary="자격증 발급 신청서 작성으로 ,성명(한글), 성명(영문), 주민번호, 인증방법, 전화번호(자택/직장/휴대전화), 주민등록 주소, 배송지 주소, 학력사항, 현 근무지, 현근무 소재지 정보 입력" class="table table-bordered">
							<colgroup>
								<col width="160px">
								<col width="168px">
								<col width="150px">
								<col width="128px">
								<col width="131px">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">성명(한글)</th>									
									<!-- 가져와서 -->
									<td colspan="2">${viewData.mem_nm } </td>
									<td colspan="2" rowspan="6" class="photo">
										<div class="license">
											<em>자격증발급용 사진</em>
											<p>
											<!-- 가져와서 -->
												<img id="viewImg" alt="자격증발급용 사진"	src="<%=request.getContextPath()%>/${viewData.mem_photo}">
											</p>
											<button title="사진등록" style="width: 100px; height: 30px;background-color:#3274c2" name="hiddenFrame"><span style="color: #fff">사진등록</span></button>
										</div>
										<div class="lately">
											<em>최근 사진</em>
											<p>
											<!-- 가져와서 -->
												<img id="viewImg" src="<%=request.getContextPath()%>/resources/images/step/sora.jpg" alt="황병준 최근 사진" width="55" height="73">
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="engNm">성명(영문)</label></th>
									<td colspan="2">
									<!-- 가져와서 -->
										<input type="text" title="성명(영문)입력" id="engNm" name="engNm" style="width: 100px;" value="${viewData.mem_enname } " maxlength="30"> 
										<span class="txt_add">(여권과 동일하게 입력하세요.)</span></td>
								</tr>
								<tr>
									<th scope="row">주민번호</th>
									<!-- 가져와서 -->
									<td colspan="2">${viewData.reg_num1}-*******</td>
								</tr>
								<tr>
									<th scope="row">인증방법</th>
									<td colspan="2"></td>
								</tr>
								<tr>
									<th scope="row">
										<label for="abdTel">전화번호</label>
										<strong	class="fc_r" title="필수">*</strong>
									</th>
									<td colspan="2">
										<input type="text" id="abdTel" class="numInput2" title="전화번호 입력" name="abdTel" style="width: 100px ;" maxlength="13" value="${viewData.mem_phone}">
										<span class="txt_add">(예 : 02-111-1111)</span>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="mphoneNo">휴대전화</label> 
										<strong class="fc_r" title="필수">*</strong>
									</th>
									<td colspan="2">
									<!-- 가져와서 -->
										<input type="text" id="mphoneNo" class="numInput2" name="mphoneNo" title="휴대전화번호 입력" style="width: 100px ;" value="${viewData.mem_phone}" maxlength="13">
										<span class="txt_add">(예 : 010-1111-1111)</span>
									</td>
								</tr>
								<tr id="viewZip">
									<th scope="row">주민등록주소<strong class="fc_r" title="필수">*</strong></th>

									<td colspan="4" class="intbl_div">
										<div>
											<span class="txt_addr">
												<label for="zip01">우편번호 입력</label>
											</span>
																					
											<input type="text" class="form_short numInput" title="우편번호" id="zip01" name="zip01" readonly="readonly" maxlength="5" value="${viewData.mem_post_numb1}"> 
											
											<span id="selfSpanNo1">												
												<button type="button" class="btn3_type1" name="addrPop"	title="주소검색 새창" id="01" onclick="go_juso()">
													<span>주소검색</span>
												</button>
											</span> 
											
											<span id="selfSpanOk1" style="display: none">
												<button type="button" class="btn3_type2" title="주소입력취소" onclick="selfAddrFn1('NO');">
													<span>주소 직접입력 취소</span>
												</button>
											</span> 
											
											<strong class="info_tool"
												title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. "
												tabindex="0">주소입력방법 안내</strong>
										</div>
										<div>
											<span class="txt_addr"><label for="addr01">주소</label></span>
											<!-- 가져와서 -->
											<input type="text" style="width: 300px;margin-top: 5px" id="addr01"
												name="addr01" class="member_addr1" readonly="readonly" title="주소입력" value="${viewData.mem_add1}"> 
											<input type="text" style="width: 135px; margin-top: 5px" id="resdTownBldNm"
												name="resdTownBldNm" value="${viewData.mem_add2}" class="member_addr2" title="주소 입력" readonly="readonly">
										</div>
										<div>
											<span class="txt_addr"><label for="addr02">나머지 주소 입력</label></span> 
											<input type="text" id="addr02" name="addr02"
												class="member_addr3" title="나머지 주소입력" style="width: 440px; margin-top: 5px"maxlength="100" value="${viewData.mem_add3}"> 
											<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
										</div>
									</td>

								</tr>


								<tr id="postRecpt">
									<th scope="row">배송지 주소 <strong class="fc_r" title="필수">*</strong></th>
									<td colspan="4" class="intbl_div">
										<div>
											<span class="txt_addr">
												<label for="zip01_1">우편번호	입력</label>
											</span>
											 
											<input type="text" class="form_short numInput" title="우편번호" id="zip01_1" name="zip01_1" readonly="readonly"
												maxlength="5" value="" onkeyup="nextFocus('frm', 'zip01_1', 'dlvrPlcAddr');">
											<span id="selfSpanNo2">
												<button type="button" class="btn3_type1" name="addrPop" id="02" title="주소 검색">
													<span>주소검색</span>
												</button> 
											<input type="checkbox" id="dlvrSet1"  name="dlvrSet1"  title="(배송지 주소)상동"	value="" > 
											<label for="dlvrSet1">상동</label>											
											</span> 
											
											<span id="selfSpanOk2" style="display: none">
												<button type="button" class="btn3_type2" onclick="selfAddrFn2('NO');" title="주소 직접입력 취소">
													<span>주소 직접입력 취소</span>
												</button>
											</span> <input type="hidden" id="dlvrDirectInptCcd"	name="dlvrDirectInptCcd" value="N">
										</div>

										<div>
											<span class="txt_addr"><label for="dlvrPlcAddr">주소</label></span>
											<input type="text" id="dlvrPlcAddr" name="dlvrPlcAddr"
												value="" class="member_addr1" title="주소입력"
												readonly="readonly" style="margin-top: 5px;"> <input
												type="text" id="dlvrPlcAddrTownBldNm"
												style="width: 217px; margin-top: 4px;" value=""
												name="dlvrPlcAddrTownBldNm" class="member_addr2"
												title="주소 입력" readonly="readonly">
										</div>
										<div>
											<span class="txt_addr"><label for="dlvrPlcAddrDtl">나머지
													주소 입력</label></span> <input type="text" id="dlvrPlcAddrDtl"
												style="width: 429px; margin-top: 5px" value=""
												name="dlvrPlcAddrDtl" class="member_addr3" title="나머지 주소입력"
												maxlength="90"> <input type="hidden"
												name="gibunResdAddr" id="gibunResdAddr">
										</div>
										<div>
											<span class="txt_addr"><label for="dlvrHhCautionMatt">배송
													시 유의사항</label></span> <input type="text" name="dlvrHhCautionMatt" id="dlvrHhCautionMatt"
												title="배송시 유의사항" style="width: 430px; margin-top: 5px"
												placeholder="예) 부재시 옆집에 맡겨 주십시오." onclick="setDhcm();" value=""
												maxlength="100">
											<p>※ 신청인과 수령인이 다를 경우 수령인 성명 반드시 기재</p>
										</div>
										<div style="width: 570px;">
											<span class="txt_addr"><label for="dlvrPlcTel">휴대전화</label></span>
											<input type="text" id="dlvrPlcTel" name="dlvrPlcTel"
												class="member_addr3 numInput2" style="width: 105px;"
												value="" title="휴대전화" maxlength="13"> <span
												class="txt_add">(예 : 010-1111-1111) [※ 배송시 문자 메시지
												전송/핸드폰 번호 기재]</span>
										</div>
									</td>
								</tr>
								<!-- 배송수령끝-->

								<tr>
									<th scope="row"><label for="lastEuhistCcd">학력사항 <strong
											class="fc_r" title="필수">*</strong></label></th>
									<td colspan="4"><span class="mr10"> <select
											name="lastEuhistCcd" id="lastEuhistCcd" title="학력사항 입력"
											style="width: 220px;">
												<option value="">-- 선택 --</option>
												<option value="1">대학원이상</option>
												<option value="2">4년제대학</option>
												<option value="3">2년제대학</option>
												<option value="4">기능대학</option>
												<option value="5">고등학교</option>
												<option value="6">직업전문학교</option>
												<option value="7">중졸</option>
												<option value="8">기타</option>
										</select>

									</span> <span> <label for="major">전공학과</label> <input
											type="text" id="major" name="major" title="전공학과 입력"
											style="width: 250px ;" value="" maxlength="40">
									</span></td>
								</tr>
								<tr>
									<th scope="row">현 근무처 <strong class="fc_r" title="필수">*</strong></th>
									<td colspan="4"><span> 
										<input type="radio"	id="jobY" name="workAreaInputYn" onclick="setWorkArea('1');" checked="" value="Y"> 
										<label for="jobY" class="mr10">있음</label>
										<input type="radio" id="jobN" name="workAreaInputYn" onclick="setWorkArea('0');" value="N"> 
										<label for="jobN">없음</label>
									</span></td>
								</tr>
								<tr id="workarea">
									<th scope="row">현근무 소재지<strong class="fc_r" title="필수">*</strong></th>
									<td colspan="4" class="intbl_div">
										<div>
											<span class="mr20"> <span class="txt_addr"><label
													for="wrkAr">근무처명</label></span> <input type="text" id="wrkAr"
												title="근무처명 입력" name="wrkAr" value="" maxlength="100"
												style="width: 97px; ">
											</span> <span><label for="MOD_DATE_1">입사일</label></span> <span
												class="calendar"> <input type="text"
												title="입사일 입력(예:20140204 )" style="width: 83px; "
												id="MOD_DATE_1" class="redaTxt dateMask hasDatepicker"
												value="" maxlength="8" name="MOD_DATE_1">
												<button type="button">
													<input type="image" id="datepicker" src="<%=request.getContextPath()%>/resources/images/common/btn_calendar_bg.png">
												</button> <span class="txt_add">(예 : 20140204)</span>
											</span>
										</div>
										<div>
											<span class="txt_addr"><label for="compTel">전화번호</label></span>
											<input type="text" id="compTel" name="compTel"
												title="전화번호 입력" style="width: 97px; margin-top: 5px" value="" maxlength="13"
												class="numInput2"> <span class="txt_add">(예 :
												010-1111-1111)</span>
										</div>
										<div>
											<span class="txt_addr"><label for="wrkArAddrDtl">나머지
													주소 입력</label></span> <input type="text" id="wrkArAddrDtl" value=""
												name="wrkArAddrDtl" style="width: 429px; margin-top:5px " title="나머지 주소입력"
												class="member_addr3" maxlength="100"> <input
												type="hidden" name="gibunResdAddr" id="gibunResdAddr">
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div id="bd01_02">
						<div class="tbl_type1 mb5">
							<table
								summary="자격내역으로, 자격증 번호, 종목명(취득시 종목명), 필기 합격일자, 최종 합격일자, 자격과 경력 관련여부, 발급 수수료, 자격취득 명세 선택 정보 제공"
								style="table-layout: fixed">
								<colgroup>
									<col width="16%">
									<col width="16%">
									<col width="15%">
									<col width="15%">
									<col width="5%">
									<col width="10%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">자격증<br>번호</th>
										<th scope="col">종목명<br>(취득시 종목명)</th>
										<th scope="col">필기<br>합격일자</th>
										<th scope="col">최종<br>합격일자</th>
										<th scope="col">비고</th>
										<th scope="col">발급<br>수수료</th>
										<th scope="col">기타 자격취득<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사항
											기재<strong class="info_tool"
											title="국가기술자격증 제3면 '자격증 취득 내용'란에 기재될 내용을 선택합니다." tabindex="0"></strong></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${viewData2}" var="qualifi">
										<tr> 
											<td>${qualifi.qualifi_certi_code }</td>
											<td>${qualifi.exkind_nm }</td>
											<td>${qualifi.written_pass_date }</td>
											<td>${qualifi.actual_pass_date }</td>
											<td>${qualifi.qualifi_certi_count }</td>
											<td>${qualifi.qualifi_certi_iss_pr}</td>
											<td></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<input type="hidden" name="totFee" value="3100">
						</div>
					</div>
					<p class="impt ml20 mb10">
						※ 선택한 자격내역은 위와 같습니다. 자격별로 경력과 관한 여부를 선택해 주십시오.<br> 자격별 관련
						여부는 현근무지외에 이전 경력도 해당됩니다.
					</p>

					<input type="hidden" name="applNo" value=""> <input
						type="hidden" name="appGb" value="P"> <input type="hidden"
						name="rcptMthdCd"> <input type="hidden" name="vstRcpt">
					<input type="hidden" name="certMeth" value=""> <input
						type="hidden" name="brchTrthNm" value=""> <input
						type="hidden" name="brchNm" value=""> <input type="hidden"
						name="issuPrargDt" value=""> <input type="hidden"
						name="issuApplDttm" value=""> <input type="hidden"
						name="issuApplDt" value=""> <input type="hidden"
						name="resdNo" value="9204121284511"> <input type="hidden"
						name="hgulNm" value="황병준"> <input type="hidden"
						name="recptMethCcd" value=""> <input type="hidden"
						name="wrkArInptYn"> <input type="hidden"
						name="inetCertMethccd" id="inetCertMethccd" value=""> <input
						type="hidden" name="visitRecptSefGbCcd"> <input
						name="UploadFileCheck" id="UploadFileCheck" type="hidden"
						value="Y"> <input name="strUploadFileName" type="hidden"
						value="20170706141119_04960"> <input name="issuPicNm"
						type="hidden" value=""> <input name="cmparPicNm"
						type="hidden" value="13008898"> <input name="crerModifyYn"
						type="hidden"> <input name="euhistModifyYn" type="hidden">
					<input name="hmCrEuModifyYn" type="hidden"> <input
						name="lastEuhistCcdOld" type="hidden" value=""> <input
						name="lastSchlNmOld" type="hidden" value=""> <input
						name="setlStat" type="hidden" value=""> <input
						name="setlYn" type="hidden" value=""> <input
						name="lcsApplNo" type="hidden" value=""> <input
						name="rsSize" type="hidden" value="0"> <input
						name="modiYn" type="hidden" value=""> <input name="chk"
						type="hidden"> <input name="infrmCnt" type="hidden"
						value="1"> <input type="hidden" name="phtPath"
						value="PL2016392005/2/13008898"> <input type="hidden"
						name="phtPath2" value="receipt/PL2016392005/2/13008898"> <input
						type="hidden" name="preQualGiveGbCcd" value=""> <input
						type="hidden" name="planId" value="PL2016392005"> <input
						type="hidden" name="seqNo" value="2"> <input type="hidden"
						name="suNo" value="13008898"> <input type="hidden"
						name="issuPrgsStatCcd" value="">
				</form>

				<form name="CancelProcessForm" method="post" onsubmit="return false"
					action="isr003.do?id=isr00302s01&amp;gSite=Q&amp;gId=">
					<input type="hidden" name="repreApplNo" value=""> <input
						type="hidden" name="refundType" value=""> <input
						type="hidden" name="refundRate" value=""> <input
						type="hidden" name="payType" value=""> <input
						type="hidden" name="stat_type" value="2">
						
						
				</form>
				<div class="tbl_type1 charge_tbl">
					<table summary="자격증 발급 신청 결제 금액 안내로, 발급수수료, 배송비, 결제 금액 정보 제공"
						style="table-layout: fixed">
						<caption>자격증 발급 신청-결제 금액안내</caption>
						<colgroup>
							<col width="80px">
							<col width="140px">
							<col width="50px">
							<col width="140px">
							<col width="170px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="charge_01">발급수수료</label></th>
								<td class="bootstrap_delete">
									<input type="text" id="charge_01" class="txt_right fc_6" title="발급 수수료 금액" style="width: 90px" value="${price}" readonly="readonly">원
								</td>
								<th scope="row"><label for="charge_02">배송비</label></th>
								<td class="bootstrap_delete"> 
									<input type="text" id="charge_02" class="txt_right fc_6" title="배송비 금액" style="width: 90px" value="2,340" readonly="readonly">원
								</td>
								<th scope="row"><p class="txt_right"><label for="charge_03"><strong>결제 금액</strong></label></p></th>
								<td class="bootstrap_delete">
									<input type="text" id="charge_03" class="txt_right fc_6" title="결제 금액" style="width: 90px" value="${price+2340}" readonly="readonly">원
								</td>
							</tr>
						</tbody>
					</table>
					<span>
						<p>
							※ <span class="fc_b">주민등록주소는</span> 자격증에 출력되는 주소입니다. 입력한 주소를 다시
							한번 확인하십시오.
						</p></span>
				</div>
				
<!-- 				<div class="btn_center"> -->

<!-- 					<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button> -->
<!-- 					<button type="button" class="btn2 btncolor2" onclick="popup1();"><span>기본인증</span></button> -->

<!-- 				</div>		 -->
<!-- 				<div class="btn_center mb40"> -->
<!-- 					<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button> -->
<!-- 						<a class="btn2 btncolor1"> -->
<!-- 							<span><input type="submit" value="기본인증" class="btn2 btncolor1" style="border: 0 solid; color:white"></span> -->
<!-- 						</a> -->
<!-- 					</div> -->
					<script>
						function go_request5(){ 
							//유효성완료
							var ph =document.getElementById("abdTel").value; //전화번호
							var ph2 =document.getElementById("mphoneNo").value; //핸드폰번호
							var add1 =document.getElementById("zip01").value; //실제주소우편번호
							var add2 =document.getElementById("addr01").value; //실제주소주소 
							var goAdd =document.getElementById("zip01_1").value; //배송우편번호
							var goAdd2 =document.getElementById("dlvrPlcAddr").value; //배송주소
							var studyCre =document.getElementById("lastEuhistCcd").value; //학력
							var studyCol =document.getElementById("major").value; //학과
							var jobY = $("input[type=radio][name=workAreaInputYn]:checked").val();
							var jobNm =document.getElementById("wrkAr").value; //현근무처명
							var jobDate =document.getElementById("MOD_DATE_1").value; //근무입사일
							var jobPh =document.getElementById("compTel").value; //근무전화번호
// 							var jobadd =document.getElementById("wrkArZip_1").value; //근무처우편번호
							
							alert(jobY);
							
							
							if(ph==""){
								alert("전화번호를 입력해주세요")
							}else if(ph2 ==""){
								alert("핸드폰번호를 입력해주세요")
							
							}else if(add1 =="" && add2 ==""){
								alert("실제주소를 등록해주세요")
							
							}else if(goAdd =="" && goAdd2 ==""){
								alert("배송지수조를 등록해주세요")
							
							}else if(studyCol =="" && studyCre==""){
								alert("학력과 학과를 선택/입력해주세요")
							}else if(jobY =='Y'){
								if(jobNm =="" ||jobDate==""||jobPh==""||jobadd=="" ){
									alert("근무처의 정보를 입력해주세요")
								}
							}else if(jobY == 'N'){
							window.open('<%=request.getContextPath()%>/member/request5?mem_code=${mem_code}&mem_nm=${viewData.mem_nm }&reg_num1=${viewData.reg_num1}','본인확인 인증','width=500px,height=250px,left=750px,top=350px'); 
								
							}
						}window.open('<%=request.getContextPath()%>/member/request5?mem_code=${mem_code}&mem_nm=${viewData.mem_nm }&reg_num1=${viewData.reg_num1}','본인확인 인증','width=500px,height=250px,left=750px,top=350px');								
						
						
					</script>

					<div class="btn_center mb40 ">
						<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button>
						<a class="btn2 btncolor1 " onclick="go_request5()">
							<span><input type="submit" value="발급신청" class="btn2 btncolor1" style="border: 0 solid; color:white"></span>
						</a>
					</div>

				</div>

			</div>
			<!--  컨텐츠 끝 -->
		</div>
</article>
