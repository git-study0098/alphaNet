<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	
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
						<p class="mt10"><a href="/inf/qlf04.hwp" class="btn3_icon download"><span>외국발급 자격 및 학력취득자의 응시자격서류 제출 방법 다운로드</span></a></p>
					</div>
					<span></span>
				</div>

				<div class="tbl_normal diagnosis_step3 mb5">
					<input type="hidden" class="ui-datepicker-trigger"><!-- 삭제/복원 제어용 -->

					<p class="txt_right mt20"><button type="button" class="btn3_type3" name="helpBtn"><span>자기진단 및 제출서류 도움말</span></button></p>

					<p class="tbl_tlt ok">서류 심사 완료</p>
					<table summary="학력정보입력 폼으로, 학력구분, 학교(기관)명, 학과/전공명, 학적상태, 수료/중퇴일자-재학/졸업일자, 기술훈련과정명, 직무분야 정보 입력">
						<caption>학력정보입력 폼</caption>
						<colgroup>
							<col width="16.2%">
							<col width="33.8%">
							<col width="16.2%">
							<col width="33.8%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">학력구분</th>
								<td colspan="3">4년제대학</td>
							</tr>
							<tr>
								<th scope="row">학교(기관)명</th>
								<td>우송대학교</td>
								<th scope="row">학과/전공 명</th>
								<td>컴퓨터정보학(과,부,전공)</td>
							</tr>
							<tr>
								<th scope="row">학적상태</th>
								<td>졸업</td>
								<th scope="row">수료/중퇴일자<br>재학/졸업일자</th>
								<td class="calendar">2016-08-26</td>
							</tr>
							<tr>
								<th scope="row">기술훈련과정명</th>
								<td></td>
								<th scope="row">직무분야</th>
								<td></td>
							</tr>
							<tr>
								<td colspan="4" class="guideLaw">
									<div class="float_box">
										<div class="left">
											<p>* 응시자격 서류심사 기준일은 <strong>“필기시험일”</strong>입니다.(국가기술자격법 시행규칙 제14조제3항)</p>
										</div>
										<div class="right">
											<button type="button" class="btn3_type2" name="insertSchInfo"><span>학력정보 추가</span></button>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
		
						<div id="divSchoolInfo"></div>
						<div class="btn_center">
		
							<button type="button" class="btn2 btncolor1" onclick="goSubmit('back')"><span>이전</span></button>
		
							<button type="button" class="btn2 btncolor1" onclick="location.href=<%=request.getContextPath()%>/member/"><span>경력정보입력</span></button>
							<button type="button" class="btn2 btncolor1" onclick="goSubmit('result02')"><span>진단결과보기</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
</article>