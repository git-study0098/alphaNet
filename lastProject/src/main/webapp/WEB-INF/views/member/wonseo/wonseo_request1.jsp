<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<div id="content">
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->
		<div class="content">
				<h3 class="tit_content">원서접수 신청</h3>
				<form name="frmDown">
					<input type="hidden" name="fileCode">
					<input type="hidden" name="filePath">
					<input type="hidden" name="fileName">
					<input type="hidden" name="fileSeq">
					<input type="hidden" name="artlSeq">
					<input type="hidden" name="href">
				</form>
				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep"> <ul class="list01">  	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_01.gif" alt=""><span>자격선택</span><span class="blind">현재단계 자격선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_09.gif" alt=""><span>종목선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_03.gif" alt=""><span>응시유형</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_04.gif" alt=""><span>추가입력</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_05.gif" alt=""><span>장소선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_06.gif" alt=""><span>결제하기</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif" alt=""><span>접수완료</span></li> </ul></div>

				
				<h4>국가기술자격</h4>
				<div class="accept">
					<div class="tbl_type1">
						<table summary="국가기술자격 시험일정 안내로, 응시시험, 접수기간, 선택 정보 제공">
							<caption>국가기술자격 시험 목록</caption>
							<colgroup>
								<col width="31%">
								<col width="*">
								<col width="13%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">응시시험</th>
									<th scope="col">접수기간</th>
									<th scope="col">선택</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td class="left">2017년 정보처리기사 4회 필기 </td>
						
						
									<td>2017년 7월 7일 (금) 오전 09:00 ~ 2017년 7월 13일 (목) 오후 06:00</td>
									
									<!-- 경로 설정-->
									<td><button type="button" class="btn3_type1" title="접수하기" onclick="location.href='3choice_jongmok.jsp'"><span>접수하기</span></button></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>


				<!-- 국가전문  -->
				<h4>국가전문자격</h4>
				<div class="accept">
					<div class="accept_wrap">
						<div class="tbl_type1">
							<table summary="국가전문자격 시험일정 안내로, 응시시험, 접수기간, 선택 정보 제공">
								<caption>국가전문자격 시험 목록</caption>
								<colgroup>
									<col width="31%">
									<col width="*">
									<col width="13%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">응시시험</th>
										<th scope="col">접수기간</th>
										<th scope="col">선택</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td class="left">2017년 제 14회 농산물품질관리사  </td>
						
						
										<td class="left">2017년 7월 3일 (월) 오전 09:00 ~ 2017년 7월 12일 (수) 오후 06:00</td>
						
										<td><button title="새 창" type="button" class="btn3_type1" onclick="goHiddenChk('45','Q','2017','14','PL2017459003','2','20170703','S','Y', '2017년 제 14회 농산물품질관리사 ', '1', 'nongsanmul','A');"><span>접수하기</span></button></td>
									</tr>

									<tr>
										<td class="left">2017년 제 26회 공인노무사 2,3차 동시 </td>
						
						
										<td class="left">2017년 7월 3일 (월) 오전 09:00 ~ 2017년 7월 12일 (수) 오후 06:00</td>
						
										<td><button title="새 창" type="button" class="btn3_type1" onclick="goHiddenChk('05','Q','2017','26','PL2017457026','Y2','20170703','S','Y', '2017년 제 26회 공인노무사 2,3차 동시', '1', 'nomu','A');"><span>접수하기</span></button></td>
									</tr>

								</tbody>
							</table>
						</div>

						<div class="in_menu">
							<a href="#" class="page_link" title="새 창"><span>국가전문자격 전체보기</span></a>
						</div>
						<div class="in_qmenu" style="display: none;">
							<ul>
	<li class="wrap">
		<ul>
			<li><a href="site/gamaeng" target="_blank" title="새 창">가맹거래사</a></li>
			<li><a href="site/gamjeong" target="_blank" title="새 창">감정사</a></li>
			<li><a href="site/value" target="_blank" title="새 창">감정평가사</a></li>
			<li><a href="site/geomryang" target="_blank" title="새 창">검량사</a></li>
			<li><a href="site/geomsu" target="_blank" title="새 창">검수사</a></li>
			<li><a href="site/kyungmae" target="_blank" title="새 창">경매사</a></li>
			<li><a href="site/security" target="_blank" title="새 창">경비지도사</a></li>
			<li><a href="site/MC" target="_blank" title="새 창">경영지도사</a></li>
		</ul>
	</li>
	<li class="wrap">
		<ul>
			<li><a href="site/nomu" target="_blank" title="새 창">공인노무사</a></li>
			<li><a href="site/junggae" target="_blank" title="새 창">공인중개사</a></li>
			<li><a href="site/interpreter" target="_blank" title="새 창">관광통역안내사</a></li>
			<li><a href="site/customs" target="_blank" title="새 창">관세사</a></li>
			<li><a href="site/tourguide" target="_blank" title="새 창">국내여행안내사</a></li>
			<li><a href="site/TC" target="_blank" title="새 창">기술지도사</a></li>
			<li><a href="site/nongsanmul" target="_blank" title="새 창">농산물품질관리사</a></li>
			<li><a href="site/surigineung" target="_blank" title="새 창">문화재수리기능자(24종목)</a></li>
		</ul>
	</li>
	<li class="wrap">
		<ul>
			<li><a href="site/surigisul" target="_blank" title="새 창">문화재수리기술자</a></li>
			<li><a href="site/CPL" target="_blank" title="새 창">물류관리사</a></li>
			<li><a href="site/curator" target="_blank" title="새 창">박물관 및 미술관 준학예사</a></li>
			<li><a href="site/patent" target="_blank" title="새 창">변리사</a></li>
			<li><a href="site/welfare" target="_blank" title="새 창">사회복지사 1급</a></li>
			<li><a href="site/indusani" target="_blank" title="새 창">산업보건지도사</a></li>
			<li><a href="site/indusafe" target="_blank" title="새 창">산업안전지도사</a></li>
			<li><a href="site/semu" target="_blank" title="새 창">세무사</a></li>
		</ul>
	</li>
	<li class="wrap">
		<ul>
			<li><a href="site/sbsiseol" target="_blank" title="새 창">소방시설관리사</a></li>
			<li><a href="site/sbanjeon" target="_blank" title="새 창">소방안전교육사</a></li>
			<li><a href="site/loss" target="_blank" title="새 창">손해평가사</a></li>
			<li><a href="site/susanmul" target="_blank" title="새 창">수산물품질관리사</a></li>
			<li><a href="site/jeongsoo" target="_blank" title="새 창">정수시설운영관리사</a></li>
			<li><a href="site/housing" target="_blank" title="새 창">주택관리사보</a></li>
			<li><a href="site/sangdamsa" target="_blank" title="새 창">청소년상담사</a></li>
			<li><a href="site/jidosa" target="_blank" title="새 창">청소년지도사</a></li>
		</ul>
	</li>
	<li class="wrap">
		<ul class="nobg">
			<li><a href="site/koreanedu" target="_blank" title="새 창">한국어교육능력검정시험</a></li>
			<li><a href="site/haengjung" target="_blank" title="새 창">행정사</a></li>
			<li><a href="site/hotelg" target="_blank" title="새 창">호텔경영사</a></li>
			<li><a href="site/hotelm" target="_blank" title="새 창">호텔관리사</a></li>
			<li><a href="site/hotels" target="_blank" title="새 창">호텔서비스사</a></li>
			<li>&nbsp;</li>
			<li>&nbsp;</li>
			<li>&nbsp;</li>
		</ul>
	</li>

							</ul>
						</div>
					</div>
				</div>

				<!-- 한국기술자격 검정원  -->
				<h4>한국기술자격 검정원</h4>
				<ul class="list_lines01">
					<li>
						<p class="tit"><span>국가기술자격 상시시험 12종목 원서접수는 ‘한국기술자격 검정원’에서 신청하실 수 있습니다.</span>
						
						<button  type="button" class="btn btncolor6 btn-xs" onclick="popup3('http://t.q-net.or.kr/')"><span>상시시험 원서 접수하기</span></button>
						</p>
						<ul class="inner_menu">
							<li>한식, 일식, 양식, 중식조리</li>
							<li>정보처리 / 정보기기운용</li>
							<li>지게차 / 굴삭기운전</li>
							<li>미용사(일반) / 미용사(피부)</li>
							<li>제과 / 제빵기능사</li>
						</ul>
					</li>
				</ul>



				<div id="LGD_ACTIVEX_DIV" align="center"></div> 

				<ul class="slide_menu mt40">
					<li>
						<h4 class="slide_title"><a href="#">접수가능한 사진 범위 등 변경사항<span class="slide_close" style="display: inline;">내용닫기</span><span class="slide_open" style="display: none;">내용열기</span></a></h4>
						<div class="slide_wrap">
						<!-- slide inner content  -->
							<div class="tbl_type4 licnse mb20">
								<table summary="원서접수시 유의사항 안내로, 구분, 내용 정보제공">
									<caption>원서접수시 유의사항</caption>
									<colgroup>
										<col width="20%">
										<col width="*">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분</th>
											<th scope="col">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">접수가능사진</th>
											<td><p class="list">6개월 이내 촬영한 (3×4cm) 칼라사진, 상반신 정면, 탈모, 무 배경</p></td>
										</tr>
										<tr>
											<th scope="row">접수 불가능사진</th>
											<td>
												<ul class="list">
													<li>스냅 사진, 선글라스, 스티커 사진, 측면 사진, 모자착용, 혼란한 배경사진, 기타 신분확인이 불가한 사진
													<p class="impt">※ Q-net 사진등록, 원서접수 사진 등록 시 등 상기에 명시된 접수 불가 사진은 컴퓨터 자동인식 프로그램에 의해서 접수가 거부될 수 있습니다</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">본인사진이<br>아닐 경우 조치</th>
											<td>
												<ul class="list">
													<li>연예인 사진, 캐릭터 사진 등 본인사진이 아니고, 신분증 미지참시 시험응시 불가(퇴실)조치
														<p class="line">- 본인사진이 아니고 신분증 지참자는 사진 변경등록 각서 징구후 시험 응시</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">수험자 조치사항</th>
											<td><p class="list">필기시험 사진상이자는 신분확인시까지 실기원서접수가 불가하므로 원서접수 지부(사)로 본인이 신분증, 사진을 지참 후 확인 받으시기 바랍니다.</p></td>
										</tr>
									</tbody>
								</table>
							</div><!-- // tbl_type3 -->
							<ul class="list">
								<li>필기시험 사진상이자는 신분확인 시까지 실기원서접수가 불가합니다. 원서접수 지부(사)로 본인이 신분증 및 규격사진(화일)을 지참 후 확인 받으시기 바랍니다</li>
								<li>장애인 수험자는 원서접수 시 장애유형 및 편의요청사항을 선택하여 접수하고, 장애인 증빙서류를 제출해야 편의제공을 받으실 수 있습니다.</li>
							</ul>
							<p class="mt10"><a href="#" onclick="infoPopup()" class="btn4"><span>장애유형별 편의제공안내</span></a></p>
						<!-- // slide inner content  -->
						</div>
					</li>
					<li>
						<h4 class="slide_title"><a href="#">신분증 인정범위<span class="slide_close" style="display: inline;">내용닫기</span><span class="slide_open" style="display: none;">내용열기</span></a></h4>
						<div class="slide_wrap">
						<!-- slide inner content  -->
							<p>국가기술자격시험 신분증 인정범위를 아래와 같이 알려 드리니 수험자께서는 반드시 규정된 신분증을 지참하여 시험에 응시하시기 바랍니다.</p>
							<div class="tbl_type4 licnse mb20">
								<table summary="신분증 인정범위 안내로, 구분, 신분증 인정범위 정보제공">
									<caption>신분증 인정범위 안내</caption>
									<thead>
										<tr>
											<th scope="col">신분증 인정범위 (모든 수험자 적용)</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<ul class="list">
													<li>① 주민등록증, ② 운전면허증(국내), ③ 여권, ④ 공무원증, ⑤ 청소년증, ⑥ 국가기술 자격증, ⑦ 외국인등록증,<br>⑧ 장애인복지카드, ⑨ 국가유공자증, ⑩ 주민센터 발급 주민등록 발급 신청서
													<p class="impt">※ 시험에 응시하는 수험자 혹은 자격증을 내방하여 발급 받는 자는 위에서 정하는 신분증 중 1개를 반드시 지참하여야<br>하며, 신분 미확인 등에 따른 불이익은 수험자 책임입니다.</p>
													<p class="impt">※ 상기 신분증은 유효기간 이내의 것만 가능하며, 위에서 정하는 신분증 외에는 인정하지 않습니다.</p>
													<p class="impt">※ 상기 신분증은 사진, 생년월일, 성명, 발급자(직인 등)이 모두 기재된 경우에 한하여 인정합니다.</p>
													<p class="impt">※ 대학 학생증, 사원증, 국가기술자격증 이외의 자격증(민간자격증 등), 신용카드 등은 신분증으로 인정되지 않습니다.</p>
													</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<br>
								<table summary="대체 신분증 안내로, 구분, 신분증 인정범위 정보제공">
									<caption>대체 신분증 인정범위 안내</caption>
									<thead>
										<tr>
											<th scope="col">대체 신분증 인정범위 (아래 명시한 수험자만 적용)</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<ul class="list">
													<li>주민등록증 발급이 불가능한 초·중·고 학생이나 청소년에 대해서는 아래에서 명시한 증명서에 한하여 대체 신분증으로<br> 인정합니다.
														<ul class="num2">
															<li>① 학생증(사진, 성명, 생년월일, 학교장 직인이 모두 있어야함)</li>
															<li>② NEIS 등 국가, 학교, 공공기관에서 발급한 사진, 성명, 생년월일, 발급자 등이 포함된 증명서<br>ex) 학교발행 재학증명서, 신분확인증명서(공단서식)</li>
															<li>③ 초등학생에 한하여 건강보험증 및 주민등록등초본 인정</li>
														</ul>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<ul class="list">
													<li>군인은 신분상 제약사항 등을 고려하여 아래에서 명시한 증명서에 한하여 대체신분증으로인정합니다.
														<ul class="num2">
															<li>① 장교(부사관) 및 군무원 신분증</li>
															<li>② 국방부, 군부대 등에서 발급한 사진, 성명, 생년월일, 발급자 등이 포함된 증명서</li>
															<li>③ 일반사병의 경우에 한하여 부대장이 발급한 신분확인증명서(공단서식) 가능</li>
														</ul>
													</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div><!-- // tbl_type3 -->
							
							<ul class="list impt">
								<li>※ 공단 서식은 [큐넷 - 고객지원 - 자료실 - 각종 서식 자료]를 참고하시기 바랍니다.</li>
								<!-- 
								<li>※ <span class="fc_r">인정하지 않는 신분증의 예</span> : 학생증(대학원, 대학), 사원증, 각종 사진이 부착된 신용카드, 유효기간이 만료된 여권 및 복지카드, 기타 민간자격 자격증 등</li>
								<li>※ 중.고등학교 재학중인 학생은 학생증에 반드시 사진.이름.주민등록번호(최소 생년월일 기재) 등이 기재되어 있어야 신분증으로 인정됩니다.</li>
								 -->
							</ul>
							
						<!-- // slide inner content  -->
						</div>
					</li>
				</ul>

				<form name="myfrm" method="post">
					<input type="hidden" name="gId" value="">
					<input type="hidden" name="implCd" value="">
					<input type="hidden" name="implYY" value="">
					<input type="hidden" name="implSeq" value="">
					<input type="hidden" name="planId" value="">
					<input type="hidden" name="seqNo" value="">
					<input type="hidden" name="startDt" value="">
					<input type="hidden" name="qualGb" value="">
					<input type="hidden" name="examTyp" value="">
					<input type="hidden" name="planNm" value="">
					<input type="hidden" name="suhmTrgt" value="">
				</form>

				<!-- //컨텐츠 내용 -->
			</div>

		</div>
	</div>
</article>