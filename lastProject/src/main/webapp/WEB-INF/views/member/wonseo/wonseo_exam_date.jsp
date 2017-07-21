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
					<li>연간시험일정</li>
					<li><strong>국가기술자격 시험일정</strong></li>

				</ul>
			</div>
			<!-- //location -->

			<!-- 종목검색팝업 -->
			<div id="searchPopup_view" class="popup"></div>
			<div class="content">
				<form name="form1" onsubmit="return false">
				<input type="hidden" name="jmCd" value="">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">기술사 시험일정</h3>
				<div class="cont_top_wrap webCont">
					<div class="tabLayout">
						<ul>
							<li><a href="<%=request.getContextPath()%>/calender"><span>월간시험일정</span></a></li>
							<li class="on"><a href="#" title="국가기술자격"><span>국가기술자격</span></a></li>
							<strong><label for="jmNm1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></strong>
						</ul>
					</div>

					<div class="tab_arrow02">
						<ul>
							<li class="on"><a href="#" name="subTab" id="01" title="기술사">기술사</a></li>
							<li><a href="#" name="subTab" id="03">기사, 산업기사</a></li>
							
						</ul>
					</div><!-- //tab_arrow02 -->
				</div>
				<h4>기술사</h4>
				<div class="cont_parbx" id="viewExamSchd">
					<h5><!-- 2017 -->연간 기술사 회별 검정시행일정</h5>
					<ul class="list num">
						<li>1. 원서접수시간은 원서접수 첫날 09:00부터 마지막 날 18:00까지 임. </li>
						<li>2. 실기(면접)시험 접수는 응시자격 서류제출 및 심사완료 후 가능. </li>
						<li>3. 실기(면접)시험 접수마감 이후 4일동안은 응시자격 서류심사만 가능(시험접수는불가). </li>
						<li>4. 필기시험 합격예정자 및 최종합격자 발표시간은 해당 발표일 09:00임. </li>
						<li>5. 회별마다 시행종목이 다르므로 반드시 아래 회별 시행종목을 확인하시기바랍니다.
							<div class="tbl_normal tdCenter mb0 webCont">
								<table class="mt5" summary="연간 기술사 회별 검정시험일정 안내로, 년도별/회별, 필기시험 원서접수, 필기시험, 필기시험합격 예정자 발표, 응시자격 서류제출/필기시험 합격자 결정, 면접시험 원서접수(인터넷), 면접시험, 합격자발표 정보 제공">
									<caption>연간 기술사 회별 검정시험일정 안내</caption>
									<colgroup>
										<col width="69px">
										<col width="90px">
										<col width="86px">
										<col width="86px">
										<col width="126px">
										<col width="90px">
										<col width="92px">
										<col width="86px">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">년도별<br>회 별</th>
											<th scope="col">필기시험<br>원서접수</th>
											<th scope="col">필기시험</th>
											<th scope="col">필기시험<br>합격예정자 발표</th>
											<th scope="col">응시자격<br>서류제출/필기시험<br>합격자결정</th>
											<th scope="col">면접시험<br>원서접수<br>(인터넷)</th>
											<th scope="col">면접시험</th>
											<th scope="col">합격자<br>발표</th>
										</tr>
									</thead>
									<tbody>

										<tr>
											<td>2017년/<br>제111회</td>
											<td>2017.01.04<br>
												-2017.01.10</td>
											<td>2017.01.22</td>
											<td>2017.03.02</td>
											<td>2017.03.06<br>
												-2017.03.15</td>

											<td>2017.03.06<br>
												-2017.03.09</td>

											<td>2017.04.08<br>
												-2017.04.15</td>
											<td>2017.04.28</td>
										</tr>

										<tr>
											<td>2017년/<br>제112회</td>
											<td>2017.04.07<br>
												-2017.04.13</td>
											<td>2017.05.14</td>
											<td>2017.06.15</td>
											<td>2017.06.19<br>
												-2017.06.28</td>

											<td>2017.06.19<br>
												-2017.06.22</td>

											<td>2017.07.22<br>
												-2017.07.29</td>
											<td>2017.08.11</td>
										</tr>

										<tr>
											<td>2017년/<br>제113회</td>
											<td>2017.07.07<br>
												-2017.07.13</td>
											<td>2017.08.12</td>
											<td>2017.09.14</td>
											<td>2017.09.18<br>
												-2017.09.27</td>

											<td>2017.09.18<br>
												-2017.09.21</td>

											<td>2017.10.28<br>
												-2017.11.04</td>
											<td>2017.11.17</td>
										</tr>

									</tbody>
								</table>
							</div>
						</li>
						<!-- 2016.06.16 jws : 김은주주임 요청 온라인응시자격서류 제출기간 안내문구 추가 -->
						<li><b>※ 온라인응시자격서류제출은 필기시험 원서접수일 부터 필기시험 합격자 발표일 까지 가능</b></li>

					</ul>
					<!-- 반응형 컨텐츠 추가 : 2014.11.12 -->
					<div class="tableInfo"><!-- //2014.11.24 table 목록으로 수정 html 참조 -->

						<div class="left tbl_normal">
							<table summary="년도별/회별, 필기시험 원서접수, 필기시험, 필기시험합격 예정자 발표, 응시자격 서류제출/필기시험 합격자 결정, 면접시험 원서접수(인터넷), 면접시험, 합격자발표 정보 제공">
								<caption>2017년/ 제111회 검정시험일정</caption>
								<colgroup>
									<col style="width:40%">
									<col style="width:60%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">년도별 회 별</th>
										<td>2017년/ 제111회</td>
									</tr>
									<tr>
										<th scope="row">필기시험 원서접수</th>
										<td>2017.01.04-2017.01.10</td>
									</tr>
									<tr>
										<th scope="row">필기시험</th>
										<td>2017.01.22</td>
									</tr>
									<tr>
										<th scope="row">필기시험 합격예정자 발표</th>
										<td>2017.03.02</td>
									</tr>
									<tr>
										<th scope="row">응시자격 서류제출/필기시험 합격자결정</th>
										<td>2017.03.06-2017.03.15</td>
									</tr>
									<tr>
										<th scope="row">면접시험 원서접수 (인터넷)</th>

										<td>2017.03.06-2017.03.09</td>

									</tr>
									<tr>
										<th scope="row">면접시험</th>
										<td>2017.04.08-2017.04.15</td>
									</tr>
									<tr>
										<th scope="row">합격자 발표</th>
										<td>2017.04.28</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="first tbl_normal">
							<table summary="년도별/회별, 필기시험 원서접수, 필기시험, 필기시험합격 예정자 발표, 응시자격 서류제출/필기시험 합격자 결정, 면접시험 원서접수(인터넷), 면접시험, 합격자발표 정보 제공">
								<caption>2017년/ 제112회 검정시험일정</caption>
								<colgroup>
									<col style="width:40%">
									<col style="width:60%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">년도별 회 별</th>
										<td>2017년/ 제112회</td>
									</tr>
									<tr>
										<th scope="row">필기시험 원서접수</th>
										<td>2017.04.07-2017.04.13</td>
									</tr>
									<tr>
										<th scope="row">필기시험</th>
										<td>2017.05.14</td>
									</tr>
									<tr>
										<th scope="row">필기시험 합격예정자 발표</th>
										<td>2017.06.15</td>
									</tr>
									<tr>
										<th scope="row">응시자격 서류제출/필기시험 합격자결정</th>
										<td>2017.06.19-2017.06.28</td>
									</tr>
									<tr>
										<th scope="row">면접시험 원서접수 (인터넷)</th>

										<td>2017.06.19-2017.06.22</td>

									</tr>
									<tr>
										<th scope="row">면접시험</th>
										<td>2017.07.22-2017.07.29</td>
									</tr>
									<tr>
										<th scope="row">합격자 발표</th>
										<td>2017.08.11</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="left tbl_normal">
							<table summary="년도별/회별, 필기시험 원서접수, 필기시험, 필기시험합격 예정자 발표, 응시자격 서류제출/필기시험 합격자 결정, 면접시험 원서접수(인터넷), 면접시험, 합격자발표 정보 제공">
								<caption>2017년/ 제113회 검정시험일정</caption>
								<colgroup>
									<col style="width:40%">
									<col style="width:60%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">년도별 회 별</th>
										<td>2017년/ 제113회</td>
									</tr>
									<tr>
										<th scope="row">필기시험 원서접수</th>
										<td>2017.07.07-2017.07.13</td>
									</tr>
									<tr>
										<th scope="row">필기시험</th>
										<td>2017.08.12</td>
									</tr>
									<tr>
										<th scope="row">필기시험 합격예정자 발표</th>
										<td>2017.09.14</td>
									</tr>
									<tr>
										<th scope="row">응시자격 서류제출/필기시험 합격자결정</th>
										<td>2017.09.18-2017.09.27</td>
									</tr>
									<tr>
										<th scope="row">면접시험 원서접수 (인터넷)</th>

										<td>2017.09.18-2017.09.21</td>

									</tr>
									<tr>
										<th scope="row">면접시험</th>
										<td>2017.10.28-2017.11.04</td>
									</tr>
									<tr>
										<th scope="row">합격자 발표</th>
										<td>2017.11.17</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
					<h5>연간 기술사 회별 검정시행종목</h5>
					<div class="tbl_type4 mb0">
						<table summary="연간 기술사 회별 검정시행종목 목록으로, 회별, 자격종목 정보 제공">
							<caption>연간 기술사 회별 검정시행종목</caption>
							<colgroup>
								<col width="20%">
								<col width="80%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">회별</th>
									<th scope="col">자격종목</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<th scope="row">2017년/<br>제111회</th>
									<td><ul class="list"><li><strong>생산관리</strong> : 포장기술사</li><li><strong>건축</strong> : 건축구조기술사,건축기계설비기술사,건축시공기술사,건축품질시험기술사</li><li><strong>토목</strong> : 농어업토목기술사,도로및공항기술사,상하수도기술사,수자원개발기술사,지적기술사,지질및지반기술사,철도기술사,측량및지형공간정보기술사,토목구조기술사,토목시공기술사,토목품질시험기술사,토질및기초기술사,항만및해안기술사,해양기술사</li><li><strong>조경</strong> : 조경기술사</li><li><strong>도시.교통</strong> : 교통기술사,도시계획기술사</li><li><strong>기계장비설비.설치</strong> : 건설기계기술사,공조냉동기계기술사,산업기계설비기술사</li><li><strong>자동차</strong> : 차량기술사</li><li><strong>금형.공작기계</strong> : 금형기술사</li><li><strong>금속.재료</strong> : 금속가공기술사,금속재료기술사</li><li><strong>용접</strong> : 용접기술사</li><li><strong>도장.도금</strong> : 표면처리기술사</li><li><strong>전기</strong> : 건축전기설비기술사,발송배전기술사,철도신호기술사</li><li><strong>전자</strong> : 전자응용기술사</li><li><strong>정보기술</strong> : 정보관리기술사,컴퓨터시스템응용기술사</li><li><strong>식품</strong> : 식품기술사</li><li><strong>농업</strong> : 종자기술사</li><li><strong>축산</strong> : 축산기술사</li><li><strong>임업</strong> : 산림기술사</li><li><strong>어업</strong> : 수산양식기술사,어로기술사</li><li><strong>안전관리</strong> : 가스기술사,건설안전기술사,기계안전기술사,산업위생관리기술사,소방기술사,전기안전기술사,화공안전기술사</li><li><strong>비파괴검사</strong> : 비파괴검사기술사</li><li><strong>환경</strong> : 대기관리기술사,소음진동기술사,수질관리기술사,폐기물처리기술사</li></ul>
										<p class="mt5"> ≪ <strong>55</strong> ≫ 종목</p>
									</td>
								</tr>

								<tr>
									<th scope="row">2017년/<br>제112회</th>
									<td><ul class="list"><li><strong>생산관리</strong> : 공장관리기술사,품질관리기술사</li><li><strong>디자인</strong> : 제품디자인기술사</li><li><strong>건축</strong> : 건축구조기술사,건축기계설비기술사,건축시공기술사</li><li><strong>토목</strong> : 농어업토목기술사,도로및공항기술사,상하수도기술사,철도기술사,토목구조기술사,토목시공기술사,토목품질시험기술사,토질및기초기술사,항만및해안기술사</li><li><strong>조경</strong> : 조경기술사</li><li><strong>도시.교통</strong> : 도시계획기술사</li><li><strong>채광</strong> : 화약류관리기술사</li><li><strong>기계제작</strong> : 기계기술사</li><li><strong>철도</strong> : 철도차량기술사</li><li><strong>조선</strong> : 조선기술사</li><li><strong>금형.공작기계</strong> : 금형기술사</li><li><strong>금속.재료</strong> : 금속제련기술사,세라믹기술사</li><li><strong>화공</strong> : 화공기술사</li><li><strong>섬유</strong> : 섬유기술사,의류기술사</li><li><strong>전기</strong> : 건축전기설비기술사,발송배전기술사,전기응용기술사,전기철도기술사,철도신호기술사</li><li><strong>전자</strong> : 산업계측제어기술사</li><li><strong>식품</strong> : 수산제조기술사</li><li><strong>농업</strong> : 시설원예기술사</li><li><strong>안전관리</strong> : 건설안전기술사,소방기술사,인간공학기술사</li><li><strong>환경</strong> : 자연환경관리기술사,토양환경기술사</li><li><strong>에너지.기상</strong> : 기상예보기술사</li></ul>
										<p class="mt5"> ≪ <strong>41</strong> ≫ 종목</p>
									</td>
								</tr>

								<tr>
									<th scope="row">2017년/<br>제113회</th>
									<td><ul class="list"><li><strong>생산관리</strong> : 품질관리기술사</li><li><strong>건축</strong> : 건축구조기술사,건축기계설비기술사,건축시공기술사</li><li><strong>토목</strong> : 도로및공항기술사,상하수도기술사,수자원개발기술사,지적기술사,지질및지반기술사,철도기술사,측량및지형공간정보기술사,토목구조기술사,토목시공기술사,토질및기초기술사</li><li><strong>도시.교통</strong> : 교통기술사,도시계획기술사</li><li><strong>기계장비설비.설치</strong> : 건설기계기술사,공조냉동기계기술사</li><li><strong>철도</strong> : 철도차량기술사</li><li><strong>항공</strong> : 항공기관기술사,항공기체기술사</li><li><strong>자동차</strong> : 차량기술사</li><li><strong>용접</strong> : 용접기술사</li><li><strong>전기</strong> : 건축전기설비기술사,발송배전기술사,전기응용기술사,전기철도기술사</li><li><strong>정보기술</strong> : 정보관리기술사,컴퓨터시스템응용기술사</li><li><strong>식품</strong> : 식품기술사</li><li><strong>농업</strong> : 농화학기술사</li><li><strong>임업</strong> : 산림기술사</li><li><strong>안전관리</strong> : 가스기술사,건설안전기술사,산업위생관리기술사,소방기술사,전기안전기술사</li><li><strong>환경</strong> : 대기관리기술사,소음진동기술사,수질관리기술사,자연환경관리기술사,토양환경기술사,폐기물처리기술사</li></ul>
										<p class="mt5"> ≪ <strong>43</strong> ≫ 종목</p>
									</td>
								</tr>

							</tbody>
						</table>
					</div></div>

				</form>
				<!-- //컨텐츠 내용 -->
			</div>
			<iframe name="fDownFrame" title="빈프레임" src="" scrolling="no" frameborder="0" style="display:none"></iframe><!-- //2014.12.11 KJH : 파일다운로드용 빈 프레임 -->
		</div>
	</div>
</article>