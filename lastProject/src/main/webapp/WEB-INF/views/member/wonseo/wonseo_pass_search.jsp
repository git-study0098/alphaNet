<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>합격자발표</li>
					<li>합격자 발표조회</li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">합격자 발표조회</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 컨텐츠 내용 -->
				<div class="tbl_tmp">

					<div class="tabLayout webCont" id="subTab">
						<ul>
							<li class="on"><a href="#" name="contTab" id="techQual" title="국가기술자격"><span>국가기술자격</span></a></li>
						</ul>
					</div>

					<div id="listTab"></div>
					<input type="hidden" name="chkchk" value="T">

					<div id="ancTrmNew" style=""></div>
					<div id="ancTrmNew2" style="display: none">

						<span style="display: none;"> <input name="implsysRdo2"
							id="implsysRdo2" type="radio" onclick="selectExamList('6');">
							<label for="implsysRdo2">상시시험</label>
						</span>
						<div class="metier_wrap mb20">
							<div class="group_form1">
								<span> <input type="radio" id="sel_11" value="q"
									name="implsysRdo2"> <label for="sel_11"><strong>정기시험</strong></label>
								</span> <span> <input type="radio" id="sel_12" value="s"
									name="implsysRdo2"> <label for="sel_12"><strong>전문자격</strong></label>
								</span>
								<button class="btn btncolor1" onclick="schedule()">
									<span>조회</span>
								</button>
							</div>
						</div>
					</div>

					<!-- 정기시험 발표일정  -->
					<div class="tbl_layout nonBg" id="ancSchNew" style="display: none;">
						<table class="td_layout">
							<colgroup>
								<col width="*">
								<col width="62%">
							</colgroup>
							<tbody>
								<tr>
									<td>시험명</td>
									<td>일정</td>
								</tr>
							</tbody>
						</table>
						<div class="tbl_type1" style="height: 349px; overflow-y: auto"
							tabindex="0">
							<table summary="합격(예정자)명단 목록으로, 시험명, 일정 정보 제공">
								<caption>정기시험 합격자발표일정</caption>
								<colgroup>
									<col width="*">
									<col width="50%">
								</colgroup>
								<thead class="blind">
									<tr>
										<th scope="col">시험명</th>
										<th scope="col">일정</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td class="left">2017년 정기 기능장 61회 실기 (합격자발표일 2017.05.26)</td>
										<td>5월 26일 (금) 오전 09:00<span class="mBlock">~ 7월
												25일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기사 1회 실기 (합격자발표일 2017.05.26)</td>
										<td>5월 26일 (금) 오전 09:00<span class="mBlock">~ 7월
												25일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 2회 실기 (합격자발표일 2017.06.09)</td>
										<td>6월 9일 (금) 오전 09:00<span class="mBlock">~ 8월 8일
												(화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기술사 112회 필기 합격자</td>
										<td>6월 15일 (목) 오전 09:00<span class="mBlock">~ 8월
												14일 (월) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 2회 실기 (합격자발표일 2017.06.23)</td>
										<td>6월 23일 (금) 오전 09:00<span class="mBlock">~ 8월
												22일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정 실기
											(합격자발표일 2017.06.23)</td>
										<td>6월 23일 (금) 오전 09:00<span class="mBlock">~ 8월
												22일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정 실기
											(합격자발표일 2017.07.07)</td>
										<td>7월 7일 (금) 오전 09:00<span class="mBlock">~ 9월 6일
												(수) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기사 2회 실기 (합격자발표일 2017.07.14)</td>
										<td>7월 14일 (금) 오전 09:00<span class="mBlock">~ 9월
												13일 (수) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능장 62회 필기 합격자</td>
										<td>7월 20일 (목) 오전 09:00<span class="mBlock">~ 9월
												19일 (화) 오후 11:59</span></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
					<!-- 국가전문자격 발표일정  -->
					<div class="tbl_layout nonBg" id="ancSchNew2"
						style="display: none;">
						<table class="td_layout">
							<colgroup>
								<col width="*">
								<col width="62%">
							</colgroup>
							<tbody>
								<tr>
									<td>시험명</td>
									<td>일정</td>
								</tr>
							</tbody>
						</table>
						<div class="tbl_type1" style="height: 349px; overflow-y: auto"
							tabindex="0">
							<table summary="합격(예정자)명단 조회로 번호, 종목명, 종목코드 정보제공">
								<caption>국가전문자격 합격자발표일정</caption>
								<colgroup>
									<col width="*">
									<col width="60%">
								</colgroup>
								<thead class="blind">
									<tr>
										<th scope="col">시험명</th>
										<th scope="col">일정</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td class="left">2017년 제 54회 세무사 1차 합격자</td>
										<td>5월 24일 (수) 오전 09:00<span class="mBlock">~ 7월
												23일 (일) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 1회 문화재수리기능자(24종목) 실기 합격자</td>
										<td>5월 24일 (수) 오전 09:00<span class="mBlock">~ 7월
												22일 (토) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 15회 가맹거래사 1차 합격자</td>
										<td>5월 31일 (수) 오전 09:00<span class="mBlock">~ 7월
												31일 (월) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 1회 감정사 필기 합격자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 6일
												(일) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 1회 검수사 필기 합격자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 6일
												(일) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 1회 검수사 필기 합격예정자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 6일
												(일) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 35회 문화재수리기술자 면접 합격자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 6일
												(일) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 17회 소방시설관리사 1차 합격자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 5일
												(토) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 1회 검량사 필기 합격자</td>
										<td>6월 7일 (수) 오전 09:00<span class="mBlock">~ 8월 6일
												(일) 오후 06:00</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 26회 공인노무사 1차 합격자</td>
										<td>6월 21일 (수) 오전 09:00<span class="mBlock">~ 8월
												21일 (월) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 5회 행정사 1차 합격자</td>
										<td>6월 28일 (수) 오전 09:00<span class="mBlock">~ 8월
												27일 (일) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 14회 농산물품질관리사 1차 합격자</td>
										<td>6월 28일 (수) 오전 09:00<span class="mBlock">~ 8월
												27일 (일) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 제 3회 손해평가사 1차 합격자</td>
										<td>7월 19일 (수) 오전 09:00<span class="mBlock">~ 9월
												16일 (토) 오후 11:59</span></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>

					<!-- 정기시험 발표리스트  -->
					<div id="ancLstNew" style="">

						<div class="metier_wrap mb20">
							<div class="inwrap">
								<label for="selExam"><strong>정기시험</strong></label>
								<div>
									<select name="selExam" id="selExam" class="w350"
										title="응시한 정기시험 선택" onchange="setQSelVal(this.value)">
										<option value="">응시하신 시험을 선택해주세요.</option>

										<option value="PL2017456006_1_Y" implsyscd="1"
											schditemccd="30">2017년 정기 기능장 62회 필기</option>

										<option value="PL2017454008_2_Y" implsyscd="1"
											schditemccd="30">2017년 정기 기사 2회 실기 (합격자발표일
											2017.07.14)</option>

										<option value="PL2017456007_2_Y" implsyscd="1"
											schditemccd="35">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정
											(합격자발표일 2017.07.07)</option>

										<option value="PL2017456007_2_Y" implsyscd="1"
											schditemccd="30">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정
											(합격자발표일 2017.06.23)</option>

										<option value="PL2017454004_2_Y" implsyscd="1"
											schditemccd="35">2017년 정기 기능사 2회 실기 (합격자발표일
											2017.06.23)</option>

										<option value="PL2017456003_1_Y" implsyscd="1"
											schditemccd="30">2017년 정기 기술사 112회 필기</option>

										<option value="PL2017454004_2_Y" implsyscd="1"
											schditemccd="30">2017년 정기 기능사 2회 실기 (합격자발표일
											2017.06.09)</option>

										<option value="PL2017456005_2_Y" implsyscd="1"
											schditemccd="35">2017년 정기 기능장 61회 실기 (합격자발표일
											2017.05.26)</option>

										<option value="PL2017454007_2_Y" implsyscd="1"
											schditemccd="35">2017년 정기 기사 1회 실기 (합격자발표일
											2017.05.26)</option>

									</select>
								</div>
								<span class="mBtn">
									<button type="button" class="btn3_type1"
										onclick="viewQnetPassList('1')">
										<span>전체합격자 보기</span>
									</button>
									<button type="button" class="btn3_type3 webCont"
										onclick="NetFunnel_goUrl ({},'myp003.do?id=myp00301&amp;gSite=Q&amp;gId=');">
										<span>개인별 득점조회</span>
									</button>
								</span>
							</div>

						</div>
						<div id="qHomePList"></div>


					</div>

					<!-- 추가 2014.11.12.gbs 상시종목 합격자 발표는 검정원에서 확인하라는 정보메시지 -->
					<div id="ancTQnet" style="display: none">
						<h4>한국기술자격검정원(상시)</h4>
						<ul class="list_lines01">
							<li>
								<p class="tit">
									<span>국가기술자격 상시시험 12종목 합격자 발표는 ‘한국기술자격 검정원’에서 확인할 수
										있습니다.</span>

									<button type="button" class="btn btncolor6"
										title="상시시험 합격자 확인하기. 새 창"
										onclick="popup3('http://t.q-net.or.kr/anc001.do?id=anc001011&amp;depth=0301&amp;gId=99&amp;gSite=L')">
										<span>상시시험 합격자 확인하기</span>
									</button>
								</p>
								<ul class="inner_menu">
									<li>한식, 일식, 양식, 중식조리</li>
									<li>지게차 / 굴삭기운전</li>
									<li>정보처리 / 정보기기운용</li>
									<li>미용사(일반) / 미용사(피부)</li>
									<li>제과 / 제빵기능사</li>
								</ul>
							</li>
						</ul>
					</div>

					<!-- 국가전문자격시험  발표 -->
					<div id="ancLstNew2" style="display: none">

						<div class="metier_wrap mb20">
							<div class="inwrap">
								<label for="selExam2"><strong>전문자격 시험</strong></label>
								<div>
									<select id="selExam2" class="w300 mSize"
										onchange="setQSelVal(this.value)" title="응시한 정기시험 선택">
										<option value="">응시하신 시험을 선택해주세요.</option>

										<option value="PL2017465008_1_Y">2017년 제3회 손해평가사 1차</option>

										<option value="PL2017459004_1_Y">2017년 제5회 행정사 1차</option>

										<option value="PL2017459003_1_Y">2017년 제14회 농산물품질관리사
											1차</option>

										<option value="PL2017457026_1_Y">2017년 제26회 공인노무사 1차
										</option>

										<option value="PL2017455003_2_Y">2017년 제35회 문화재수리기술자
											면접</option>

										<option value="PL2017457031_1_Y">2017년 제17회 소방시설관리사
											1차</option>

										<option value="PL2017457005_1_Y">2017년 제1회 검수사 필기</option>

										<option value="PL2017457007_1_Y">2017년 제1회 감정사 필기</option>

										<option value="PL2017457006_1_Y">2017년 제1회 검량사 필기</option>

										<option value="PL2017457019_1_Y">2017년 제15회 가맹거래사 1차
										</option>

										<option value="PL2017457012_1_Y">2017년 제54회 세무사 1차</option>

										<option value="PL2017457011_1_Y">2017년 제1회
											문화재수리기능자(24종목)</option>

									</select>
								</div>
								<span class="mBtn2">
									<button type="button" class="btn3_type1"
										onclick="viewQnetPassList('S')">
										<span>전체합격자 보기</span>
									</button>
									<button type="button" class="btn3_type3 webCont"
										onclick="NetFunnel_goUrl ({},'myp003.do?id=myp00301&amp;gSite=Q&amp;gId=');">
										<span>개인별 득점조회</span>
									</button>
								</span>
							</div>
						</div>
						<div id="qSPassList"></div>

					</div>
				</div>
			</div>
		</div>
	</div>
</article>