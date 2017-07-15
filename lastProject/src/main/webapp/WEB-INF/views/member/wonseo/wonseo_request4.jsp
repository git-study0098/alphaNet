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
		<jsp:include page="wonseoLnb.jsp"/>
		<!-- 좌측 메뉴바 끝-->
		<div id="lnb2"></div>
		</div>



		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">
					원서접수 신청<span class="sel_subject">(응시종목:정보관리기술사)</span>
				</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep">
					<ul class="list01">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_09.gif" alt=""><span>종목선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_03.gif" alt=""><span>응시유형</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_04.gif" alt=""><span>추가입력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_05.gif" alt=""><span>장소선택</span><span
							class="blind">현재단계 장소선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_06.gif" alt=""><span>결제하기</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif" alt=""><span>접수완료</span></li>
					</ul>
				</div>


				<form name="schfrm" method="post">
					<!-- 지역 선택 및 조회 폼 -->
					<div class="place_selct mb40">
						<!-- 2016.08.10 jws : 장민우대리 요청 16년 5회 기능사 조건(기간) 추가  PL2016573000 : 시범 , PL2016433003 : 운영-->

						<span class="zone"> <!--  jhh--> <label for="sel_zone">지역</label>

							<select name="sido" id="sel_zone"
							onchange="getSiGunGu(this.value)" title="지역 선택">
								<option value="">-선택-</option>
								<option value="대전광역시">대전광역시</option>
								<option value="강원도">강원도</option>
								<option value="경기도">경기도</option>
								<option value="광주광역시">광주광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="부산광역시">부산광역시</option>
								<option value="서울특별시">서울특별시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="인천광역시">인천광역시</option>
								<option value="제주특별자치도">제주특별자치도</option>
								<option value="Y">전체</option>

						</select>
						</span> <span class="cities"> <label for="sel_cities">시/군/구
						</label> <span id="viewSiGunGu"> <select name="sigungu"
								id="sel_cities" title="시/구/군 선택" disabled="">
									<option value="동구">동구	</option>
							</select>
						</span>
						</span> <span>조 회
							<button type="button" name="schBtn" class="btn3_icon search"
								onclick="getAreaList(this.form,'1','viewList')">
								<span class="blind">조회</span>
							</button>
						</span>
					</div>
				</form>

				<form name="myfrm" method="post" action="return false;">
					<input type="hidden" name="planId" value="PL2017456004"> <input
						type="hidden" name="seqNo" value="1"> <input type="hidden"
						name="selFld" value="00"> <input type="hidden" name="jmCd"
						value="0601"> <input type="hidden" name="sameRecptYN"
						value="N"> <input type="hidden" name="sameImplYN"
						value="N"> <input type="hidden" name="recptNo"
						value="R10048091258"> <input type="hidden" name="suNo"
						value="T4560149"> <input type="hidden" name="recptTyp"
						value="01"> <input type="hidden" name="recptDtl" value="1">
					<input type="hidden" name="jmNm" value="정보관리기술사"> <input
						type="hidden" name="qualGb" value="T"> <input
						type="hidden" name="ruleItemVal" value=""> <input
						type="hidden" name="jmDtlVal" value=""> <input
						type="hidden" name="srSeqNo" id="srSeqNo" value=""> <input
						type="hidden" name="examLangCcd" value="">

					<!-- 뒤로가기 처리를 위한 추가 파라메터 BGN -->
					<input type="hidden" name="dsdrGb" value=""> <input
						type="hidden" name="dsdrReq" value="00"> <input
						type="hidden" name="dsdrGbNm" value=""> <input
						type="hidden" name="dsdrReqNm" value="없음"> <input
						type="hidden" name="emqualCd" value="T127">
					<!-- 뒤로가기 처리를 위한 추가 파라메터 END -->

					<input type="hidden" name="areaCnt" value="">


					<div class="msg_info noData" id="msgInfo">
						<p>“시험장소는 행정구역기준으로 안내됩니다.”</p>
					</div>


					<h4 class="mt35">내가 선택한 장소</h4>
					<div class="tbl_normal tdCenter mb20">
						<table id="actInfo" summary="수험자가 선택한 시험 장소">
							<caption>수험자가 선택한 장소</caption>
							<colgroup></colgroup>
							<thead>
								<tr>
									<th scope="col">지역</th>
									<th scope="col">시험장소</th>
									<th scope="col">시험일자</th>
									<th scope="col">입실시간</th>
									<th scope="col">변경</th>
								</tr>
							</thead>
							<tbody>
								<tr class="noData">
									<td colspan="5" class="noData">조회된 시험장소에서 선택 하십시오.</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div id="tblGoNext" class="btn_center">
						<button name="btnBack" id="btnBack" type="button"
							class="btn2 btncolor1" onclick="location.href='4응시유형.jsp'">
							<span>이전</span>
						</button>
						<button name="btnGoNext" id="btnGoNext" type="button"
							class="btn2 btncolor1" onclick="location.href='6결제.jsp'">
							<span>접수하기</span>
						</button>
					</div>


					<div id="addInfo"></div>


					<div id="addInfoArea"></div>
				</form>

				<div class="place_result" id="viewList">
					<div class="tbl_type4">
						<table style="table-layout: fixed;"
							summary="지역, 시험일자, 부, 입실시간, 시험장소, 접수마감, 정원, 현재접수 가능인원에 대한 정보 제공">
							<caption>현황 조회 목록</caption>
							<colgroup>
								<col width="12%">
								<col width="12%">
								<col width="5%">
								<col width="7%">
								<col width="31%">
								<col width="12%">
								<col width="6%">
								<col width="6%">
								<col width="9%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">지역</th>
									<th scope="col">시험일자</th>
									<th scope="col">부</th>
									<th scope="col">입실<br>시간
									</th>
									<th scope="col">시험장소</th>
									<th scope="col">접수마감<br>일자
									</th>
									<th scope="col">정원</th>
									<th scope="col" colspan="2">현재접수<br>가능인원
									</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>대전광역시</td>
									<td>2017-08-12</td>
									<td>1</td>
									<td>08:30</td>
									<td>
										<p class="sch_adr" style="display:;">
											<span class="name" title="대전광역시 동구 충정로 97 (자양동)">동아마이스터고등학교(교내주차불가)</span>
											<button title="새 창" type="button" class="btn3_type3"
												onclick="viewExemArea('4516')">
												<span>약도보기</span>
											</button>
										</p>

									</td>
									<td>2017-07-13</td>
									<td>900</td>
									<td>707</td>
									<td>


										<button type="button" class="btn3_type1"
											onclick="chkIsSameSectExam('','1','1','0080','00','1','1','1','13','N','대전광역시','4516','동아마이스터고등학교(교내주차불가)','2017-08-12','08:30','1','1');">
											<span>선택</span>
										</button>

									</td>
								</tr>

							</tbody>
						</table>
					</div>

				</div>

				<div id="tblGoNext" class="btn_center">

					<button name="btnBack" id="btnBack" type="button"
						class="btn2 btncolor1" onclick="location.href='4응시유형.jsp'">
						<span>이전</span>
					</button>



					<button name="btnGoNext" id="btnGoNext" type="button"
						class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath()%>/member/wonseoReq4'">
						<span>접수하기</span>
					</button>
				</div>

				<form name="backfrm" method="post"
					action="rcv002.do?id=rcv00207&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle="
					style="margin-top: 0; margin-bottom: 0;">
					<input type="hidden" name="recptNo" value="R10048091258"> <input
						type="hidden" name="suNo" value="T4560149"> <input
						type="hidden" name="jmNm" value="정보관리기술사"> <input
						type="hidden" name="qualGb" value="T"> <input
						type="hidden" name="examLangCcd" value="">
				</form>
			</div>
		</div>
		<!--  컨텐츠 끝 -->
		</div>
</article>

