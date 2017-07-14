<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
<div>
		<jsp:include page="jagukLnb.jsp" />
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

				<form name="frm" method="post" onsubmit="return false">
					<input type="hidden" name="certTrnsNo" value="">
					<!-- 인증거래번호 -->
					<input type="hidden" name="certResdNo" value="">
					<!-- 주민번호-->
					<input type="hidden" name="certHgulNm" value="">
					<!-- 성명-->
					<input type="hidden" name="certGoodsNm" value="">
					<!-- 상품명-->
					<input type="hidden" name="certgoodsAmt" value="">
					<!-- 상품금액-->
					<input type="hidden" name="certSplyTrnsNo" value="">
					<!-- 공급자거래번호-->
					<input type="hidden" name="certMphoneCertRsltCcd" value="">
					<!-- 휴대폰인증결과[c코드]-->
					<input type="hidden" name="certCertDttm" value="">
					<!-- 인증일시-->
					<input type="hidden" name="certMphoneId" value="">
					<!-- 휴대폰식별자-->
					<input type="hidden" name="certmPhoneCompCcd" value="">
					<!-- 이동통신사[c코드]-->
					<input type="hidden" name="certCertSvcId" value="">
					<!-- 인증서비스아이디-->

					<input type="hidden" id="PIC_USE_POSBT_YN" name="PIC_USE_POSBT_YN">
					<input type="hidden" id="PIC_USE_POSBT_MSG"
						name="PIC_USE_POSBT_MSG"> <input type="hidden"
						id="ACCU_RATE" name="ACCU_RATE"> <input type="hidden"
						name="dhcmYn" value="">
					<div class="tbl_normal isr_app">
						<p class="txt_right mb10">
							<strong>( <span class="fc_r" title="필수">*</span> ) 필수
								입력사항입니다.
							</strong>
						</p>
						<table
							summary="자격증 발급 신청서 작성으로 ,성명(한글), 성명(영문), 주민번호, 인증방법, 전화번호(자택/직장/휴대전화), 주민등록 주소, 배송지 주소, 학력사항, 현 근무지, 현근무 소재지 정보 입력" class="table table-bordered">
							<colgroup>
								<col width="160px">
								<!-- th-->
								<col width="168px">
								<!-- td -->
								<col width="150px">
								<!-- th -->
								<col width="128px">
								<!-- td -->
								<col width="131px">
								<!-- photo -->
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">성명(한글)</th>
									<td colspan="2">황병준</td>
									<td colspan="2" rowspan="6" class="photo">
										<div class="license">
											<em>자격증발급용 사진</em>
											<p>
												<img id="viewImg" alt="황병준 자격증발급용 사진"
													src="<%=request.getContextPath()%>/resources/images/step/sora.jpg"/>
											</p>
											<button title="사진등록" style="width: 100px; height: 30px;background-color:#3274c2"
												name="hiddenFrame"><span style="color: #fff">사진등록</span></button>
										</div>
										<div class="lately">
											<em>최근 사진</em>
											<p>

												<img id="viewImg"
													src="<%=request.getContextPath()%>/resources/images/step/sora.jpg"
													alt="황병준 최근 사진" width="55" height="73">

											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="engNm">성명(영문)</label></th>
									<td colspan="2"><input type="text" title="성명(영문)입력"
										id="engNm" name="engNm" style="width: 100px; "
										value="hwang byeong jun" maxlength="30"> <span
										class="txt_add">(여권과 동일하게 입력하세요.)</span></td>
								</tr>
								<tr>
									<th scope="row">주민번호</th>
									<td colspan="2">920412-*******</td>
								</tr>
								<tr>
									<th scope="row">인증방법</th>
									<td colspan="2"></td>
								</tr>
								<tr>
									<th scope="row"><label for="abdTel">전화번호</label><strong
										class="fc_r" title="필수">*</strong></th>
									<td colspan="2"><input type="text" id="abdTel"
										class="numInput2" title="전화번호 입력" name="abdTel"
										style="width: 100px ;" value="042-625-2834" maxlength="13">
										<span class="txt_add">(예 : 02-111-1111)</span></td>
								</tr>
								<tr>
									<th scope="row"><label for="mphoneNo">휴대전화</label> <strong
										class="fc_r" title="필수">*</strong></th>
									<td colspan="2"><input type="text" id="mphoneNo"
										class="numInput2" name="mphoneNo" title="휴대전화번호 입력"
										style="width: 100px ;" value="010-5140-2834" maxlength="13">
										<span class="txt_add">(예 : 010-1111-1111)</span></td>
								</tr>
								<tr id="viewZip">
									<th scope="row">주민등록주소<strong class="fc_r" title="필수">*</strong></th>

									<td colspan="4" class="intbl_div">
										<div>
											<span class="txt_addr"><label for="zip01">우편번호
													입력</label></span> <input type="text" class="form_short numInput"
												title="우편번호" id="zip01" name="zip01" readonly="readonly"
												maxlength="5" value="34383"> <span id="selfSpanNo1">
												<button type="button" class="btn3_type1" name="addrPop"
													title="주소검색 새창" id="01">
													<span>주소검색</span>
												</button>

											</span> <span id="selfSpanOk1" style="display: none">
												<button type="button" class="btn3_type2" title="주소입력취소"
													onclick="selfAddrFn1('NO');">
													<span>주소 직접입력 취소</span>
												</button>
											</span> <strong class="info_tool"
												title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. "
												tabindex="0">주소입력방법 안내</strong>
										</div>
										<div>
											<span class="txt_addr"><label for="addr01">주소</label></span>
											<input type="text" style="width: 300px;margin-top: 5px" id="addr01"
												name="addr01" class="member_addr1" readonly="readonly"
												title="주소입력" value="대전광역시 대덕구 계족로663번길 30"> <input
												type="text" style="width: 135px; margin-top: 5px" id="resdTownBldNm"
												name="resdTownBldNm" value="(법동, 삼정하이츠타운)"
												class="member_addr2" title="주소 입력" readonly="readonly">
										</div>
										<div>
											<span class="txt_addr"><label for="addr02">나머지
													주소 입력</label></span> <input type="text" id="addr02" name="addr02"
												class="member_addr3" title="나머지 주소입력" style="width: 440px; margin-top: 5px"
												value="1동306호" maxlength="100"> <input type="hidden"
												name="gibunResdAddr" id="gibunResdAddr">
										</div>
									</td>

								</tr>


								<!-- 방문수령시작-->
								<tr style="display: none">
									<th scope="row">자격증 수령방법</th>
									<td colspan="4"><span class="text_guide"><label
											for="recptMethY">배송</label></span><input id="recptMethY"
										name="recptMeth" type="radio" value="P"
										onclick="setRecptMethod('P');"> <span
										class="text_guide"><label for="recptMethN">방문</label></span><input
										id="recptMethN" name="recptMeth" type="radio" value="V"
										onclick="setRecptMethod('V');" disabled> <span
										class="text_red2">[결제 후에는 수령방법을 변경할 수 없습니다.]</span></td>
								</tr>
								<tr id="visitRecpt" style="display: none;">
									<th scope="row">방문 수령자<strong class="fc_r" title="필수">*</strong></th>
									<td colspan="3"><span> <input type="radio"
											id="self" name="visitRcpt" value="S"
											onclick="setVisitMethod('S');"> <label for="self"
											class="mr10">본인</label> <input type="radio" id="agent"
											name="visitRcpt" value="D" onclick="setVisitMethod('D');">
											<label for="agent">대리인</label>
									</span></td>
								</tr>
								<tr id="visitRecpt2" style="display: none;">
									<th scope="row"><label for="branch">방문지사</label> <strong
										class="fc_r" title="필수">*</strong></th>
									<td colspan="4"><select name="brchCd" class="input"
										id="brchCd" title="방문지사">
											<option value="">- 방문할 지사를 선택해주십시오 -</option>

											<option value="01">서울지역본부 [서울특별시 동대문구 ]</option>

											<option value="02">서울동부지사 [서울특별시 광진구 ]</option>

											<option value="07">서울남부지사 [서울특별시 영등포구 ]</option>

											<option value="11">강원지사 [강원도 춘천시 ]</option>

											<option value="19">강원동부지사 [강원도 강릉시 ]</option>

											<option value="03">부산지역본부 [부산광역시 북구 ]</option>

											<option value="21">부산남부지사 [부산광역시 남구 ]</option>

											<option value="17">경남지사 [경상남도 창원시 ]</option>

											<option value="09">울산지사 [울산광역시 중구 ]</option>

											<option value="04">대구지역본부 [대구광역시 달서구 ]</option>

											<option value="16">경북지사 [경상북도 안동시 ]</option>

											<option value="22">경북동부지사 [경상북도 포항시 ]</option>

											<option value="05">중부지역본부 [인천광역시 남동구 ]</option>

											<option value="10">경기지사 [경기도 수원시 ]</option>

											<option value="23">경기북부지사 [경기도 의정부시 ]</option>

											<option value="24">경기동부지사 [경기도 성남시 ]</option>

											<option value="06">광주지역본부 [광주광역시 북구 ]</option>

											<option value="14">전북지사 [전라북도 전주시 ]</option>

											<option value="15">전남지사 [전라남도 순천시 ]</option>

											<option value="20">전남서부지사 [전라남도 목포시 ]</option>

											<option value="18">제주지사 [제주특별자치도 제주시 ]</option>

											<option value="13">대전지역본부 [대전광역시 중구 ]</option>

											<option value="12">충북지사 [충청북도 청주시 ]</option>

											<option value="08">충남지사 [충청남도 천안시 ]</option>

									</select> <!--
									2015.03.17 jws : 이종용 대리 요청  URL변경
									<a class="btn btncolor5 openPopup" href="http://www.hrdkorea.or.kr/5/4/2" target="_blank" title="새 창"><span>약도보기</span></a>
									--> <!-- 2015.12.321 jws : 김종호대리 요청 URL변경http://www.hrdkorea.or.kr/5/4/2/2 === > http://www.hrdkorea.or.kr/5/4/2/1 -->
										<a class="btn btncolor5 openPopup"
										href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank"
										title="새 창"><span>약도보기</span></a></td>
								</tr>
								<tr id="deputy" style="display: none;">
									<th scope="row"><label for="agentHgulNm">대리인 성명</label> <strong
										class="fc_r" title="필수">*</strong></th>
									<td class="td"><input type="text" id="agentHgulNm"
										style="width: 93%" name="agentHgulNm" maxlength="30" value=""></td>
									<th scope="row"><label for="agentJumin">대리인 주민번호</label> <strong
										class="fc_r" title="필수">*</strong></th>
									<td colspan="2" class="td"><input type="text"
										id="agentJumin" style="width: 148px" name="agentResdRegNo"
										maxlength="13" value="" class="numInput"> '-'는 제외</td>
								</tr>
								<tr>
									<td colspan="5" id="checkInfo" style="display: none;">※
										방문수령자가 본인일 경우 본인 신분증, 대리인일 경우 본인 및 대리인의 신분증을 반드시 지참하십시오.</td>
								</tr>
								<!-- 방문수령끝-->
								<tr id="postRecpt">
									<th scope="row">배송지 주소 <strong class="fc_r" title="필수">*</strong></th>
									<td colspan="4" class="intbl_div">
										<div>
											<span class="txt_addr"><label for="zip01_1">우편번호
													입력</label></span> <input type="text" class="form_short numInput"
												title="우편번호" id="zip01_1" name="zip01_1" readonly="readonly"
												maxlength="5" value=""
												onkeyup="nextFocus('frm', 'zip01_1', 'dlvrPlcAddr');" >

											<span id="selfSpanNo2">
												<button type="button" class="btn3_type1" name="addrPop"
													id="02" title="주소 검색">
													<span>주소검색</span>
												</button> <input type="checkbox" id="dlvrSet1" title="(배송지 주소)상동"
												value="" onclick="setDlvr1();"> <label
												for="dlvrSet1">상동</label>
											</span> <span id="selfSpanOk2" style="display: none">
												<button type="button" class="btn3_type2"
													onclick="selfAddrFn2('NO');" title="주소 직접입력 취소">
													<span>주소 직접입력 취소</span>
												</button>
											</span> <input type="hidden" id="dlvrDirectInptCcd"
												name="dlvrDirectInptCcd" value="N">
										</div>

										<div>
											<span class="txt_addr"><label for="dlvrPlcAddr">주소</label></span>
											<input type="text" id="dlvrPlcAddr" name="dlvrPlcAddr"
												value="" class="member_addr1" title="주소입력"
												readonly="readonly" style="margin-top: 5px;"> <input type="text"
												id="dlvrPlcAddrTownBldNm" style="width: 217px ;margin-top:4px;" value=""
												name="dlvrPlcAddrTownBldNm" class="member_addr2"
												title="주소 입력" readonly="readonly">
										</div>
										<div>
											<span class="txt_addr"><label for="dlvrPlcAddrDtl">나머지
													주소 입력</label></span> <input type="text" id="dlvrPlcAddrDtl"
												style="width: 429px ;margin-top: 5px" value="" name="dlvrPlcAddrDtl"
												class="member_addr3" title="나머지 주소입력" maxlength="90">
											<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
										</div>
										<div>
											<span class="txt_addr"><label for="dlvrHhCautionMatt">배송
													시 유의사항</label></span> <input type="text" name="dlvrHhCautionMatt"
												title="배송시 유의사항" style="width: 430px; margin-top: 5px "
												value="예) 부재시 옆집에 맡겨 주십시오." onclick="setDhcm();"
												maxlength="100">
											<p>※ 신청인과 수령인이 다를 경우 수령인 성명 반드시 기재</p>
										</div>
										<div style="width: 570px;">
											<span class="txt_addr"><label for="dlvrPlcTel">휴대전화</label></span>
											<input type="text" id="dlvrPlcTel" name="dlvrPlcTel"
												class="member_addr3 numInput2" style="width: 105px;" value=""
												title="휴대전화" maxlength="13"> <span class="txt_add">(예
												: 010-1111-1111) [※ 배송시 문자 메시지 전송/핸드폰 번호 기재]</span>
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
									<td colspan="4"><span> <input type="radio"
											id="jobY" name="workAreaInputYn" onclick="setWorkArea('1');"
											checked=""> <label for="jobY" class="mr10">있음</label>
											<input type="radio" id="jobN" name="workAreaInputYn"
											onclick="setWorkArea('0');"> <label for="jobN">없음</label>
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
											<span class="txt_addr"><label for="wrkArZip_1">우편번호
													입력</label></span> <input type="text" id="wrkArZip_1" name="wrkArZip_1"
												maxlength="5" class="form_short numInput"
												readonly="readonly" title="우편번호 앞자리" value="" style="margin-top: 5px"> <span
												id="selfSpanNo3">
												<button type="button" class="btn3_type1" name="addrPop"
													id="03" title="주소검색" style="margin-top: 5px">
													<span>주소검색</span>
												</button>

											</span> <span id="selfSpanOk3" style="display: none">
												<button type="button" class="btn3_type2"
													onclick="selfAddrFn3('NO');" title="주소 직접입력 취소">
													<span>주소 직접입력 취소</span>
												</button>
											</span>
										</div>
										<div>
											<span class="txt_addr"><label for="wrkArAddr">주소</label></span>
											<input type="text" id="wrkArAddr" name="wrkArAddr"
												class="member_addr1" readonly="readonly" title="주소입력"
												value="" style="margin-top: 5px;"> <input type="text"
												id="workAreaAddrTownBldNm" name="workAreaAddrTownBldNm"
												style="width: 205px; margin-top: 5px;" class="member_addr2" title="주소 입력"
												readonly="readonly" value="" maxlength="200">
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
									<col width="1%">
									<col width="14%">
									<col width="16%">
									<col width="9%">
									<col width="9%">
									<col width="10%">
									<col width="13%">
									<col width="10%">
									<col width="18%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">자격증<br>번호
										</th>
										<th scope="col">종목명<br>(취득시 종목명)
										</th>
										<th scope="col">필기<br>합격일자
										</th>
										<th scope="col">최종<br>합격일자
										</th>
										<th scope="col">비고</th>
										<th scope="col">자격과 경력<br>관련여부
										</th>
										<th scope="col">발급<br>수수료
										</th>
										<th scope="col">기타 자격취득<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사항
											기재<strong class="info_tool"
											title="국가기술자격증 제3면 '자격증 취득 내용'란에 기재될 내용을 선택합니다." tabindex="0"></strong></th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>&nbsp;</td>
										<td>16201130169Z</td>
										<td class="left">정보처리기사</td>
										<td>2016.03.17</td>
										<td>2016.05.06</td>
										<td>신규발급</td>
										<td><select title="자격증 관련 구분 선택" name="crerRelYnCcd"
											class="input" id="crerRelYnCcd">
												<option value="0">- 선 택 -</option>
												<option value="1">관련있음</option>
												<option value="2">비슷함</option>
												<option value="3">관련없음</option>
										</select></td>
										<td>3,100원</td>
										<td><div id="viewSel0"></div>
											<button type="button" class="btn3_type2"
												onclick="popQualDtlSel(0,&quot;16201130169Z&quot;,&quot;정보처리기사&quot;)">
												<span id="btnPopQualDtlSel_0">해당없음</span>
											</button> <input type="hidden" name="qualSel_YN_0" value="N">
											<input type="hidden" name="qualSelList_0" value=""> <input
											type="hidden" name="isChkNone_0" value="N"> <input
											type="hidden" name="lcsNo" value="16201130169Z"> <input
											type="hidden" name="jmNm" value="정보처리기사"> <input
											type="hidden" name="fstJmNm" value="정보처리기사"> <input
											type="hidden" name="jmCd" value="1320"> <input
											type="hidden" name="examPassDt" value="20160317"> <input
											type="hidden" name="lastPassDt" value="20160506"> <input
											type="hidden" name="issuGb" value="신규발급"> <input
											type="hidden" name="selAddInfrmPtr" value="0"> <input
											type="hidden" name="qualGiveGbCcd" value="1"> <input
											type="hidden" name="orgnJmCd" value="1320"> <input
											type="hidden" name="orgnJmNm" value=""> <input
											type="hidden" name="issuFee" value="3100"></td>
									</tr>


								</tbody>
							</table>
							<input type="hidden" name="totFee" value="3100">
						</div>
					</div>
					<p class="impt ml20 mb10">
						※ 선택한 자격내역(1건)은 위와 같습니다. 자격별로 경력과 관한 여부를 선택해 주십시오.<br> 자격별 관련
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
									<input type="text" id="charge_01" class="txt_right fc_6" title="발급 수수료 금액" style="width: 90px" value="3,100" readonly="readonly">원
								</td>
								<th scope="row"><label for="charge_02">배송비</label></th>
								<td class="bootstrap_delete"> 
									<input type="text" id="charge_02" class="txt_right fc_6" title="배송비 금액" style="width: 90px" value="2,340" readonly="readonly">원
								</td>
								<th scope="row"><p class="txt_right"><label for="charge_03"><strong>결제 금액</strong></label></p></th>
								<td class="bootstrap_delete">
									<input type="text" id="charge_03" class="txt_right fc_6" title="결제 금액" style="width: 90px" value="5,440" readonly="readonly">원
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
				<div class="btn_center">

					<button type="button" class="btn2 btncolor1"
						onclick="location.href='8자격증발급신청_선택확인.jsp'">
						<span>이전</span>
					</button>
					<button type="button" class="btn2 btncolor1" onclick="location.href='10수수료결제.jsp'">
						<span>입력된 정보확인</span>
					</button>

				</div>

			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>
